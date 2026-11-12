// ARITHMETIC

function ADD(x: number, y: number) {
    return x + y;
}

function SUB(x: number, y: number) {
    return x - y;
}

function MUL(x: number, y: number) {
    return x * y;
}

function DIV(x: number, y: number) {
    return x / y;
}

function MOD(x: number, y: number) {
    let inc = x;
    while (inc > y) {
        inc = inc - y;
    }
    return inc;
}

function EXP(x: number, y: number) {
    let result = 1;
    for (let i = 0; i < y; i++) {
        result = result * x;
    }
    return result;
}

// BOOLEAN

function AND(x: boolean, y: boolean) {
    return x && y;
}

function OR(x: boolean, y: boolean) {
    return x || y;
}

function NOT(x: boolean) {
    return !x;
}

function XOR(x: boolean, y: boolean) {
    return (x && !y) || (!x && y);
}

function NOR(x: boolean, y: boolean) {
    return !x && !y;
}

function NAND(x: boolean, y: boolean) {
    return !(x && y);
}

function XNOR(x: boolean, y: boolean) {
    return (x && y) || (!x && !y);
}

// CONVERSIONS

function BIN_TO_DEC(x: number) {
    let val = 1;
    let stringval: string = x.toString();
    let leng = stringval.length;
    let result = 0;

    while (leng > 0) {
        if (stringval[leng - 1] == '1') {
            result = result + val;
        } else {
            result = result + 0;
        }
        val += val;
        leng--;
    }
     
    return result;
}

function DEC_TO_BIN(x: number) {
    if (x <= 0) {
        return 0;
    }
    let result: string = "";
    while (x > 0) {
        if (x % 2 == 1) {
            result = '1' + result;
        } else {
            result = '0' + result;
        }
        x = Math.trunc(x / 2);
    }
    return Number(result);
}

function DEC_TO_HEX(x: number) {
    let inc = 1;
    let result: string = "0x";

    while (x >= 16**inc) {
        inc++;
    }
    while (inc > 0) {
        let val = Math.trunc(x / (16 ** (inc - 1)));

        if (val > 9) {
            if (val === 10) {
                result = result + 'A';
            } else if (val === 11) {
                result = result + 'B';
            } else if (val === 12) {
                result = result + 'C';
            } else if (val === 13) {
                result = result + 'D';
            } else if (val === 14) {
                result = result + 'E';
            } else if (val === 15) {
                result = result + 'F';
            }
        } else {
            result = result + val;
        }
        x = x - (16 ** (inc - 1)) * val;
        inc--;
    }
    return result;
}

console.log(DEC_TO_HEX(257));