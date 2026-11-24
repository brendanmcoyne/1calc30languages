##### ARITHMETIC #####

function ADD(x, y) 
    return x + y
end

function SUB(x, y) 
    return x - y
end

function MUL(x, y) 
    return x * y
end

function DIV(x, y) 
    return x / y
end

function MOD(x, y)
    inc = x
    while inc > y
        inc = inc - y
    end
    return inc
end

function EXP(x, y)
    result = 1
    for _ in 1:y
        result = result * x
    end
    return result
end

##### BOOLEAN #####

function AND(x, y)
    x & y
end

function OR(x, y)
    x | y
end

function NAND(x, y)
    ~(x & y)
end

function NOR(x, y)
    ~x & ~y
end

function XOR(x, y)
    (~x & y) | (x & ~y)
end

function XNOR(x, y)
    (~x & ~y) | (x & y)
end

function NOT(x)
    ~x
end

##### CONVERSIONS #####

function BIN_TO_DEC(x)
    val = 1
    stringval = string(x)
    leng = length(stringval)
    result = 0

    while leng > 0
        if stringval[leng] == '1'
            result = result + val
        else 
            result = result + 0
        end

        leng = leng - 1
        val = val * 2
    end

    return result
end

function DEC_TO_BIN(x)
    if x <= 0
        return 0
    end

    result = ""
    val = x

    while val > 0
        if val % 2 == 1
            result = '1' * result
        else 
            result = '0' * result
        end
        val = div(val, 2)
    end

    num = parse(Int, result)
    return num
end

function DEC_TO_HEX(x)
    result = "0x"
    inc = 1

    while x >= (16 ^ inc)
        inc = inc + 1
    end

    while inc > 0
        val = div(x, (16 ^ (inc - 1)))

        if val > 9
            if val == 10
                result = result * "A"
            elseif val == 11
                result = result * "B"
            elseif val == 12
                result = result * "C"
            elseif val == 13
                result = result * "D"
            elseif val == 14
                result = result * "E"
            elseif val == 15
                result = result * "F"
            end
        else
            result = result * string(val)
        end

        x = x - ((16 ^ (inc - 1)) * val)
        inc = inc - 1
    end
    return result
end

println(DEC_TO_HEX(119403))

