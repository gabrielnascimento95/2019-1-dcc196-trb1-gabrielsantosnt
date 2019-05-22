<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"rel="stylesheet">
    <title>DCC193 - Trabalho</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
                <img src="https://images.expertmarket.co.uk/wp-content/uploads/2018/11/web-dot-com-thumb-web-design.png"/>
            </div>
            <div class="col-sm-10" style="text-align: center">
                <h3 style="line-height:60px">Gerenciamento de ONGs</h3>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="navbar-collapse collapse" id="navbarMenu">
				<div class="navbar-nav">
					<a href="index.html" class="nav-item nav-link active">Início</a>
					<a href="formNovaSede.html" class="nav-item nav-link">Nova sede</a>
                    <a href="relatorioView.html" class="nav-item nav-link">Relatório</a>
				</div>
			</div>
			<a href="#"><input type="button" value="Sair" class="btn btn-danger" /></a>
        </nav>   
        <h4 style="text-align: center">Painel de controle</h4>
        <table class="table table-striped" id="sede" name="sede">
			<thead class="thead-light">
				<tr style="text-align: center">
					<th>Nome</th>
					<th>Ação</th>
				</tr>
			</thead>
			<tbody style="text-align: center">
                <c:forEach var="sede" items="${sedes}">         
                    <tr>
                        <td>${sede.nome}</td>
                        <td>
                            <a href="sedeView.html?id=${sede.id}"> Visualizar</a>        
                            <a href="formDeletaSede.html?id=${sede.id}">Excluir</a>  
                        </td>
                    </tr>    
                </c:forEach>   
			</tbody>
        </table>
    </div>
    <footer class="page-footer font-small">
        <div class="text-center py-3">
            <a href="mailto:gabriel.nascimento@ice.ufjf.br?Subject=GerenciamentoOngs" 
            target="_top">Gabriel Nascimento</a> | Sistemas de Informação | UFJF
        </div>
    </footer>
    <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="webjars/jquery/2.1.4/jquery.js" type="text/javascript"></script>
</body>
</html>