<?php
/** Esquevo um codigo que receba o valor de um produto comprado por
 * um cliente, faça a divisao desse valor em 12 meses e adicione
 * 1% do valor em cada parcela. mostre o valor das parcelas e valor total
 * que sera pago */

 $valor = 1200;

 $juros = $valor * 0.12 ;
 $valortotal = $valor + $juros ; 
 $parcelas = $valortotal / 12 ;
 echo $valortotal."<br>";
 echo $parcelas ;




?>