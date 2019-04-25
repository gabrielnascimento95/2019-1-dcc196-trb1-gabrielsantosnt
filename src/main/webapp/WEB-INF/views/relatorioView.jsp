<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Relatório</title>
</head>
<body>
    <div>
        <h1>Relatório Completo</h1>
        <div>
            <ul id="listaSede" name="listaSede">      
                <c:forEach var="item" items="${sedes}">         
                    <li value="${item.id}"> ${sede.nome}     
                </c:forEach>
            </ul>
        </div>
        <div>
            <ul id="listaDuracao" name="listaDuracao">      
                <c:forEach var="item" items="${tempoTotal}">         
                    <li value="${item}"> ${duracao}     
                </c:forEach>
            </ul>
        </div>      
    </div>    
    <div >
        <a href="index.html">Voltar</a>    
    </div>      
</body>
</html>