// ARITHMETIC

function ADD(x, y) {
    return x + y;
}

function SUB(x, y) {
    return x - y;
}

function MUL(x, y) {
    return x * y;
}

function DIV(x, y) {
    return x / y;
}

function MOD(x, y) {
    inc = x;
    while (inc >= y) {
        inc = inc - y;
    }
    return inc
}

function EXP(x, y) {
    result = 1;
    for (i = 0; i < y; i++) {
        result *= x;
    }
    return result;
}
// BOOLEAN

function AND(x,y) {
    if (x && y) {
        return true;
    }
    return false;
}

function OR(x,y) {
    if (x || y) {
        return true;
    }
    return false;
}

function NOT(x) {
    return !x;
}

function NAND(x,y) {
    if (!(x && y)) {
        return true;
    }
    return false;
}

function XOR(x,y) {
    if ((x && !y) || (!x && y)){
        return true;
    }
    return false;
}

function NOR(x,y) {
    if (!x && !y) {
        return true;
    }
    return false;
}

function XNOR(x,y) {
    if ((x && y) || (!x && !y)) {
        return true;
    }
    return false;
}

// CONVERSIONS

function BIN_TO_DEC(x) {
    val = 1;
    stringval = String(x);
    leng = stringval.length - 1;

    result = 0;

    while (leng >= 0) {
        if (stringval[leng] == "1") {
            result = result + val;
        }
        val = val + val;
        leng--;
    }

    return result;
}

function DEC_TO_BIN(x) {
    if (x <= 0) {
        return 0;
    }

    result = "";
    val = x;

    while (val > 0) {
        if (val % 2 == 1) {
            result = "1" + result;
        } else {
            result = "0" + result;
        }
        val = Math.trunc(val / 2);
    }

    return parseInt(result);
}

function DEC_TO_HEX(x) {
    result = "0x";
    inc = 1;

    while (x >= (16 ** inc)) {
        inc++;
    }

    while (inc > 0) {
        val = Math.trunc(x / 16 ** (inc - 1));

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
            result = result + val;
        }

        x = x - (16 ** (inc - 1) * val);
        inc--;
    }
    return result;
}

console.log(MOD(10, 10))