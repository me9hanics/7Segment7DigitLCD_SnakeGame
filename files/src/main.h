#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

typedef struct Position{ //Thinking about it now, this could have been just one number. Segment goes from 0 to 6, aswell as digits, thus this can be written as a 2 digit number in base 7 quite easily: 7*digit+seg
	int digit;
	int seg;
}Position;

typedef struct Situation{
	Position snake[37];
	Position food;
}Situation;

int dirnew(int);

#endif /* SRC_MAIN_H_ */
