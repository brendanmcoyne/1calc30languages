def ADD(x, y):
    return x + y

def SUB(x, y):
    return x - y

def MUL(x, y):
    return x * y

def DIV(x, y):
    return x / y

def MOD(x, y):
    inc = x
    while inc > y:
        inc = inc - y
    return inc

def AND(x,y):
    if x and y:
        return True
    else: 
        return False

def OR(x,y):
    if x or y:
        return True
    else: 
        return False
    
def NOT(x):
    if x:
        return False
    else: 
        return True
    
def NAND(x,y):
    if not (x and y):
        return True
    else: 
        return False 

def XOR(x,y):
    if (x and y) or (not x and not y):
        return True
    else: 
        return False  

def NOR(x,y):
    if not x and not y:
        return True
    else: 
        return False 

def XOR(x,y):
    if (x and not y) or (not x and y):
        return True
    else: 
        return False 

def XNOR(x,y):
    if (x and y) or (not x and not y):
        return True
    else: 
        return False 

def BIN_TO_DEC(x):
    val = 1
    stringval = str(x)
    leng = len(stringval) - 1

    result = 0

    while (leng >= 0):
        if stringval[leng] == "1":
            result = result + val
        val = val + val
        leng -= 1

    return result

def DEC_TO_BIN(x):
    result = ""
    val = x

    if val == 0:
        return "0"
    
    while val > 0:
        if val % 2 == 1:
            result = "1" + result
        else:
            result = "0" + result
        val = val // 2

    return result   

def DEC_TO_HEX(x):
    result = ""
    inc = 1

    while (x >= 16**inc):
        inc = inc + 1

    while (inc > 0):
        val = x // (16**(inc-1))

        if val > 9:
            if val == 10:
                result = result + "A"
            elif val == 11:
                result = result + "B"
            elif val == 12:
                result = result + "C"
            elif val == 13:
                result = result + "D" 
            elif val == 14:
                result = result + "E"
            elif val == 15:
                result = result + "F"
        else:
            result = result + str(val)

        x = x - ((16**(inc-1))*val)
        inc = inc - 1
    return result
    
print(DEC_TO_HEX(1739))