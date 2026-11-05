#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <math.h>
// ARITHMETIC

int ADD(int x, int y) {
    return x + y;
}

int SUB(int x, int y) {
    return x - y;
}

int MUL(int x, int y) {
    return x * y;
}

float DIV(int x, int y) {
    return (float) x / y;
}

int MOD(int x, int y) {
    int inc = x;

    while (inc >= y) {
        inc = inc - y;
    }
    return inc;
}

int EXP(int x, int y) {
    int result = 1;
    for (int i = 0; i < y; i++) {
        result *= x;
    }
    return result;
}
// BOOLEAN

bool AND(bool x, bool y) {
    return x && y;
}

bool OR(bool x, bool y) {
    return x || y;
}

bool NOT(bool x) {
    return !x;
}

bool XOR(bool x, bool y) {
    return (x && !y) || (!x && y);
}

bool NAND(bool x, bool y) {
    return !(x && y);
}

bool NOR(bool x, bool y) {
    return (!x && !y);
}

bool XNOR(bool x, bool y) {
    return (x && y) || (!x && !y);
}

// CONVERSIONS

int BIN_TO_DEC(int x) {
    int val = 1;
    char stringval[20];
    snprintf(stringval, sizeof(stringval), "%d", x);
    int leng = strlen(stringval) - 1;

    int result = 0;

    while (leng >= 0) {
        char newchar = stringval[leng];
        if (newchar == '1') {
            result += val;
        } 
        val += val;
        leng--;
    }

    return result; 
}

int DEC_TO_BIN(int x) {
    if (x <= 0) {
        return 0;
    }

    char result[50] = ""; 
    int val = x;

    while (val > 0) {
        memmove(result + 1, result, strlen(result) + 1);

        if (val % 2 == 1) {
            result[0] = '1';
        } else {
            result[0] = '0';
        }
        val = val / 2;
    }

    return atoi(result);

}

char *DEC_TO_HEX(int x) {
    char *result = malloc(50);
    strcpy(result, "0x");

    int val = 0;
    int inc = 1;

    while (x >= pow(16, inc)) {
        inc++;
    }

    while (inc > 0) {
        val = (int) (x / pow(16, inc - 1)); 

        if (val > 9) {
            if (val == 10) {
                strcat(result, "A");
            } else if (val == 11) {
                strcat(result, "B");
            } else if (val == 12) {
                strcat(result, "C");
            } else if (val == 13) {
                strcat(result, "D");
            } else if (val == 14) {
                strcat(result, "E");
            } else if (val == 15) {
                strcat(result, "F");
            }
        } else {
            char digit[2] = {val + '0', '\0'};
            strcat(result, digit);
        }
        x = x - (pow(16, inc - 1) * val);
        inc = inc - 1;
    }
    return result;
}

int main() {
    printf("%i", NOT(10, 3));
}   

