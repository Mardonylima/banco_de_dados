<?php
/** Escreva um codigo que receba 3 valores inteiro e os exiba em ordem crescente 'os valores tem que ser diferente' */
$valor1 = 10;
$valor2 = 3;
$valor3 = 14;

if ($valor1 > $valor2 && $valor1 > $valor3 && $valor2 > $valor3){/**a ordem aqui é valor1, valor2 e valor3 */
    echo "primeiro valor é ".$valor1.", o segundo valor é ".$valor2.", e o terceiro valor é".$valor3 ; 
}else if ($valor2 > $valor1 && $valor2 > $valor3 && $valor3 > $valor1){/**a ordem aqui é valor2, valor3 e valor1 */
    echo "primeiro valor é ".$valor2.", o segundo valor é ".$valor3.", e o terceiro valor é ".$valor1 ; 
}else if($valor3 > $valor2 && $valor3 > $valor1 && $valor2 > $valor1){/**a ordem aqui é valor3, valor2 e valor1 */
    echo "primeiro valor é  ".$valor3.", o segundo valor é ".$valor2.", e o terceiro valor é ".$valor1 ; 
}else if($valor1 > $valor3 && $valor1 > $valor2 && $valor3 > $valor2) {/**a ordem aqui é valor1, valor3 e valor2 */
    echo "primeiro valor é  ".$valor1.", o segundo valor é ".$valor3.", e o terceiro valor é ".$valor2 ; 
}else if($valor2 > $valor1 && $valor2 > $valor3 && $valor1 > $valor3){/**a ordem aqui é valor2, valor1 e valor3 */
    echo "primeiro valor é  ".$valor2.", o segundo valor é ".$valor1.", e o terceiro valor é ".$valor3 ; 
}else if($valor3 > $valor1 && $valor3 > $valor2 && $valor1 > $valor2){/**a ordem aqui é  valor3, valor1 e valor 2*/
    echo "primeiro valor é  ".$valor3.", o segundo valor é ".$valor1.", e o terceiro valor é ".$valor2 ; 
}else {
    echo " !!!Deu algo errado!!! ";
}
?> 