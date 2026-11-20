<?php
// ARITHMETIC

function ADD($x, $y) {
    return $x + $y;
}

function SUB($x, $y) {
    return $x - $y;
}

function MUL($x, $y) {
    return $x * $y;
}

function DIV($x, $y) {
    return $x / $y;
}

function MOD($x, $y) {
    $inc = $x;
    while ($inc > $y) {
        $inc = $inc - $y;
    }
    return $inc;
}

function EX($x, $y) {
    $result = 1;
    for ($i = 0; $i < $y; $i++) {
        $result = $result * $x;
    }
    return $result;
}

// BOOLEAN

function ANDF($x, $y) {
    return $x and $y;
}

function ORF($x, $y) {
    return $x or $y;
}

function NOTF($x) {
    return !$x;
}

function XORF($x, $y) {
    return $x xor $y;
}

function NAND($x, $y) {
    return !($x and $y);
}

function NOR($x, $y) {
    return !$x and !$y;
}

function XNOR($x, $y) {
    return ($x and $y) or (!$x and !$y);
}

// CONVERSIONS

function BIN_TO_DEC($x) {
    $val = 1;
    $stringval = (string)$x;
    $leng = strlen($stringval);
    $result = 0;

    while ($leng > 0) {
        if ($stringval[$leng - 1] == '1') {
            $result = $result + $val;
        } else {
            $result = $result + 0;
        }
        $val = $val * 2;
        $leng--;
    }
    return $result;
}

function DEC_TO_BIN($x) {
    if ($x <= 0) {
        return 0;
    }

    $result = "";
    $val = $x;

    while ($val > 0) {
        if ($val % 2 == 1) {
            $result = "1" . $result;
        } else {
            $result = "0" . $result;
        }
        $val = (int)($val / 2);
    }
    $num = (int)$result;
    return $num;
}

function DEC_TO_HEX($x) {
    $inc = 1;
    $result = "0x";

    while ($x >= 16 ** $inc) {
        $inc++;
    }

    $val = 0;
    while ($inc > 0) {
        $val = (int)($x / (16 ** ($inc - 1)));
        if ($val > 9) {
            if ($val == 10) {
                $result = $result . "A";
            } elseif ($val == 11) {
                $result = $result . "B";
            } elseif ($val == 12) {
                $result = $result . "C";
            } elseif ($val == 13) {
                $result = $result . "D";
            } elseif ($val == 14) {
                $result = $result . "E";
            } elseif ($val == 15) {
                $result = $result . "F";
            }
        } else {
            $result = $result . $val;
        }
        $x = $x - ((16 ** ($inc - 1)) * $val);
        $inc--;
    }
    return $result;
}

echo DEC_TO_HEX(258);
?>
