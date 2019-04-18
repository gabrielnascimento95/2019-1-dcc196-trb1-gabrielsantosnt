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
    <h3>Formulário de cadastro de nova sede</h3>
    <form action="visualizarSedes.html" method="POST"> 
        <label>Nome fantasia: <input type="text" name="nome"/></label></br></br>
        <label>Estado: <input type="text" name="estado"/></label></br></br>
        <label>Cidade: <input type="text" name="cidade"/></label></br></br>
        <label>Bairro: <input type="text" name="bairro"/></label></br></br>
        <label>Telefone: <input type="tel" name="telefone" pattern="[0-9]{4}-[0-9]{4}" required/></label></br></br>
        <label>Endereço WEB: <input type="url" name="site"/></label></br></br>
        <input type="submit"/>
    </form>
</body>
</html>