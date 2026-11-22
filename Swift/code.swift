import Foundation
// ARITHMETIC

func ADD(_ x: Int, _ y: Int) -> Int {
  return x + y
}

func SUB(_ x: Int, _ y: Int) -> Int {
  return x - y
}

func MUL(_ x: Int, _ y: Int) -> Int {
  return x * y
}

func DIV(_ x: Int, _ y: Int) -> Float {
  return Float(x) / Float(y)
}

func MOD(_ x: Int, _ y: Int) -> Int {
  var inc = x
  while inc > y {
    inc = inc - y
  }
  return inc
}

func EXP(_ x: Int, _ y: Int) -> Int {
  var result = 1
  for _ in 1...y {
    result = result * x
  }
  return result
}

//BOOLEAN

func AND(_ x: Bool, _ y: Bool) -> Bool {
  return x && y
}

func OR(_ x: Bool, _ y: Bool) -> Bool {
  return x || y
}

func NOT(_ x: Bool) -> Bool {
  return !x
}

func XOR(_ x: Bool, _ y: Bool) -> Bool {
  return (x && !y) || (!x && y)
}

func NOR(_ x: Bool, _ y: Bool) -> Bool {
  return !x && !y
}

func XNOR(_ x: Bool, _ y: Bool) -> Bool {
  return (!x && !y) || (x && y)
}

func NAND(_ x: Bool, _ y: Bool) -> Bool {
  return !(x && y)
}

// CONVERSION
func BIN_TO_DEC(_ x: Int) -> Int {
  var result = 0
  var val = 1
  let stringval = String(x)
  var leng = stringval.count
  let array = Array(stringval)

  while leng > 0 {
    if array[leng - 1] == "1" {
      result = result + val
    } else {
      result = result + 0
    }
    val = val * 2
    leng = leng - 1
  }
  return result
}

func DEC_TO_BIN(_ x: Int) -> Int {
  if x <= 0 {
    return 0
  }

  var result = ""
  var val = x

  while val > 0 {
    if val % 2 == 1 {
      result = "1" + result
    } else {
      result = "0" + result
    }
    val = val / 2
  }
  let num = Int(result) ?? 0
  return num
}

func DEC_TO_HEX(_ x: Int) -> String {
  var result = "0x"
  var inc = 1
  var startval = x

  while x >= Int(pow(16.0, Double(inc))) {
    inc = inc + 1
  }

  var val = x
  while inc > 0 {
    val = startval / Int(pow(16.0, Double(inc - 1)))

    if val > 9 {
      if val == 10 {
        result = result + "A"
      } else if val == 11 {
        result = result + "B"
      } else if val == 12 {
        result = result + "C"
      } else if val == 13 {
        result = result + "D"
      } else if val == 14 {
        result = result + "E"
      } else if val == 15 {
        result = result + "F"
      }
    } else {
      result = result + String(val)
    }
    startval = startval - (Int(pow(16.0, Double(inc - 1))) * val)
    inc = inc - 1
  }
  return result
}

print(DEC_TO_HEX(19)) 