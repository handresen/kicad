#include <SPI.h>
#include <LoRa.h>
#include <Wire.h>

#include <avr/sleep.h>
#include <avr/power.h>
#include <avr/wdt.h>
#include <LowPower.h>
#include <Adafruit_BME280.h>

#include "loracommon.h"
#include "batt.h"

#define CS_PIN 10
#define RESET_PIN 9		      // LoRa radio reset
#define LORA_IRQ 2
#define SIGNAL_TIMER_PIN 4
#define INT_TIMER_PIN 3
#define LORA_FREQ 868.4E6
#define LED_PIN A2

Adafruit_BME280 bme;
LoRaClass lora;
SensorReading sensorReading;

void Blink(int ms, int count = 1)
{
	for (int i = 0; i < count; i++)
	{
		if (i > 0)
			delay(ms);
		digitalWrite(LED_PIN, HIGH);
		delay(ms);
		digitalWrite(LED_PIN, LOW);
	}
}

int encode_float_int16(byte *buff, int idx, float value, int scale)
{
	int16_t temp = (int16_t)(value * scale);
	buff[idx] = ((byte *)(&temp))[0];
	buff[idx + 1] = ((byte *)(&temp))[1];
	return idx + 2;
}

int encodeSensorMessage(byte buff[], SensorReading *sr)
{
	int count = 0;
	int idx = 0;
	for (idx = 0; idx < MAGIC_LEN; idx++)
		buff[idx] = MAGIC[idx];

	buff[idx++] = NODEID << 4;
	
	if (sr->temp > -100)
	{
		buff[idx] = TEMP_TAG << 3;
		buff[idx++] |= LEN_2;
		idx = encode_float_int16(buff, idx, sr->temp, 100);
		++count;
	}

	if (sr->humidity > -100)
	{
		buff[idx] = HUMIDITY_TAG << 3;
		buff[idx++] |= LEN_2;
		idx = encode_float_int16(buff, idx, sr->humidity, 100);
		++count;
	}

	if (sr->pressure > 0)
	{
		buff[idx] = PRESSURE_TAG << 3;
		buff[idx++] |= LEN_2;
		idx = encode_float_int16(buff, idx, sr->pressure - 800.0, 100);
		++count;
	}

	if (sr->batteryVoltage > 0)
	{
		buff[idx] = BATTERY_VOLTAGE_TAG << 3;
		buff[idx++] |= LEN_2;
		idx = encode_float_int16(buff, idx, sr->batteryVoltage, 1000);
		++count;
	}
	buff[MAGIC_LEN] |= count;		// Packets, one for each component

	return idx;
}


void setupLora(LoRaClass &lora)
{
	LoRa.setPins(CS_PIN, RESET_PIN, LORA_IRQ);// set CS, reset, IRQ pin

	if (!LoRa.begin(LORA_FREQ))
		while (true);                     

	const int spreadFactor = 10;
	lora.setSpreadingFactor(spreadFactor);
	lora.setPreambleLength(4);
	lora.enableCrc();
	lora.setSignalBandwidth(125000);
	lora.setSyncWord(0x73);
	lora.setTxPower(14);
}


void setup()
{
	pinMode(LED_PIN, OUTPUT);
	Blink(100, 5);
	delay(100);  // Give caps time to charge
	Wire.begin();
	bool status = bme.begin(0x76, &Wire);
	bme.setSampling(Adafruit_BME280::MODE_FORCED,
		Adafruit_BME280::SAMPLING_X4, // temperature
		Adafruit_BME280::SAMPLING_X4, // pressure
		Adafruit_BME280::SAMPLING_X4, // humidity
		Adafruit_BME280::FILTER_OFF);

	pinMode(INT_TIMER_PIN, INPUT);
	pinMode(SIGNAL_TIMER_PIN, INPUT);
	Blink(100, 5);
	setupLora(lora);
}


void wake()
{
	detachInterrupt(1);
	pinMode(SIGNAL_TIMER_PIN, OUTPUT);
	digitalWrite(SIGNAL_TIMER_PIN, HIGH);
}


void prepareSleep()
{
	digitalWrite(SIGNAL_TIMER_PIN, LOW);
	pinMode(SIGNAL_TIMER_PIN, INPUT);
	attachInterrupt(1, wake, RISING);
}


void readBme(SensorReading *sr, bool tempAndPressureOnly)
{
	bme.takeForcedMeasurement();
	sr->temp = bme.readTemperature();
	sr->pressure = bme.readPressure() / 100.0F;
	if (tempAndPressureOnly)
		return;
	sr->humidity = bme.readHumidity();
}


void readVoltage(SensorReading *sr)
{
	sr->batteryVoltage = measure_supply() / 1000.0;
}


void sendSensorReadings(SensorReading *sr)
{
	const int MSGBUF_LEN = 32;
	byte msgbuf[MSGBUF_LEN];

	int len = encodeSensorMessage(msgbuf, sr);

	lora.beginPacket();
	lora.write(msgbuf, len);
	lora.endPacket();
	lora.sleep();
}


int32_t loopCounter = -1;
int sleepCycles = 1;

void loop()
{
	if (loopCounter++ < 120)
	{
		sleepCycles = 1;
		Blink(50, 3);
	}
	else
	{
		sleepCycles = 30;
	}

	sensorReading.reset();
	readBme(&sensorReading, (loopCounter % 4) > 0);
	if((loopCounter % 4) == 0)
		readVoltage(&sensorReading);

	sendSensorReadings(&sensorReading);

	for (int i = 0; i < sleepCycles; i++)
	{
		prepareSleep();
		LowPower.powerSave(SLEEP_FOREVER, ADC_OFF, BOD_OFF, TIMER2_OFF);
	}
}
