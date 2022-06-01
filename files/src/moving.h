#ifndef SRC_MOVING_H_
#define SRC_MOVING_H_
#include "main.h"

Position newhead(Situation, int, int);
int checkifcollides(Situation, Position);
int checkifeating(Situation, Position);
Situation move(Situation, Position);


#endif /* SRC_MOVING_H_ */
