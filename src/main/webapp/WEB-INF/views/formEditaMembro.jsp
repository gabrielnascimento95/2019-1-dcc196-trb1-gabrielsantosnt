<%@page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Edita Membro</title>
</head>
<body>
    <div>
        <h1>Edita Membro</h1>
        <form role="form" action="formEditaMembroSubmit.html" method="POST">
            <div>
                <div>
                    <label>Nome </label>
                    <input type="text" id="nome" name="nome" value="${membro.nome}"/>
                </div>
            </div>
            <div>
                <div>
                    <label>Função </label> 
                    <input type="text" id="funcao" name="funcao" value="${membro.funcao}"/>
                </div>
                <div >
                    <label>E-mail </label>
                    <input type="text" id="email" name="email" value="${membro.email}"/>
                </div>
            </div>
            <div>
                <div >
                    <label>Data de Entrada </label>
                    <input type="text" id="dataEntrada" name="dataEntrada" value="${membro.dataEntrada}"/>
                </div>
                <div>
                    <label>Data de Saída </label>
                    <input type="text" id="dataSaida" name="dataSaida" value="${membro.dataSaida}"/>
                </div>
            </div>
            
            <input type="hidden" id="id" name="id" value="${membro.id}"/>

            <input type="hidden" id="idSede" name="idSede" value="${idSede}"/>
            
            <input type="submit" value="Salvar" />
        </form>
    </div>
</body>
</html>