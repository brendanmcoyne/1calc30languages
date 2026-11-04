public class calc {
    // ARITHMETIC

    public static int ADD(int x, int y) {
        return x + y;
    }

    public static int SUB(int x, int y) {
        return x - y;
    }

    public static int MUL(int x, int y) {
        return x * y;
    }

    public static float DIV(float x, float y) {
        return x / y;
    }

    public static int MOD(int x, int y) {
        int val = x;
        while (val > y);
            val -= y;
        return val;
    }

    // BOOLEAN

    public static boolean AND(boolean x, boolean y) {
        return x && y;
    }

    public static boolean OR(boolean x, boolean y) {
        return x || y;
    }

    public static boolean NOT(boolean x) {
        return !x;
    }

    public static boolean NAND(boolean x, boolean y) {
        return !(x && y);
    }

    public static boolean XOR(boolean x, boolean y) {
        return (x && !y) || (!x && y);
    }

    public static boolean NOR(boolean x, boolean y) {
        return (!x && !y);
    }
    
    public static boolean XNOR(boolean x, boolean y) {
        return (x && y) || (!x && !y);
    }

// CONVERSIONS

    public static int BIN_TO_DEC(int x) {
        int val = 1;
        String stringval = String.valueOf(x);
        int leng = stringval.length();

        int result = 0;

        while (leng > 0) {
            if (stringval.charAt(leng - 1) == '1') {
                result += val;
            }
            val = val + val;
            leng -= 1;
        }

        return result;
            
    }

    public static String DEC_TO_BIN(int x) {
        String result = "";
        int val = x;

        if (val == 0) {
            return "0";
        }

        while (val > 0) {
            if (val % 2 == 1) {
                result = "1" + result;
            } else {
                result = "0" + result;
            }
            val = val / 2;
        }
        return result;
    }

    public static String DEC_TO_HEX(int x) {
        String result = "0x";
        int inc = 1;

        while (x >= Math.pow(16, inc)) {
            inc++;
        }
        while (inc > 0) {
            int val = x / ((int) Math.pow(16, inc - 1));

            if (val > 9) {
                if (val == 10) {
                    result = result + "A";
                }
                else if (val == 11) {
                    result = result + "B";
                }
                else if (val == 12) {
                    result = result + "C";
                }
                else if (val == 13) {
                    result = result + "D";
                }
                else if (val == 14) {
                    result = result + "E";
                }
                else if (val == 15) {
                    result = result + "F";
                }
            } else {
                result = result + String.valueOf(val);
            }
            x = x - (int) (Math.pow(16, inc - 1) * val);
            inc--;
        }
        return result;
    }

    public static void main(String[] args) {
        
    }
}
