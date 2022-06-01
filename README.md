# 7Segment7DigitLCD_SnakeGame

This project is a Snake game designed for the SiLabs EFM32 Giant Gecko microcontroller, which is contains 7-segment, 7-digit LCD:

![image](https://user-images.githubusercontent.com/82604073/171496437-ab95107f-8a59-4f12-8bdf-eb3048a75a66.png)

The project really helped me to design lengthy projects, as there were a lot of small details specified, and developing an algorithm which moves the snake onto the right segments was not trivial. As the snake had to move by one segment each second, the best method I found to develop the code is using state machines, and every second, the code decides which state it should be in currently.

