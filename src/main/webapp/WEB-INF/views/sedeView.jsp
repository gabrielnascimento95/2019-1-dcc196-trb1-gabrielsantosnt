<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Sede ${sede.nome}</title>
</head>
<body>
    <div>
    
        <h1>Sede ${sede.nome}</h1>

        <div>
            <ul>
                <li>${sede.estado}</li>
                <li>${sede.cidade}</li>
                <li>${sede.bairro}</li>
                <li>${sede.telefone}</li>
                <li>${sede.url}</li>
            </ul>           
        </div>

        <div>
            <form role="form" action="formEditaSede.html?id=${sede.id}" method="POST">
                <input type="submit" value="Editar"/>
            </form>
        </div>
            <div>
                <h2>Membros</h2>
                <ul id="membro" name="membro">      
                    <c:forEach var="membro" items="${sede.membros}">         
                        <li value="${membro.id}"> <a href="formDeletaMembro.html?id=${membro.id}&idSede=${sede.id}"> X 
                        </a> <a href="formEditaMembro.html?id=${membro.id}&idSede=${sede.id}">${membro.nome}</a> 
                    </c:forEach>   
                </ul>      
            </div>

            <div>
                <h2>Atividades </h2>
                <ul id="atividade" name="atividade">      
                    <c:forEach var="atividade" items="${sede.atividades}">         
                        <li value="${atividade.id}"> <a href="formDeletaAtividade.html?id=${atividade.id}&idSede=${sede.id}"> X 
                        </a> <a href="formEditaAtividade.html?id=${atividade.id}&idSede=${sede.id}">${atividade.titulo}</a>
                    </c:forEach>   
                </ul>      
            </div>

        <div>
            <div>
                <a href="formNovoMembro.html?idSede=${sede.id}">Novo Membro</a>
            </div> 
            <div>
                <a href="formNovaAtividade.html?idSede=${sede.id}">Nova Atividade</a>
            </div> 
        </div>
        
        <div>
            <div>
                <a href="relatorioView.html?id=${sede.id}">Relatório</a>
            </div>
            <div>
                <a href="index.html">Voltar</a> 
            </div>
                       
        </div>

    </div>
</body>
</html>