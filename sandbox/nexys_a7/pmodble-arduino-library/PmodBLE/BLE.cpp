/************************************************************************/
/*																		*/
/*	BLE.cpp		--		Definition for BLE library 	    				*/
/*																		*/
/************************************************************************/
/*	Author:		Eric Marsh												*/
/*	Copyright 2018, Digilent Inc.										*/
/************************************************************************/
/*  File Description:													*/
/*		This file defines functions for the PmodBLE						*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/*																		*/
/*	07/11/2016(EricM): created											*/
/*	01/08/2018(TommyK): changed to BLE									*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "BLE.h"

/* ------------------------------------------------------------ */
/*					Definitions									*/
/* ------------------------------------------------------------ */
#define MAX_SIZE 125

/* ------------------------------------------------------------ */
/*        BLE::begin
**
**        Synopsis:
**				myBT.begin(Serial1, 9600);
**        Parameters:
**				- HardwareSerial &serialPort - The HardwareSerial port (Serial1, Serial2, etc) from
**											   MPIDE that will be used to communicate with the PmodBLE
**				- int baudRate - The baud rate to communicate to the PmodBLE with	
**		
**
**        Return Values:
**                void 
**
**        Errors:
**
**
**        Description:
**			Initialize the system to communicate with the PmodBLE.
**
**
*/
void BLE::begin(HardwareSerial &serialPort, int baudRate)
{
	serialPort.begin(baudRate);
}

/* ------------------------------------------------------------ */
/*        BLE::send
**
**        Synopsis:
**				myBT.send(Serial1, 'a');
**        Parameters:
**				- HardwareSerial &serialPort - The HardwareSerial port (Serial1, Serial2, etc) from
**											   MPIDE that will be used to communicate with the PmodBLE
**				- char cha - A character to send through PmodBLE
**		
**
**        Return Values:
**                void 
**
**        Errors:
**
**
**        Description:
**			Send a character through Bluetooth
**
**
*/
void BLE::send(HardwareSerial &serialPort, char cha)
{
	serialPort.print(cha);
	return;
}

/* ------------------------------------------------------------ */
/*        BLE::send
**
**        Synopsis:
**				myBT.send(Serial1, "Bluetooth is fun");
**        Parameters:
**				- HardwareSerial &serialPort - The HardwareSerial port (Serial1, Serial2, etc) from
**											   MPIDE that will be used to communicate with the PmodBLE
**				- char* str - An array of characters to send through PmodBLE
**		
**
**        Return Values:
**                void 
**
**        Errors:
**
**
**        Description:
**			Send a string through Bluetooth
**
**
*/
void BLE::send(HardwareSerial &serialPort, char* str)
{
	int n = 0;
	while(str[n] != '\0') // '\0' marks the end of a string
	{
		serialPort.print(str[n]);
		n += 1;
	}
	serialPort.print("\n");
	return;
}

/* ------------------------------------------------------------ */
/*        BLE::read
**
**        Synopsis:
**				myBT.read(Serial1);
**        Parameters:
**				- HardwareSerial &serialPort - The HardwareSerial port (Serial1, Serial2, etc) from
**											   MPIDE that will be used to communicate with the PmodBLE
**		
**
**        Return Values:
**                char - character read through PmodBLE 
**
**        Errors:
**
**
**        Description:
**			Waits for PmodBLE to send a non-NULL character and returns it.
**
**
*/
char BLE::read(HardwareSerial &serialPort)
{
	int ascii_num;
	ascii_num = serialPort.read(); //receive ascii value from PmodBLE
	while(ascii_num == -1) // wait until PmodBLE sends real, non-NULL data
	{
		ascii_num = serialPort.read();
	}
	return (char)ascii_num; // convert ascii number to a character, then return it
}

/* ------------------------------------------------------------ */
/*        BLE::readSentence
**
**        Synopsis:
**				myBT.readSentence(Serial1);
**        Parameters:
**				- HardwareSerial &serialPort - The HardwareSerial port (Serial1, Serial2, etc) from
**											   MPIDE that will be used to communicate with the PmodBLE
**		
**
**        Return Values:
**                char* - A string ending in a carriage return read from BLE
**
**        Errors:
**
**
**        Description:
**			Waits for PmodBLE to send a string of characters ending with carriage-return, and returns it
**
**
*/
char* BLE::readSentence(HardwareSerial &serialPort)
{
	char sentence[MAX_SIZE];
	int n = 0;
	sentence[n] = read(serialPort);
	while(sentence[n] != '\r' && n < MAX_SIZE - 1) // '\r' is a carriage return
	{
		n += 1;
		sentence[n] = read(serialPort);
	}
	return sentence;
}