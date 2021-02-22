/************************************************************************/
/*																		*/
/*	BLE.h	--	Declaration for BLE library 	    					*/
/*																		*/
/************************************************************************/
/*	Author:		Eric Marsh												*/
/*	Copyright 2016, Digilent Inc.										*/
/************************************************************************/
/*  File Description:													*/
/*	This file declares the BLE library functions and the constants	    */
/*	involved.															*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/*																		*/
/*	07/11/2016(EricM): created											*/
/*	01/08/2018(TommyK): changed to BLE									*/
/*																		*/
/************************************************************************/
#if !defined(BLE_H)
#define BLE_H

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "WProgram.h"
#include "HardwareSerial.h"

/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

class BLE 
{

private: 
	
public:
	void begin(HardwareSerial &serialPort, int baudRate);
	void send(HardwareSerial &serialPort, char* str);
	void send(HardwareSerial &serialPort, char cha);
	char read(HardwareSerial &serialPort);
	char* readSentence(HardwareSerial &serialPort);
};

#endif