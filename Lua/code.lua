-- ARITHMETIC --

local function ADD(x, y)
    return x + y
end

local function SUB(x, y)
    return x + y
end

local function MUL(x, y)
    return x * y
end

local function DIV(x, y)
    return x / y
end

local function ADD(x, y)
    return x + y
end

local function MOD(x, y)
    inc = x
    while inc > y do
        inc = inc - y
    end
    return inc
end

local function EXP(x, y)
    result = 1
    for i = 1, y do
        result = result * x
    end
    return result
end

-- BOOLEAN --

local function AND(x, y)
    return x and y
end

local function OR(x, y)
    return x or y
end

local function NOT(x)
    return not x
end

local function NOR(x, y)
    return not x and not y
end

local function XOR(x, y)
    return (x and not y) or (not x and y)
end

local function XNOR(x, y)
    return (x and y) or (not x and not y)
end

local function NAND(x, y)
    return not(x and y)
end

-- CONVERSIONS --

local function BIN_TO_DEC(x)
    val = 1
    stringval = tostring(x)
    leng = #stringval + 1

    result = 0

    while leng > 0 do
        if stringval:sub(leng - 1, leng - 1) == "1" then
            result = result + val
        else
            result = result + 0
        end
        val = val * 2
        leng = leng - 1
    end
    return result
end

local function DEC_TO_BIN(x)
    if x <= 0 then
        return 0
    end

    result = ""
    val = x

    while val > 0 do
        if val % 2 == 1 then
            result = "1" .. result
        else 
            result = "0" .. result
        end

        val = val // 2
    end
    num = tonumber(result)
    return num
end

local function DEC_TO_HEX(x)
    result = "0x"
    inc = 1

    while x >= 16 ^ inc do
        inc = inc + 1
    end

    while inc > 0 do
        val = x // math.tointeger(16 ^ (inc - 1))

        if val > 9 then
            if val == 10 then
                result = result .. "A"
            elseif val == 11 then
                result = result .. "B"
            elseif val == 12 then
                result = result .. "C"
            elseif val == 13 then
                result = result .. "D"
            elseif val == 14 then
                result = result .. "E"
            elseif val == 15 then
                result = result .. "F"
            end
        else 
            result = result .. tostring(val)
        end
        x = x - math.tointeger((16 ^ (inc - 1) * val))
        inc = inc - 1
    end
    return result
end

print(DEC_TO_HEX(258))