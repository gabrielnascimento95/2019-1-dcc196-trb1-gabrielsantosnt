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
    </div>
    <div>
    <table border="1" style="width:100%">
        <tr>
            <th><a href="index.html">Home</a></th>
        </table>  
    </div>
        <div>
        <ul id="sede" name="sede">      
            <c:forEach var="sede" items="${sedes}">         
                <li value="${sede.id}"> ${sede.nome}     
            </c:forEach>
        </ul>
        </div>
        <div >
        <ul id="tempoTotal" name="tempoTotal">      
            <c:forEach var="tempo" items="${tempoTotal}">         
                <li value="${tempo}"> ${tempo} minuto(s)    
            </c:forEach>
        </ul>
        </div>      
    </div>
          
</body>
</html>