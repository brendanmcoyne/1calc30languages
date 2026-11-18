package main
import "fmt"
import "strconv"
import "math"

// ARITHMETIC

func ADD(x int, y int) int {
	return x + y
}

func SUB(x int, y int) int {
	return x - y
}

func MUL(x int, y int) int {
	return x * y
}

func DIV(x float32, y float32) float32 {
	return x / y
}

func MOD(x int, y int) (inc int) {
	inc = x;
	for inc > y {
		inc -= y;
	}
	return
}

func EXP(x int, y int) (result int) {
	result = 1;
	for i := 0; i < y; i++ {
		result *= x
	}
	return
}

// BOOLEAN

func AND(x bool, y bool) bool {
	return x && y
}

func OR(x bool, y bool) bool {
	return x || y
} 

func NOT(x bool) bool {
	return !x
}

func NAND(x bool, y bool) bool {
	return !(x && y)
}

func XOR(x bool, y bool) bool {
	return (!x && y) || (x && !y)
}

func NOR(x bool, y bool) bool {
	return !x && !y
}

func XNOR(x bool, y bool) bool {
	return (x && y) || (!x && !y)
}

// CONVERSIONS

func BIN_TO_DEC(x int) (result int) {
	val := 1;
	stringval := strconv.Itoa(x);
	leng := len(stringval);
	result = 0;

	for leng > 0 {
		if stringval[leng - 1] == '1' {
			result = result + val;
		} else {
			result = result + 0;
		}
		val += val;
		leng--;
	}
	return result;
}

func DEC_TO_BIN(x int) (num int) {
	if x <= 0 {
		return 0;
	}

	result := "";

	for x > 0 {
		if x % 2 == 1 {
			result = "1" + result;
		} else {
			result = "0" + result;
		}
		x = x / 2;
	}
	num, _ = strconv.Atoi(result);
	return num;
}

func DEC_TO_HEX(x int) (result string) {
	inc := 1;
	result = "0x";

	for x >= int(math.Pow(16, float64(inc))) {
		inc++;
	}

	for inc > 0 {
		var val int = x / int(math.Pow(16, float64(inc - 1)));
		
		if val > 9 {
			if val == 10 {
				result = result + "A";
			} else if val == 11 {
				result = result + "B";
			} else if val == 12 {
				result = result + "C";
			} else if val == 13 {
				result = result + "D";
			} else if val == 14 {
				result = result + "E";
			} else if val == 15 {
				result = result + "F";
			}
		} else {
			result = result + strconv.Itoa(val);
		}

		x = x - (int(math.Pow(16, float64(inc - 1))) * val);
		inc--;
	}
	return result;
}

func main() {
  fmt.Println(DEC_TO_HEX(19))
}