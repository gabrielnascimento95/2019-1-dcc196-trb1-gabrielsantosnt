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
    <h3>Formulário de cadastro de nova atividade</h3>
    <form action="visualizarSedes.html" method="POST"> 
        <label>Título: <input type="text" name="tituloAtividade"/></label></br></br>
        <label>Descrição: <input type="text" name="descricaoAtividade"/></label></br></br>
        <label>Data Início: <input type="date" name="dataInicioAtividade"/></label></br></br>
        <label>Data Fim: <input type="date" name="dataFimAtividade"/></label></br></br>
        <table id="atividade">
            <tr>
                <th>Atividades</th>
                <th>Horas</th>
                <th>Jurídica</th>
                <th>Financeira</th>
                <th>Executiva</th>
            </tr>
            <tr>
                <td>
                    <select name="tipoAtividade">
                        <option value="0">Assistencial</option>
                        <option value="1">Jurídica</option>
                        <option value="2">Financeira</option>
                        <option value="3">Executiva</option>
                    </select>
                </td>
                <td><input type="number" name="horaAtividade"></td>
            </tr>
        </table>
        <input type="submit"/>
    </form>
</body>
</html>