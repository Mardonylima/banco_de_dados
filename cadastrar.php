<?php

include('conexao.php');

$nome= isset($_POST['nome']) ? $_POST['nome']:'';
$login= isset($_POST['login']) ? $_POST['login']:'';
$senha= isset($_POST['senha']) ? $_POST['senha']:'';

$insert= "INSERT INTO login (nome, login, senha)
VALUES ('$nome', '$login', '$senha')";

$query = mysqli_query($conexao, $insert);

?>

<!DOCTYPE html>
<html lang="br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
     body{
        font-family: Arial, Helvetica, sans-serif;
        background-image: linear-gradient(45deg, purple, white);
    }
    div{
        background-color: rgba(0, 0, 0, 0.8);
        position: absolute;
        top : 50%;
        left: 50%;
        transform:translate(-50%,-50%);
        padding: 80px;
        border-radius: 25px;
        color: white;
    }
    input{
            padding: 15px;
            border: none;
            outline: none;
            font-size: 15px;
            width: 90%;
        }
        button{
            background-color: dodgerblue;
            border: none;
            padding: 15px;
            width: 100%;
            border-radius: 10px;
            color:white;
            font-size: 15px;
        }
        button:hover{
            background-color: deepskyblue;
             cursor: pointer; 
        }
    </style>
</head>
<body>
    <div >
        <h1 >Cadastro Feito</h1>
        <a href="index.php"> <button>Voltar</button> </a>
    </div>
</body>
</html>