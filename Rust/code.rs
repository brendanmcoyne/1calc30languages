#![allow(non_snake_case)]
#![allow(dead_code)]

// ARITHMETIC

fn ADD(x: i32, y: i32) -> i32 {
    return x + y;
}

fn SUB(x: i32, y: i32) -> i32 {
    return x - y;
}

fn MUL(x: i32, y: i32) -> i32 {
    return x * y;
}

fn DIV(x: i32, y: i32) -> f64 {
    return (x as f64) / (y as f64);
}

fn MOD(x: i32, y: i32) -> i32 {
    let mut inc = x;
    while inc > y {
        inc -= y;
    }
    return inc;
}

fn EXP(x: i32, y: i32) -> i32 {
    let mut result = 1;
    for _ in 0..y {
        result = result * x;
    }
    return result;
}

// BOOLEAN

fn AND(x: bool, y: bool) -> bool {
    return x && y;
}

fn OR(x: bool, y: bool) -> bool {
    return x || y;
}

fn NOT(x: bool) -> bool {
    return !x;
}

fn NOR(x: bool, y: bool) -> bool {
    return !x && !y;
}

fn XOR(x: bool, y: bool) -> bool {
    return (x && !y) || (!x && y);
}

fn XNOR(x: bool, y: bool) -> bool {
    return (x && y) || (!x && !y);
}

fn NAND(x: bool, y: bool) -> bool {
    return !(x && y);
}

// CONVERSIONS

fn BIN_TO_DEC(x: i32) -> i32 {
    let mut val = 1;
    let stringval: String = x.to_string();
    let mut leng: usize = stringval.chars().count();
    let mut result = 0;

    while leng > 0 {
        if stringval.chars().nth(leng - 1) == Some('1') {
            result = result + val;
        } else {
            result = result + 0;
        }
        val = val * 2;
        leng -= 1;
    }
    return result;
}

fn DEC_TO_BIN(x: i32) -> i32 {
    if x <= 0 {
        return 0;
    }

    let mut result = String::new();
    let mut val: i32 = x;

    while val > 0 {
        let placeholder;

        if val % 2 == 1 {
            placeholder = "1".to_string();
            result = format!("{}{}", placeholder, result); 
        } else {
            placeholder = "0".to_string();
            result = format!("{}{}", placeholder, result); 
        }
        val = val / 2;
    }
    let num: i32 = result.parse().unwrap();
    return num;
}

fn DEC_TO_HEX(mut x: i32) -> String {
    let base: i32 = 16;
    let mut inc: u32 = 1;

    while x >= base.pow(inc) {
        inc = inc + 1;
    }

    let mut result = String::new();
    result = format!("{}{}", result, "0x"); 

    while inc > 0 {
        let val;
        val = x / base.pow(inc - 1);

        if val > 9 {
            if val == 10 {
                result = format!("{}{}", result, "A"); 
            } else if val == 11 {
                result = format!("{}{}", result, "B"); 
            } else if val == 12 {
                result = format!("{}{}", result, "C"); 
            } else if val == 13 {
                result = format!("{}{}", result, "D"); 
            } else if val == 14 {
                result = format!("{}{}", result, "E"); 
            } else if val == 15 {
                result = format!("{}{}", result, "F"); 
            }
        } else {
            result = format!("{}{}", result, val.to_string());
        }
        x = x - (base.pow(inc - 1) * val);
        inc = inc - 1;
    }
    return result.to_string();
}

fn main() {
  println!("{}", DEC_TO_HEX(258));
}