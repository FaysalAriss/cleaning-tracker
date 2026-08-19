/*
 * hal_utils.h
 *
 *  Created on: Aug 19, 2026
 *      Author: Faysal
 */

#ifndef GENERAL_HAL_UTILS_H_
#define GENERAL_HAL_UTILS_H_

#include "stm32u0xx_hal.h"

//return early if HAL error, only use on functions with return type HAL_StatusTypeDef
#define HAL_TRY(expr) do{ \
		HAL_StatusTypeDef status = (expr); \
		if (status != HAL_OK) return status; \
	} while(0)

#endif /* GENERAL_HAL_UTILS_H_ */
