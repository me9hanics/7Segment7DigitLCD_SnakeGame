#include "main.h"

Situation eating(Situation eatsituation, Position newhead,unsigned runtime){
	int i;
	for(i=0;eatsituation.snake[i].digit!=-1;i++);
	eatsituation.snake[i].digit=newhead.digit;
	eatsituation.snake[i].seg=newhead.seg;
	if(i==36){
		eatsituation.food.digit=-1;  //no food (doesn't really matter technically, only conceptually
		eatsituation.food.seg=-1;
	}
	else{ //random food generation on the remaining segments
		int j,k,l,m;
		srand(runtime);
		int r = (rand()%(36-i) +i+1); //random number between i+1 and 36
		Position fake[37]; //we fill up the array with the remaining segments and generate a random segment between them
		for(k=0;k<37;k++){
			fake[k].digit=eatsituation.snake[k].digit;
			fake[k].seg=eatsituation.snake[k].seg;
		}

		m=i+1;
		for(k=0;k<7;k++){ //Fully filled up fake array
			for(j=0;(k<6 && j<7 && j!= 1 && j!= 2)||(k<7 && j<7);j++){ //first 2 cycles to generate a random segment
				for(l=0;l<i+1;l++){ //cycle to search within the snake bodyparts
					if(eatsituation.snake[l].digit!=k || eatsituation.snake[l].seg!=j){ //if k,j is NOT the l'th segment
						if(l==i){ //k,j is none of the snake segments
							fake[m].digit=k;
							fake[m].seg=j;
							if(m<37)//theoraticly works every time, but let's be careful
								m++;
						}
					}
					else{ //l,k is a snake part -> skip
						break;
					}
				}
			}
		}
		eatsituation.food.digit=fake[r].digit;
		eatsituation.food.seg=fake[r].seg;

	}

	return eatsituation;
}

