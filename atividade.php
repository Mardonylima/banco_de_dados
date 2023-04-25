<?php
/*  escreva um código que receba uma variavel inteira caso esse valor seja positivo, 
imprima na tela todos os números anteriores a ele, se o valor for impar imprimir "O VALOR É impar"*/

$variavel = 20;

if ($variavel %2 == 0 ){
    for ($i =0; $i < $variavel; $i++) {
        echo $i."<br>";
    }
}else{
    echo "o valor é impar";
}
?>