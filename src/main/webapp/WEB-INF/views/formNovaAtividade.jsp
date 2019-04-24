<%@page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Nova Atividade</title>
</head>
<body>
    <div>
        <h1>Nova Atividade</h1>
        <form role="form" action="formNovaAtividadeSubmit.html" method="POST">
            <div>
                <div >
                    <label>Título </label>
                    <input type="text" id="titulo" name="titulo"/>
                </div>
                <div >
                    <label>Descrição</label> 
                    <input type="text" id="descricao" name="descricao"/>
                </div>
            </div>
            <div >           
                <div >
                    <label>Data de Início </label>
                    <input type="text" id="dataInicio" name="dataInicio"/>
                </div>
                <div >
                    <label>Data de Fim </label>
                    <input type="text" id="dataFim" name="dataFim"/>
                </div>
                <div >
                    <label>Duração </label>
                    <input type="text" id="duracao" name="duracao"/>
                </div>    
            </div>
            <div>
                <div >
                    <label>Categoria </label>
                    <select type="text" id="categoria" name="categoria">
                        <option value="Juridica">Jurídica </option>
                        <option value="Assistencial">Assistencial </option>
                        <option value="Financeira">Financeira </option>
                        <option value="Executiva">Executiva </option>
                    </select>
                </div>
            </div>
            <input type="hidden" id="idSede" name="idSede"/>
            <input type="submit" value="Salvar" />
        </form>
    </div>
</body>
</html>