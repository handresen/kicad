// loracommon.h

#ifndef _LORACOMMON_h
#define _LORACOMMON_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "arduino.h"
#else
	#include "WProgram.h"
#endif

#define STATUS_TAG 1
#define TEMP_TAG 2
#define PRESSURE_TAG 3
#define HUMIDITY_TAG 4
#define BATTERY_VOLTAGE_TAG 5
const byte MAGIC[] = { 0x98, 0xe5, 0x2a, 0x57 };
#define MAGIC_LEN 2

#define LEN_1 0
#define LEN_2 1
#define LEN_4 2
#define LEN_8 3
#define NODEID 11

struct SensorReading
{
	float temp;
	float humidity;
	float pressure;
	float batteryVoltage;

	void reset()
	{
		temp = -1e9;
		humidity = -1e9;
		pressure = -1e9;
		batteryVoltage = -1e9;
	}

	int count()
	{
		int n = 0;
		if (temp > -1e9)
			n += 1;
		if (humidity > -1e9)
			n += 1;
		if (pressure > -1e9)
			n += 1;
		if (batteryVoltage > -1e9)
			n += 1;
		return n;
	}
};


#endif
