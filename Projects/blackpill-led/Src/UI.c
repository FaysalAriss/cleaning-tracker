/*
 * UI.c
 *
 *  Created on: Feb 23, 2026
 *      Author: Faysal
 */

#include "UI.h"
#include "EPD_4in0e.h"

int draw_UI(void){

	//init pins
    if(DEV_Module_Init()!=0){ return -1; }

    //init screen
    EPD_4IN0E_Init();
    EPD_4IN0E_Clear(EPD_4IN0E_WHITE); //clear screen to white

    //image init
    UBYTE *Image; //pointer to the start of the image
    UDOUBLE Imagesize = (EPD_4IN0E_WIDTH * EPD_4IN0E_HEIGHT) / PIXELS_PER_BYTE; //size in bytes
    Image = (UBYTE *)malloc(Imagesize/4);
    if(Image == NULL) { return -1; }
    //divide by 2 because the width/height are in UBYTE which is 1/2 of UWORD, the required input
    Paint_NewImage(Image, EPD_4IN0E_WIDTH/2, EPD_4IN0E_HEIGHT/2, 0, EPD_4IN0E_WHITE);
    Paint_SetScale(6); //6 colors, needs to internally know that to know 2 pixels per byte

    //draw the UI in Image
    Paint_Clear(EPD_4IN0E_WHITE); //set background white
    Paint_DrawString_EN(30, 50, "Last cleaned:", &Font16, EPD_4IN0E_WHITE, EPD_4IN0E_BLACK);
    Paint_DrawNum(73, 100, 4, &Font16, EPD_4IN0E_BLACK, EPD_4IN0E_WHITE);
    Paint_DrawString_EN(30, 150, "days ago by x", &Font16, EPD_4IN0E_WHITE, EPD_4IN0E_BLACK);

    //transfer image to driver's buffer + refresh
    EPD_4IN0E_DisplayPart(Image, 100, 150, 200, 300);

    //no longer need image, free it + erase the reference
    free(Image);
    Image = NULL;

    //unset pins, close power to screen (vcc low)
    DEV_Module_Exit();


	return 0;
}
