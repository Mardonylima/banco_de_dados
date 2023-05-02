<?php
//* escreva um codigo que receba um número inteiro e faça a soma de todos os valores anteriores a ele. *//

$valor = 5;
$soma = 0;
for($i=1; $i<=$valor; $i++){
$soma += $i; /* O '+=' significa que ela vai somar um valor de uma variavel e acrecentar mais um da variavel seguinte*/
} echo $soma;

?>