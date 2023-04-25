<?php
$a = 2;
$b = 5;
$c = 2;

$delta = ($b * $b)- 4 *$a *$c;

$x1 = (($b *-1) + sqrt($delta)) / (2*$a);

$x2 = (($b *-1) - sqrt ($delta)) / (2*$a);

echo $x1;
echo $x2;
?>