#include "queen_attack.h"
#include <stdbool.h>

unsigned int board_size(void);

unsigned int board_size(void)
{
    return 8;
}

attack_status_t can_attack(position_t queen_1, position_t queen_2)
{
    if (queen_1.row >= board_size() || queen_1.column >= board_size() ||
        queen_2.row >= board_size() || queen_2.column >= board_size()) {
        return INVALID_POSITION;
    }

    if ((queen_1.row == queen_2.row) && (queen_1.column == queen_2.column)) {
        return INVALID_POSITION;
    }
    
    if (queen_1.row == queen_2.row || queen_1.column == queen_2.column) {
        return CAN_ATTACK;
    }

    if (queen_1.row - queen_1.column == queen_2.row - queen_2.column) {
        return CAN_ATTACK;
    }

    if (queen_1.row + queen_1.column == queen_2.row + queen_2.column) {
        return CAN_ATTACK;
    }



    return CAN_NOT_ATTACK;
}
