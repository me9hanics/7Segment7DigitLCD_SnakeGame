/*
 * Board support package API for GPIO push buttons on STK3700A.
 *
 * Created by:        NASZALY Gabor <naszaly@mit.bme.hu>
 * Date (yyyy-mm-dd): 2018-09-05
 *
 */

#ifndef BSP_BSP_STK_BUTTONS_H_

#include <stdint.h>

#define BSP_PB0  0
#define BSP_PB1  1

/***************************************************************************//**
 * @brief
 *   Initialize the GPIO pins belonging to the push buttons as inputs
 *   (with filter enabled).
 *
 * @note
 *   Before setting the pin modes, this function enables the high frequency
 *   peripheral clock (HFPER) and the GPIO clock.
 *
 ******************************************************************************/
void BSP_ButtonsInit(void);

/***************************************************************************//**
 * @brief
 *   Get the value of the GPIO pin belonging to the selected button.
 *
 * @param[in] btnNo
 *   Selects which button to get the corresponding pin value for.
 *   Valid values are:
 *     - BSP_PB0 (or simply 0) for PB0
 *     - BSP_PB1 (or simply 1) for PB1
 *
 * @return
 *   The value of the GPIO pin belonging to the selected button.
 *
 * @note
 *   Push buttons have an active zero logic, meaning that a button generates 0
 *   if pressed, and generates 1 when released!
 *
 ******************************************************************************/
int BSP_ButtonGet(int btnNo);

/***************************************************************************//**
 * @brief
 *   Get the values of the GPIO pins belonging to all of the buttons on board.
 *
 * @return
 *   The values of the GPIO pins belonging to the buttons on board.
 *   The value corresponding PB0 is stored as the 0th bit,
 *   while the value corresponding PB1 is stored as the 1st bit.
 *   The remaining bits are all zeros.
 *
 * @note
 *   Push buttons have an active zero logic, meaning that a button generates 0
 *   if pressed, and generates 1 when released!
 *
 ******************************************************************************/
uint32_t BSP_ButtonsGet(void);

#define BSP_BSP_STK_BUTTONS_H_



#endif /* BSP_BSP_STK_BUTTONS_H_ */
