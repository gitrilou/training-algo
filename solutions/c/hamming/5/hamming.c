#include "hamming.h"

int compute(const char *left, const char *right) {

    if (strlen(left) != strlen(right)) {
        return -1;
    }
    
    if (strlen(left) == 0 || strlen(right) == 0) {
        return 0;
    }

    else {
        int distance = 0;
        int length = strlen(left);
        for (int i = 0; i < length; i++) {
            if (left[i] != right[i]) {
                distance++;
            }
        }
        return distance;
    }
}