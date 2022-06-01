#include "main.h"
 Situation start(Situation a){
	int i;
	int f = rand()%36; //Food is randomly placed among the segments, this assures the randomness.

	//Snake: starts from the most left digit's middle segment. Put that segment into the snake's body's array, fill the remaining places with -1
	a.snake[0].digit=0;
	a.snake[0].seg=6;
	for(i=1;i<37;i++){
		a.snake[i].digit=-1;
		a.snake[i].seg=-1;
	}

	//Food is randomly placed among the segments on the LCD, can't be placed at the segment
	//Only the 7th digit (numbered 6) uses it's b and c segments (labeled 1 and 2), we put the food on those segment in cases f==35 and f==4
	if(f==4){ //case when the food would be placed at the snake's head (only body part yet), we replace it at the last digit's b segment
		a.food.digit=6;
		a.food.seg=1;
	}
	else{
		if(f==35){ //last digit
			a.food.digit=6;
			a.food.seg=2;
		}
		else{

			a.food.digit=(f-f%5)/5; //could just be f/5, but this is safer and more expansive
			switch(f%5){
			case 0: a.food.seg=0; break;
			case 1: a.food.seg=3; break;
			case 2: a.food.seg=4; break;
			case 3: a.food.seg=5; break;
			case 4: a.food.seg=6; break;
			}
		}
	}

	return a;
}


