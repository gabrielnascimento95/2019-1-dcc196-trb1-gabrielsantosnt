<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Criando nova sede</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<body>
    <h3>Formulário de cadastro de novo membro</h3>
    <form action="visualizarSedes.html" method="POST"> 
        <label>Nome completo: <input type="text" name="nomeMembro"/></label></br></br>
        <label>Função: <input type="text" name="funcao"/></label></br></br>
        <label>E-mail: <input type="mail" name="emailMembro"/></label></br></br>
        <label>Data Entrada: <input type="date" name="dataEntradaMembro"/></label></br></br>
        <label>Data Saída: <input type="date" name="dataSaidaMebro"/></label></br></br>
        <input type="submit"/>
    </form>
</body>
</html>