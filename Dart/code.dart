import 'dart:math';

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

double DIV(double x, double y) {
    return x / y;
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
    for (int i = 0; i < y; i++) {
        result = result * x;
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

bool NOR(bool x, bool y) {
    return !x && !y;
}

bool XNOR(bool x, bool y) {
    return (x && y) || (!x && !y);
}

bool NAND(bool x, bool y) {
    return !(x && y);
}

// CONVERSIONS

int BIN_TO_DEC(int x) {
    int val = 1;
    String stringval = x.toString();
    int leng = stringval.length;

    int result = 0;

    while (leng > 0) {
        if (stringval[leng - 1] == "1") {
            result = result + val;
        } else {
            result = result + 0;
        }
        val = val * 2;
        leng--;
    }
    return result;
}

int DEC_TO_BIN(int x) {
    if (x <= 0) {
        return 0;
    }

    String result = "";
    int val = x;

    while (val > 0) {
        if (val % 2 == 1) {
            result = "1" + result;
        } else {
            result = "0" + result;
        }
        val = val ~/ 2;
    }
    int numval = int.parse(result);
    return numval;
}

String DEC_TO_HEX(int x) {
    String result = "0x";
    int inc = 1;

    while (x >= pow(16, inc)) {
        inc++;
    }

    int val = 0;
    while (inc > 0) {
        val = x ~/ pow(16, inc - 1);

        if (val > 9) {
            if (val == 10) {
                result = result + "A";
            } else if (val == 11) {
                result = result + "B";
            } else if (val == 12) {
                result = result + "C";
            } else if (val == 13) {
                result = result + "D";
            } else if (val == 14) {
                result = result + "E";
            } else if (val == 15) {
                result = result + "F";
            }
        } else {
            result = result + val.toString();
        }
        x = x - ((pow(16, inc - 1)) * val).toInt();
        inc--;
    }
    return result;
}

void main() {
    print(DEC_TO_HEX(19));
}