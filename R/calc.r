##### ARITHMETIC #####

ADD <- function(x, y) {
    return(x + y)
}

SUB <- function(x, y) {
    return(x - y)
}

MUL <- function(x, y) {
    return(x * y)
}

DIV <- function(x, y) {
    return(x / y)
}

MOD <- function(x, y) {
    inc <- x
    while (inc > y) {
        inc <- inc - y
    }
    return(inc)
}

EXP <- function(x, y) {
    result <- 1
    for (i in 1:y) {
        result <- result * x
    }
    return(result)
}

##### BOOLEAN #####

AND <- function(x, y) {
    return(x && y)
}

OR <- function(x, y) {
    return (x || y)
}

NOT <- function(x) {
    return(!x)
}

XOR <- function(x, y) {
    return ((!x && y) || (x && !y))
}

NOR <- function(x, y) {
    return (!x && !y)
}

XNOR <- function(x, y) {
    return ((x && y) || (!x && !y))
}

NAND <- function(x, y) {
    return (!(x && y))
}

##### CONVERSIONS #####

BIN_TO_DEC <- function(x) {
    val <- 1
    stringval <- as.character(x)
    leng <- nchar(stringval)
    result <- 0

    while (leng > 0) {
        if (substr(stringval, leng, leng) == "1") {
            result <- result + val
        } else {
            result <- result + 0
        }
        val <- val * 2
        leng <- leng - 1
    }
    return(result)
}

DEC_TO_BIN <- function(x) {
    if (x <= 0) {
        return(0)
    }

    result <- ""
    val <- x

    while (val > 0) {
        if (val %% 2 == 1) {
            result <- paste("1", result)
        } else {
            result <- paste("1", result)
        }
        val <- val %/% 2
    }
    return(as.numeric(result))
}

DEC_TO_HEX <- function(x) {
    result <- "0x"
    inc <- 1

    while (x >= (16 ^ inc)) {
        inc <- inc + 1
    }

    while (inc > 0) {
        val <- x %/% (16 ^ (inc - 1))

        if (val > 9) {
            if (val == 10) {
                result <- paste(result, "A", sep="")
            } else if (val == 11) {
                result <- paste(result, "B", sep="")
            } else if (val == 12) {
                result <- paste(result, "C", sep="")
            } else if (val == 13) {
                result <- paste(result, "D", sep="")
            } else if (val == 14) {
                result <- paste(result, "E", sep="")
            } else if (val == 15) {
                result <- paste(result, "F", sep="")
            }
        } else {
            result <- paste(result, val, sep="")
        }
        x <- x - (16 ^ (inc - 1)) * val
        inc <- inc - 1
    }
    return(result)
}


print(DEC_TO_HEX(258))