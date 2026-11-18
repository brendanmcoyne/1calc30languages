##### ARITHMETIC #####

def ADD(x, y)
    x + y
end

def SUB(x, y)
    x - y
end

def MUL(x, y)
    x * y
end

def DIV(x, y)
    float = x.to_f
    float / y
end
  
def MOD(x, y)
    inc = x
    while inc > y 
        inc = inc - y
    end
    inc
end 

##### BOOLEAN #####

def AND(x, y)
    x & y
end

def OR(x, y)
    x | y
end

def NAND(x, y)
    !(x & y)
end

def NOR(x, y)
    !x & !y
end

def XOR(x, y)
    (!x & y) | (x & !y)
end

def XNOR(x, y)
    (!x & !y) | (x & y)
end

def NOT(x)
    !x
end

##### CONVERSIONS #####

def BIN_TO_DEC(x)
    val = 1
    stringval = x.to_s
    leng = stringval.length
    result = 0

    while leng > 0
        if stringval[leng - 1] == '1'
            result = result + val
        else 
            result = result + 0
        end

        leng = leng - 1
        val = val * 2
    end

    return result
end

def DEC_TO_BIN(x)
    if x <= 0
        return 0
    end

    result = ""
    val = x

    while val > 0
        if val % 2 == 1
            result = '1' + result
        else 
            result = '0' + result
        end
        val = val / 2
    end

    num = result.to_i
end

def DEC_TO_HEX(x)
    result = "0x"
    inc = 1

    while x >= (16 ** inc)
        inc = inc + 1
    end

    while inc > 0
        val = x / (16 ** (inc - 1))

        if val > 9
            if val == 10
                result = result + "A"
            elsif val == 11
                result = result + "B"
            elsif val == 12
                result = result + "C"
            elsif val == 13
                result = result + "D"
            elsif val == 14
                result = result + "E"
            elsif val == 15
                result = result + "F"
            end
        else
            result = result + val.to_s
        end

        x = x - ((16 ** (inc - 1)) * val)
        inc = inc - 1;
    end
    result
end
print DEC_TO_HEX(258)