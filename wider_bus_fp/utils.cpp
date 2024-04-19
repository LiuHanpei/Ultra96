#include "utils.h"


int16_t fP2Int(float fixedPointValue) {
    return (fixedPointValue * pow(2,12));
}

float Int2fP(int16_t intValue) {
    return ((float)intValue / pow(2, 12));
}
