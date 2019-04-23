<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>DCC193 - Trabalho</title>
</head>
<body>
    <div>
    
        <h1>Gerenciamento de ONGS</h1>

        <div>
            <div>
                    <a href="formNovaSede.html">Nova</a>    
            </div>      
        </div>
    
        <div class="form-group"> 

        <h2>Sedes </h2>
            <ul id="sede" name="sede">      
                <c:forEach var="sede" items="${sedes}">         
                    <li value="${sede.id}">  <a href="formDeletaSede.html?id=${sede.id}"> X 
                    </a> <a href="sedeView.html?id=${sede.id}"> ${sede.nome} </a>    
                </c:forEach>   
            </ul>      
        </div>

    
        

    </div>

</body>
</html>