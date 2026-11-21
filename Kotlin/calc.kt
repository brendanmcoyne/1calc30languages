import kotlin.math.pow

// ARITHMETIC

fun ADD(x: Int, y: Int): Int {
    return x + y
}

fun SUB(x: Int, y: Int): Int {
    return x - y
}

fun MUL(x: Int, y: Int): Int {
    return x * y
}

fun DIV(x: Double, y: Double): Double {
    return x / y
}

fun MOD(x: Int, y: Int): Int {
    var inc: Int = x 
    while (inc > y) {
        inc = inc - y
    }
    return inc
}

fun EXP(x: Int, y: Int): Int {
    var result: Int = 1
    var inc: Int = 0
    while (inc < y) {
        result = result * x
        inc++
    }
    return result
}

// BOOLEAN

fun AND(x: Boolean, y: Boolean): Boolean {
    return x && y
}

fun OR(x: Boolean, y: Boolean): Boolean {
    return x || y
}

fun XOR(x: Boolean, y: Boolean): Boolean {
    return (!x && y) || (x && !y)
}

fun NOR(x: Boolean, y: Boolean): Boolean {
    return (!x && !y)
}

fun NAND(x: Boolean, y: Boolean): Boolean {
    return !(x && y)
}

fun XNOR(x: Boolean, y: Boolean): Boolean {
    return (x && y) || (!x && !y)
}

// CONVERSIONS

fun BIN_TO_DEC(x: Int): Int {
    var incval: Int = 1
    var stringval: String = x.toString()
    var leng: Int = stringval.length;

    var result: Int = 0

    while (leng > 0) {
        if (stringval[leng - 1] == '1') {
            result = result + incval
        } else {
            result = result + 0
        }
        incval = incval * 2
        leng--
    }
    return result

}

fun DEC_TO_BIN(x: Int): Int {
    if (x <= 0) {
        return 0
    }

    var result: String = ""
    var incval: Int = x

    while (incval > 0) {
        if (incval % 2 == 1) {
            result = '1' + result
        } else {
            result = '0' + result
        }
        incval = incval / 2
    }
    return result.toInt();

}

fun DEC_TO_HEX(x: Int): String {
    var result: String = "0x"
    var inc: Int = 1
    var y = x

    while (y >= 16.0.pow(inc).toInt()) {
        inc++
    }

    var incval = 0
    while (inc > 0) {
        incval = y / 16.0.pow(inc - 1).toInt()

        if (incval > 9) {
            if (incval == 10) {
                result = result + 'A'
            } else if (incval == 11) {
                result = result + 'B'
            } else if (incval == 12) {
                result = result + 'C'
            } else if (incval == 13) {
                result = result + 'D'
            } else if (incval == 14) {
                result = result + 'E'
            } else if (incval == 15) {
                result = result + 'F'
            }
        } else {
            result = result + incval
        }
        y = y - (16.0.pow(inc - 1).toInt() * incval)
        inc--
    }

    return result;
}

fun main() {
    println(DEC_TO_HEX(258))
}