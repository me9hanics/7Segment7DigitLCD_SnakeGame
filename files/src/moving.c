#ifndef SRC_MOVING_C_
#define SRC_MOVING_C_
#include "main.h"





Position newhead(Situation currsit, int lastdir, int dir){
	int i;
	Position r;
	Position oldhead;

	/*for(i=1;currsit.snake[i].digit>-1;i++){
		oldhead.digit=currsit.snake[i-1].digit;
		oldhead.seg=currsit.snake[i-1].seg;
	}*/
	for(i=0;currsit.snake[i].digit>-1;i++){
		oldhead.digit=currsit.snake[i].digit;
		oldhead.seg=currsit.snake[i].seg;
	}


	//oldhead to newhead. dir: 0 right, 1 up, 2 left, 3 down
	switch(dir){
	/***********************************************************************/
	case 1: //going up
		switch(oldhead.seg){
		//Vertical segments first(easier case)
		case 5:
			r.digit=oldhead.digit;
			r.seg=4;
			break;
		case 4:
			r.digit=oldhead.digit;
			r.seg=5;
			break;
		case 1: //only at 6th digit
			r.digit=6;
			r.seg=2;
			break;
		case 2: //only at 6th digit
			r.digit=6;
			r.seg=1;
			break;


		//Horizontal cases
		case 0: //NOTE: Case 0 and 3 are identical!!!
			if(oldhead.digit==6){
				if(lastdir==0){ //coming from the left
					r.digit=6;
					r.seg=2;
				}
				else{  //coming from the right
					r.digit=6;
					r.seg=4;
				}

			}
			else{
				//other digits
				if(lastdir==0){ //coming from the left
					r.digit=oldhead.digit+1;
					r.seg=4;
				}
				else{  //coming from the right
					r.digit=oldhead.digit;
					r.seg=4;
				}
			}

			break;

		case 3:
			if(oldhead.digit==6){
				if(lastdir==0){ //coming from the left
					r.digit=6;
					r.seg=2;
				}
				else{  //coming from the right
					r.digit=6;
					r.seg=4;
				}

			}
			else{
				//other digits
				if(lastdir==0){ //coming from the left
					r.digit=oldhead.digit+1;
					r.seg=4;
				}
				else{  //coming from the right
					r.digit=oldhead.digit;
					r.seg=4;
				}
			}

			break;
		case 6:
			if(oldhead.digit==6){
				if(lastdir==0){ //coming from the left
					r.digit=6;
					r.seg=1;
				}
				else{  //coming from the right
					r.digit=6;
					r.seg=5;
				}

			}
			else{
				//other digits
				if(lastdir==0){ //coming from the left
					r.digit=oldhead.digit+1;
					r.seg=5;
				}
				else{  //coming from the right
					r.digit=oldhead.digit;
					r.seg=5;
				}
			}

		break;

	} //end of oldhead.seg switch
		break; //end of case of the direction going up

	/***********************************************************************/
	case 3: //going down
		switch(oldhead.seg){
		//Vertical segments first(easier case)
		case 5:
			r.digit=oldhead.digit;
			r.seg=4;
			break;
		case 4:
			r.digit=oldhead.digit;
			r.seg=5;
			break;
		case 1: //only at 6th digit
			r.digit=6;
			r.seg=2;
			break;
		case 2: //only at 6th digit
			r.digit=6;
			r.seg=1;
			break;

		//Horizontal cases
		case 0: //NOTE: Case 0 and 3 are identical!!!
			if(oldhead.digit==6){
				if(lastdir==0){ //coming from the left
					r.digit=6;
					r.seg=1;
				}
				else{  //coming from the right
					r.digit=6;
					r.seg=5;
				}

			}
			else{ //other digits
				if(lastdir==0){ //coming from the left
					r.digit=oldhead.digit+1;
					r.seg=5;
				}
				else{  //coming from the right
					r.digit=oldhead.digit;
					r.seg=5;
				}
			}

			break;

		case 3:
			if(oldhead.digit==6){
				if(lastdir==0){ //coming from the left
					r.digit=6;
					r.seg=1;
				}
				else{  //coming from the right
					r.digit=6;
					r.seg=5;
				}

			}
			else{ //other digits
				if(lastdir==0){ //coming from the left
					r.digit=oldhead.digit+1;
					r.seg=5;
				}
				else{  //coming from the right
					r.digit=oldhead.digit;
					r.seg=5;
				}
			}

			break;

		case 6:
			if(oldhead.digit==6){
				if(lastdir==0){ //coming from the left
					r.digit=6;
					r.seg=2;
				}
				else{  //coming from the right
					r.digit=6;
					r.seg=4;
				}

			}
			else{ //other digits
				if(lastdir==0){ //coming from the left
					r.digit=oldhead.digit+1;
					r.seg=4;
				}
				else{  //coming from the right
					r.digit=oldhead.digit;
					r.seg=4;
				}
			}

			break;

			} //end of oldhead.seg switch
		break; //end of dir case 3

		/***********************************************************************/
	case 0: //Going to the right
		switch(oldhead.seg){
		////Horizontal segments first (trivial cases)
		case 0:
			r.digit=(oldhead.digit+1)%7;
			r.seg=0;
			break;
		case 3:
			r.digit=(oldhead.digit+1)%7;
			r.seg=3;
			break;
		case 6:
			r.digit=(oldhead.digit+1)%7;
			r.seg=6;
			break;

		//Vertical segments cases
		case 1:  //only at the 6th digit
			r.digit=0;
			if(lastdir==1){
				r.seg=0;
			}
			else{ //lastdir == 3
				r.seg=6;
			}
			break;
		case 2:
			r.digit=0;
			if(lastdir==1){
				r.seg=6;
			}
			else{ //lastdir == 3
				r.seg=3;
			}
			break;

		case 5:
			r.digit=oldhead.digit;
			if(lastdir==1){
				r.seg=0;
			}
			else{ //lastdir == 3
				r.seg=6;
			}
			break;
		case 4:
			r.digit=oldhead.digit;

			if(lastdir==1){
				r.seg=6;
			}
			else{ //lastdir == 3
				r.seg=3;
			}
			break;

			break;
		} //end of switching segment
		break; //end of case 0

		/***********************************************************************/
	case 2: //Going left

		switch(oldhead.seg){
		//Horizontal first
		case 0:
			r.digit=(oldhead.digit!=0) ? oldhead.digit-1 : 6;
			r.seg=0;
			break;
		case 3:
			r.digit=(oldhead.digit!=0) ? oldhead.digit-1 : 6;
			r.seg=3;
			break;
		case 6:
			r.digit=(oldhead.digit!=0) ? oldhead.digit-1 : 6;
			r.seg=6;
			break;

		//Vertical
		case 1: //Only at 6th digit
			r.digit=5;
			if(lastdir==1){
				r.seg=0;
			}
			else{ //lastdir == 3
				r.seg=6;
			}
			break;
		case 2: //Only at 6th digit
			r.digit=5;
			if(lastdir==1){
				r.seg=6;
			}
			else{ //lastdir == 3
				r.seg=3;
			}
			break;
		case 5:
			r.digit=(oldhead.digit!=0) ? oldhead.digit-1 : 6;
			if(lastdir==1){
				r.seg=0;
			}
			else{ //lastdir == 3
				r.seg=6;
			}
			break;
		case 4:
			r.digit=(oldhead.digit!=0) ? oldhead.digit-1 : 6;
			if(lastdir==1){
				r.seg=6;
			}
			else{ //lastdir == 3
				r.seg=3;
			}
			break;

		}//end of switch-casing segment

		break; // end of case 2

	} //end of switching dir



	return r;
}

int checkifcollides(Situation current, Position headnew){
	int i;
	for(i=0; current.snake[i].digit!=-1;i++){
		if(headnew.digit==current.snake[i].digit && headnew.seg==current.snake[i].seg)   //Didn't use operator overloading, as this is a .C file
			return 1;
	}

	return 0;
 }

int checkifeating(Situation current, Position headnew){
	if(current.food.digit==headnew.digit && current.food.seg == headnew.seg){ //again
		return 1;
	}
	return 0;
}

Situation move(Situation current, Position headnew){
	//Situation new;
	int i;
	for(i=0;current.snake[i+1].digit!=-1;i++){ //The array looks like this: toe, toe+1, ... head-1, head, -1, -1, ...
		//Shift each snake body part one to the left in the array, take out the leftmost segment
		current.snake[i].digit=current.snake[i+1].digit;
		current.snake[i].seg=current.snake[i+1].seg;
	}
	//And put the new head in the array one after the current head (which was shifted to the left, so in the original i value of the head before the above operation)
	current.snake[i].digit=headnew.digit;
	current.snake[i].seg=headnew.seg;

	return current;
}

#endif /* SRC_MOVING_C_ */
