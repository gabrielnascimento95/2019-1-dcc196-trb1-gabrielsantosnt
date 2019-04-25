<%@page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Novo Membro</title>
    <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
</head>
<body>
    <script>
        $(document).ready(function () { 
            document.getElementById("idSede").value = "${idSede}";
        });
    </script>
    <div>
        <h1>Novo Membro</h1>
        <form role="form" action="formNovoMembroSubmit.html" method="POST">
            <div>
                <div>
                    <label>Nome </label>
                    <input type="text" id="nome" name="nome"/>
                </div>
            </div>
            <div>
                <div>
                    <label>Função </label> 
                    <input type="text" id="funcao" name="funcao"/>
                </div>
                <div>
                    <label>E-mail </label>
                    <input type="text" id="email" name="email"/>
                </div>
            </div>
            <div >
                <div>
                    <label>Data de Entrada </label>
                    <input type="text" id="dataEntrada" name="dataEntrada"/>
                </div>
                <div >
                    <label>Data de Saída </label>
                    <input type="text" id="dataSaida" name="dataSaida"/>
                </div>
            </div>
            <input type="hidden" id="idSede" name="idSede"/>
            <input type="submit" value="Salvar" />
        </form>
    </div>
</body>
</html>