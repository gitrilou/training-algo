#include "hamming.h"

int compute(const char *left, const char *right) {
    if (len(left) == 0 || len(right) == 0) {
        return 0;
    }

    if (len(left) != len(right)) {
        return -1;
    }

    else {
        int distance = 0;
        for (int i = 0; i < len(left); i++) {
            if (left[i] != right[i]) {
                distance++;
            }
        }
        return distance;
    }
}