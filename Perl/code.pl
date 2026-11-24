##### ARITHMETIC #####

sub ADD {
    my ($x, $y) = @_;
    return $x + $y;
}

sub SUB {
    my ($x, $y) = @_;
    return $x - $y;
}

sub MUL {
    my ($x, $y) = @_;
    return $x * $y;
}

sub DIV {
    my ($x, $y) = @_;
    return $x / $y;
}

sub MOD {
    my ($x, $y) = @_;
    $inc = $x;
    while ($inc > $y) {
        $inc = $inc - $y;
    }
    return $inc;
}

sub EXP {
    my ($x, $y) = @_;
    $result = 1;
    for ($i = 0; $i < $y; $i++) {
        $result = $result * $x;
    }
    return $result;
}

##### BOOLEAN #####

sub AND {
    my ($x, $y) = @_;
    return $x && $y;
}

sub OR {
    my ($x, $y) = @_;
    return $x || $y;
}

sub XOR {
    my ($x, $y) = @_;
    return ($x && ~$y) || (~$x && $y);
}

sub NOR {
    my ($x, $y) = @_;
    return ~$x && ~$y;
}

sub XNOR {
    my ($x, $y) = @_;
    return ($x && $y) || (~$x && ~$y);
}

sub NAND {
    my ($x, $y) = @_;
    return ~($x && $y);
}

sub NOT {
    my ($x) = @_;
    return ~($x);
}

##### CONVERSIONS #####

sub BIN_TO_DEC {
    my ($x) = @_;
    $val = 1;
    $stringval = "$x";
    $leng = length($stringval);
    $result = 0;

    while ($leng > 0) {
        if (substr($stringval, $leng - 1, 1) == "1") {
            $result = $result + $val;
        } else {
            $result = $result + 0;
        }
        $val = $val * 2;
        $leng = $leng - 1;
    }
    return $result;
}

sub DEC_TO_BIN {
    my ($x) = @_;

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
        $val = int($val / 2);
    }
    $num = int($result);
    return $num; 
}

sub DEC_TO_HEX {
    my ($x) = @_;
    $inc = 1;
    $result = "0x";

    while ($x >= 16 ** $inc) {
        $inc = $inc + 1;
    }

    while ($inc > 0) {
        $val = int($x / (16 ** ($inc - 1)));

        if ($val > 9) {
            if ($val == 10) {
                $result = $result . "A";
            } elsif ($val == 11) {
                $result = $result . "B";
            } elsif ($val == 12) {
                $result = $result . "C";
            } elsif ($val == 13) {
                $result = $result . "D";
            } elsif ($val == 14) {
                $result = $result . "E";
            } elsif ($val == 15) {
                $result = $result . "F";
            }
        } else {
            $result = $result . "$val";
        }
        $x = $x - ((16 ** ($inc - 1)) * $val);
        $inc = $inc - 1;
    }
    return $result;
}
print DEC_TO_HEX(258);