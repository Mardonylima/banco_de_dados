<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pop-upTeste</title>
    <script>
        function minhafuncao() {
            var x;
            var r = confirm("clique em ok para cancelar")
            if (r == true){
                x = "você clicou em ok"
            }else {
                x = "você clicou em cancelar"
            }
            document.getElementbyId("demo").innerHTML = x ;
        }
    </script>
</head>
<body>

    <button onclick="minhafuncao()">clique em mim </button>
</body>
</html>