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
        <h1>Relatório</h1>
        <div>
            Duração Jurídica: ${duracaoJuridica}<br><br>
            Duração Assistencial: ${duracaoAssistencial}<br><br>
            Duração Financeira: ${duracaoFinanceira}<br><br>
            Duração Executiva: ${duracaoExecutiva}<br><br>
            Duração Total: ${duracaoTotal}<br><br>
        </div>      
        <div >
            <a href="sedeView.html?id=${id}">Voltar</a>    
        </div>      
    </div>

</body>
</html>