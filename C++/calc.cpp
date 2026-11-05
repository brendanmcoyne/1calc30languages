#include <iostream>
#include <cmath>

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
    while (inc > y) {
        inc = inc - y;
    }
    return inc;
}

int EXP(int x, int y) {
    int result = 1;
    for (int i{0}; i < y; i++) {
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

bool NAND(bool x, bool y) {
    return !(x && y);
}

bool XOR(bool x, bool y) {
    return (x && !y) || (!x && y);
}

bool NOR(bool x, bool y) {
    return !x && !y;
}

bool XNOR(bool x, bool y) {
    return (x && y) || (!x && !y);
}

// CONVERSIONS

int BIN_TO_DEC(int x) {
    int val = 1;
    std::string stringval = std::to_string(x);
    int leng = stringval.length();
    int result = 0;
    
    while (leng > 0) {
        if (stringval[leng-1] == '1') {
            result = result + val;
        } else {
            result = result + 0;
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

    std::string result = "";
    while (x > 0) {
        if (x % 2 == 1) {
            result = "1" + result;
        } else {
            result = "0" + result;
        }
        x = x / 2;
    }

    int num = std::stoi(result);
    return num;
}

std::string DEC_TO_HEX(int x) {
    int inc = 1;
    std::string result = "0x";

    while(x >= std::pow(16, inc)) {
        inc++;
    }

    while (inc > 0) {
        int val = x / std::pow(16, inc - 1);

        if (val > 9) {
            if (val == 10) {
                result = result + 'A';
            } else if (val == 11) {
                result = result + 'B';
            } else if (val == 12) {
                result = result + 'C';
            } else if (val == 13) {
                result = result + 'D';
            } else if (val == 14) {
                result = result + 'E';
            } else if (val == 15) {
                result = result + 'F';
            }
        } else {
            result = result + std::to_string(val);
        }
        x = x - (std::pow(16, inc - 1) * val);
        inc--;
    }
    return result;
}

int main() {
    std::cout << DEC_TO_HEX(79);

    return 0;
}