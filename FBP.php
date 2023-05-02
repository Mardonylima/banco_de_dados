<?php
/* escreva um codigo que receba um valor inteiro e exiba a palavra "FPB" em ordem cresente de linhas e colunas */

$fpb = "<br>FPB";
$valor = 5;
for ($i = 1; $i <= $valor; $i++){
    echo $fpb;
    $fpb .= " FPB";/** O '.=' serve pra concatenação */
}  
?>