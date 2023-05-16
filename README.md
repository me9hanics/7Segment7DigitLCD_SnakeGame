# 7Segment7DigitLCD_SnakeGame

This project is a Snake game designed for the SiLabs EFM32 Giant Gecko microcontroller, which is contains 7-segment, 7-digit LCD:

![image](https://user-images.githubusercontent.com/82604073/171496437-ab95107f-8a59-4f12-8bdf-eb3048a75a66.png)

The project really helped me to design lengthy projects, as there were a lot of small details specified, and developing an algorithm which moves the snake onto the right segments was not trivial. As the snake had to move by one segment each second, the best method I found to develop the code is using state machines, and every second, the code decides which state it should be in currently.

The files written by me can be found under files/src, the project is separated into multiple files.

Comments are written in the code to make it clearer.

## What does the repo include?

<code>files/src/</code> includes the C and C Header files that I've written specifically for this project.

<code>files/BSP/</code> has the BSP files, given by the developer company, and two files given by the university for using the buttons as GPIO pin inputs (with filtering).

<code>files/emlib/</code> contains the Energy Micro Library files needed for this project, it is for low-level peripheral support.

<code>files/CMSIS/EFM32GG</code> has the system and startup files needed for the microcontroller.

## The algorithm(s)
More soon..

  
