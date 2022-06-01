#include "main.h"

Situation lose(void){
	Situation lost;
	int i;
	int j;
	for(i=2;i<37;i++){
		lost.snake[i].digit=-1;
	}
	lost.snake[0].digit=0;
	lost.snake[0].seg=5;
	lost.snake[1].digit=0;
	lost.snake[1].seg=4;
	lost.food.digit=0;
	lost.food.seg=3;
	for(j=2;j<8;j++){
		lost.snake[j].digit=1;
		lost.snake[j].seg=j-2;
	}
	lost.snake[8].digit=2;
	lost.snake[8].seg=0;
	lost.snake[9].digit=2;
	lost.snake[9].seg=2;
	lost.snake[10].digit=2;
	lost.snake[10].seg=3;
	lost.snake[11].digit=2;
	lost.snake[11].seg=5;
	lost.snake[12].digit=2;
	lost.snake[12].seg=6;

	lost.snake[13].digit=3;
	lost.snake[13].seg=0;
	lost.snake[14].digit=3;
	lost.snake[14].seg=3;
	lost.snake[15].digit=3;
	lost.snake[15].seg=4;
	lost.snake[16].digit=3;
	lost.snake[16].seg=5;
	lost.snake[17].digit=3;
	lost.snake[17].seg=6;

	return lost;
}
