<?php
/** escrava um codigo que calcule o imc. para isso, precisremos de 2 variaveis, peso e altura. 
 * o calculo do imc é feito com a seguinte formula: imc = peso / altura * altura 
 * imforma o imc e seu resultado. para:
 * imc < 18.5 (abaixo do peso)
 * imc >=18.5 e imc = < 25 (peso ideal)
 * imc >= 25 e imc = <=30 (sobrepeso)
 * imc > 30 (obesidade)
*/

$peso = 65;
$altura = 1.71; 

$imc = $peso / ($altura*$altura) ;

if ($imc <18.5){
    echo "abaixo do peso";
}else if ($imc >=18.5 and $imc <= 25 ){
    echo "peso ideal";
}else if($imc >=25 and $imc <=30){
    echo "sobrepeso";
}else {
    echo "obesidade";
}
?>