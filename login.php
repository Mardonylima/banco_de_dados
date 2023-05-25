<!DOCTYPE html>
<html lang="br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <style>
        body{
            font-family: arial, helvetica, sans-serif;
            background-image: linear-gradient(45deg, pink, black ); 
            /** esse código aqui serve pra mudar a cor da página */
        }
        div{
            background-color: rgba(0, 0, 0, 0.8);
            position: absolute;
            top : 50%;
            left: 50%;
            transform:translate(-50%,-50%);
            padding: 80px;
            border-radius: 15px;
            color: white;  
            /** todo esse código serve pra centralizar a div e organizar em tamanhos e cores */
        }
        input{
            padding: 15px;
            border: none;
            outline: none;
            font-size: 15px;
            width: 90%;
            /** esse código aqui serve pra arredondar, aumentar ou diminuir a fonte, e tirar as bordas
             todos os inputs ta tela*/
        }
        button{
            background-color: dodgerblue;
            border: none;
            padding: 15px;
            width: 100%;
            border-radius: 10px;
            color:white;
            font-size: 15px;
            /** esse código aqui serve pra escolher uma cor de fundo pra o botão ENVIAR, tirar as bordas, arredondar,
            aumentar o botão e escolher uma cor para o nome detro do botão */
        }
        button:hover{
            background-color: deepskyblue;
             cursor: pointer; 
            /** esse código serve pra colocar outra cor ao botão e mudar cursor quando o usuario 
            passar a cursor no botão ENVIAR */
        }

    </style>
</head>
<body>
    <div> 
        <h1> bem-vindo </h1> <br> 
        <form id="login" action="logado.php" method="POST"> 
            login: <input type="text" name="login" > <br> <br>
            senha: <input type="password" name="senha" > <br> <br>
            <button>ENVIAR</button> 
        </forms>
    </div>
    
</body>
</html>