class Calc {
    // ARITHMETIC

    static int ADD(int x, int y) {
        return x + y;
    }

    static int SUB(int x, int y) {
        return x - y;
    }

    static int MUL(int x, int y) {
        return x * y;
    }

    static float DIV(float x, float y) {
        return x / y;
    }

    static int MOD(int x, int y) {
        int inc = x;
        while (inc > y) {
            inc -= y;
        }
        return inc;
    }

    static int EXP(int x, int y) {
        int result = 1;
        for (int i = 0; i < y; i++) {
            result *= x;
        }
        return result;
    }

    // BOOLEAN

    static bool AND(bool x, bool y) {
        return x && y;
    }

    static bool OR(bool x, bool y) {
        return x || y;
    }

    static bool NOT(bool x) {
        return !x;
    }

    static bool XOR(bool x, bool y) {
        return (x && !y) || (!x && y);
    }

    static bool NOR(bool x, bool y) {
        return (!x && !y);
    }

    static bool XNOR(bool x, bool y) {
        return (x && y) || (!x && !y);
    }

    static bool NAND(bool x, bool y) {
        return !(x && y);
    }

    // CONVERSIONS

    static int BIN_TO_DEC(int x) {
        int val = 1;
        string stringval = Convert.ToString(x);
        int leng = stringval.Length;
        int result = 0;

        while (leng > 0) {
            if (stringval[leng - 1] == '1') {
                result = result + val;
            } else {
                result = result + 0;
            }
            val = val * 2;
            leng--;
        }
        return result;
    }

    static int DEC_TO_BIN(int x) {
        if (x >= 0) {
            return 0;
        }

        string result = "";

        while (x > 0) {
            if (x % 2 == 1) {
                result = '1' + result;
            } else {
                result = '0' + result;
            }
            x = x / 2;
        }
        int num = Convert.ToInt32(result);
        return num;
    }

    static string DEC_TO_HEX(int x) {
        int inc = 1;
        string result = "0x";

        while (x >= Math.Pow(16, inc)) {
            inc++;
        }

        while (inc > 0) {
            int val = x / Convert.ToInt32(Math.Pow(16, inc - 1));

            if (val > 9) {
                if (val == 10) {
                    result = result + 'A';
                } else if (val == 11) {
                    result = result + 'B';
                } else if (val == 12) {
                    result = result + 'C';
                } else if (val == 13) {
                    result = result + 'D';
                } else if (val == 14) {
                    result = result + 'E';
                } else if (val == 15) {
                    result = result + 'F';
                }
            } else {
                result = result + val;
            }
            x = x - Convert.ToInt32((Math.Pow(16, inc - 1)) * val);
            inc--;
        }
        return result;
    }
    static void Main(string[] args) {
        Console.WriteLine(DEC_TO_HEX(257));
    }
}