#include "hamming.h"

int compute(const char *left, const char *right) {
    if (strlen(left) == 0 || strlen(right) == 0) {
        return 0;
    }

    if (strlen(left) != strlen(right)) {
        return -1;
    }

    else {
        int distance = 0;
        for (int i = 0; i < strlen(left); i++) {
            if (left[i] != right[i]) {
                distance++;
            }
        }
        return distance;
    }
}