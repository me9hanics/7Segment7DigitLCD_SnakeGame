#include "main.h"

Situation win(void){
	Situation won;
	int i;
	for(i=3;i<37;i++){
		won.snake[i].digit=-1;
	}
	won.snake[0].digit=0;
	won.snake[0].seg=7;
	won.snake[1].digit=0;
	won.snake[1].seg=11;
	won.snake[2].digit=1;
	won.snake[2].seg=13;
	won.snake[3].digit=1;
	won.snake[3].seg=11;
	won.snake[4].digit=2;
	won.snake[4].seg=13;
	won.snake[5].digit=2;
	won.snake[5].seg=9;

	won.food.digit=2;
	won.food.seg=9;

	return won;
}


