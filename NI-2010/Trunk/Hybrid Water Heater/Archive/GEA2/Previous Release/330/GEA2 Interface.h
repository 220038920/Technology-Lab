//==============================================================================
//
// Title:       GEA2 Interface
// Purpose:     A short description of the interface.
//
// Created on:  3/10/2011 at 9:53:44 AM by John.
// Copyright:   Chapman. All Rights Reserved.
//
//==============================================================================

#ifndef __GEA2Interface_H__
#define __GEA2Interface_H__

#if defined(__DLL__)
  #define DLL_EXP __export
#else
  #define DLL_EXP __import
#endif

#ifndef CALLBACK
   #define CALLBACK __stdcall
#endif

//==============================================================================
// Types

// Type definition for the callback function.
typedef void CALLBACK(MessageReceivedCallbackFunc)(unsigned char *, int, unsigned int, unsigned int, unsigned int, double);


#ifdef __cplusplus
    extern "C" {
#endif

//==============================================================================
// Include files

//==============================================================================
// Constants

//==============================================================================
// External variables

//==============================================================================
// Global functions

int DLL_EXP GEA_Connect (int ComPort, int Speed, unsigned char MyAddress);
int DLL_EXP GEA_Connect_Callback (int ComPort, int Speed, unsigned char MyAddress, MessageReceivedCallbackFunc *Callback);

void DLL_EXP GEA_Disconnect (void);
int DLL_EXP GEA_GetPendingMessage(unsigned char *pu8DataBufferToFill,
                                  int i32BufferSize,
                                  unsigned int *u32Hours,
                                  unsigned int *u32Minutes,
                                  unsigned int *u32Seconds,
                                  double *fMilliseconds);
int DLL_EXP GEA_SendMessage(unsigned char u8TargetAddress,
                             unsigned char u8Retries,
                             unsigned char u8Length,
                             unsigned char *pu8BufferToSend);

#ifdef __cplusplus
    }
#endif

#endif  /* ndef __GEA2Interface_H__ */
