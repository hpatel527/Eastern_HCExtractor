/******************************************************************************
* File Name          : readings_dispatch.h
* Date First Issued  : 10/03/2016
* Board              :
* Description        : Dispatch to handler based on payload [1]
*******************************************************************************/

#include <stdint.h>

#ifndef __READINGS_DISPATCH
#define __READINGS_DISPATCH

/* ************************************************************************************** */
unsigned int readings_dispatch(struct CANRCVBUF* pcan, struct TENSIONFUNCTION* p);
 /* @brief	: Handle command code msg
 * @param	: pcan = pointer to command msg received
 * @return	: reading as four bytes for payload insertion
 * ************************************************************************************** */

#endif
