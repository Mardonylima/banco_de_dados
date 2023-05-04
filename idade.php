<?php
/** Esqueva um codigo que peceba um valor inteiro em anos, 
 * diga sua idade e informe se é ou nao maior de idade 
 * para anos: 365 dias */

$idade = 20000;
$anos = $idade / 365;
    echo  number_format($anos). "anos" ;
    echo "<br>" ;

if ($anos >= 18){
    echo "você é maior de idade ^^ " ;
}else{
    echo "você é de menor >< ";
}


?>