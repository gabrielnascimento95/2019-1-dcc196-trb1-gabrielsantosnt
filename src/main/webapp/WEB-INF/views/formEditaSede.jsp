<%@page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Editar Sede</title>
</head>
<body>
    
    <div>
        <h1>Editar Sede</h1>
        <form role="form" action="formEditaSedeSubmit.html" method="POST">
            <div>
                <div>
                    <label>Nome </label>
                    <input type="text" id="nome" name="nome"/>
                </div>
            </div>
            <div>
                <div>
                    <label>Estado </label> 
                    <input type="text" id="estado" name="estado"/>
                </div>
                <div>
                    <label>Cidade </label>
                    <input type="text" id="cidade" name="cidade"/>
                </div>
                <div>
                    <label>Bairro </label>
                    <input type="text" id="bairro" name="bairro"/>
                </div>
            </div>
            <div>
                <div>
                    <label>Telefone </label>
                    <input type="text" id="telefone" name="telefone"/>
                </div>
                <div>
                    <label>Url</label>
                    <input type="text" id="url" name="url"/>
                </div>
            </div>
            <input type="hidden" id="id" name="id"/>
            <input type="submit" value="Salvar"/>
        </form>
    </div>
</body>
</html>