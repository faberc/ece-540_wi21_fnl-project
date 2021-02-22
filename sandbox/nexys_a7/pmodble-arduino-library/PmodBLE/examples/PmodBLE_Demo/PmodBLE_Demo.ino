/************************************************************************/
/*				        	                        */
/*	  PmodBLE Demo Project 		                                */
/*					    	                        */
/************************************************************************/
/*	Author: Eric Marsh					        */
/*	Copyright 2016, Digilent Inc.					*/
/************************************************************************/
/*  File Description: 			             		        */
/*					                        	*/
/* This file implements a simple demo application that demonstrates     */
/* how to setup and use the PmodBLE.				        */
/*									*/
/*	Functionality:							*/
/*									*/
/* In the setup() function, the PmodBLE is initialized through          */
/* calling the BLE library.                                             */
/*                                                                      */
/*                                                                      */
/* In the loop() function, the application repeatedly reads input       */
/* from PmodBLE, and sends a string to PmodBLE using Serial ports and   */
/* the BLE Library.                                                     */
/*					       	                        */
/*	Required Hardware:		                                */
/*	  1. PIC32 based Microcontroller    	                        */
/*	  2. PmodBLE                                             	*/
/*        3. Bluetooth low energy compatible Bluetooth program to communicate      */
/*           to PmodBLE with, such as Tera Term for PC or Bleterm      */
/*           for Android.                                               */
/*			                                                */
/************************************************************************/
/*  Revision History:			        			*/
/*					                        	*/
/*	07/13/2016(EricM): Created	       			        */
/*	01/08/2018(TommyK): Changed to BLE, changed baud rate to 115200		*/
/*                                                                      */
/*					      	                        */
/************************************************************************/

/* -------------------------------------------------------------------- */
/*		        Include File Definitions                     	*/
/* -------------------------------------------------------------------- */
#include "BLE.h"

/* -------------------------------------------------------------------- */
/*		            Global Variables                     	*/
/* -------------------------------------------------------------------- */
BLE bt;


void setup()
{
  // Initialize Serial to print to Serial Monitor
  Serial.begin(115200);
  Serial.println("Begin program...");
  
  // Initialize PmodBLE. Serial1 is the serial port used to commuinicate with PmodBLE
  bt.begin(Serial1, 115200); 
}


void loop()
{
  // Read data from PmodBLE, then print it to Serial Monitor
  Serial.println(bt.readSentence(Serial1));
  
  // Send string to PmodBLE
  bt.send(Serial1,"Hi! I was sent using PmodBLE! :)");
  
}
