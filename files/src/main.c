#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include "em_cmu.h"
#include "em_emu.h"
#include "bsp.h"
#include "bsp_trace.h"
#include "bsp_stk_buttons.h"

#include "em_device.h"
#include "em_chip.h"

#include "segmentlcd.h"
#include "segmentlcd_individual.h"

#include "main.h"
#include "start.h"
#include "moving.h"
#include "eating.h"
#include "lose.h"
#include "win.h"

volatile uint32_t msTicks; /* counts 1ms timeTicks */

enum States{
Start,
Moving,
Eating,
Lose,
Win
}; //state


SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[SEGMENT_LCD_NUM_OF_LOWER_CHARS]; //7, for a 7-digit LCD

uint32_t runTime;

void delay() {
	for(int d=0;d<1500000;d++); //originally 150000
	runTime = DWT->CYCCNT - runTime;

}


int dirnew(int d){ //Direction can be Right, Up, Left, and Down, we assign 0,1,2,3 to these values respectively.
	if(BSP_ButtonGet(0)){
	    	d++;
	    }
	if(BSP_ButtonGet(1)){
	    	d--;
	    }
	return (d%4<0 ? d%4 +4 : d%4);
}



void setLCDSegments(Situation current){
	//Clear everything before
	for (uint8_t p=0; p<SEGMENT_LCD_NUM_OF_LOWER_CHARS;p++){
		lowerCharSegments[p].raw=0;
	}

	//Set the corresponding bits of the segments on the LCD
	for(uint8_t i=0; current.snake[i].digit != -1; i++){
		switch(current.snake[i].seg){
		case 0:
			lowerCharSegments[current.snake[i].digit].a=1;
					break;
		case 1:
			lowerCharSegments[current.snake[i].digit].b=1;
					break;
		case 2:
			lowerCharSegments[current.snake[i].digit].c=1;
					break;
		case 3:
			lowerCharSegments[current.snake[i].digit].d=1;
					break;
		case 4:
			lowerCharSegments[current.snake[i].digit].e=1;
					break;
		case 5:
			lowerCharSegments[current.snake[i].digit].f=1;
					break;
		case 6:
			lowerCharSegments[current.snake[i].digit].g=1;
			lowerCharSegments[current.snake[i].digit].m=1;
					break;
		}

	}

	//Set the corresponding bits to display the food
	switch(current.food.seg){
			case 0:
				lowerCharSegments[current.food.digit].a=1;
						break;
			case 1:
				lowerCharSegments[current.food.digit].b=1;
						break;
			case 2:
				lowerCharSegments[current.food.digit].c=1;
						break;
			case 3:
				lowerCharSegments[current.food.digit].d=1;
						break;
			case 4:
				lowerCharSegments[current.food.digit].e=1;
						break;
			case 5:
				lowerCharSegments[current.food.digit].f=1;
						break;
			case 6:
				lowerCharSegments[current.food.digit].g=1;
				lowerCharSegments[current.food.digit].m=1;
						break;
			}

	SegmentLCD_LowerSegments(lowerCharSegments);
}

/**************************************************************************************************/

int main(void)
{
  runTime = DWT->CYCCNT; //for time measurement
//Initializations
  CHIP_Init();
  SegmentLCD_Init(false);
  BSP_TraceProfilerSetup();
  BSP_ButtonsInit();
//Variables
  enum States state = Start;
  int direction = 0;
  int currentdir;
  Situation currentSituation;
  Position currentHead;



  //State machine loop
  while (1) {
     //demoLowerSegments();
     switch(state){
     case Start:
    	 currentSituation = start(currentSituation);
    	 direction = 0;
    	 state = Moving;
    	 setLCDSegments(currentSituation);
    	 break;

     case Moving:
    	 delay();
    	 direction=currentdir;
    	 currentdir=dirnew(direction);
    	 currentHead = newhead(currentSituation, direction, currentdir);
    	 if(checkifcollides(currentSituation,currentHead)){  //Because of the *break;* statements, only one state value setting will happen
    	 	 state=Lose;
    	 	 break;
    	 }
    	 if(checkifeating(currentSituation,currentHead)){
    	 	 state=Eating;
    	 	 break;
    	 }
    	 currentSituation = move(currentSituation,currentHead);
    	 state=Moving; //unnecessary, but good to see
    	 setLCDSegments(currentSituation);
    	 break;

     case Eating:
    	 srand(runTime);
    	 currentSituation = eating(currentSituation,currentHead,runTime);
    	 state=Moving;
    	 if(currentSituation.snake[36].digit!=-1){
    	 	 state=Win;
    	 }
    	 setLCDSegments(currentSituation);
    	 break;

     case Lose:
    	 currentSituation = lose();
    	 setLCDSegments(currentSituation);
    	 //while(!(BSP_ButtonGet(0)||BSP_ButtonGet(1))){

    	 //}
    	 //state=Start;
    	 break;

     case Win:
    	 currentSituation = win();
    	 setLCDSegments(currentSituation);
    	 //while(!(BSP_ButtonGet(0)==0||BSP_ButtonGet(1)==0)){

    	 //}
    	 //state=Start;
    	 break;

     }

  }


}
