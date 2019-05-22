<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <title>Sede ${sede.nome}</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
                <img
                    src="https://images.expertmarket.co.uk/wp-content/uploads/2018/11/web-dot-com-thumb-web-design.png" />
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
                    <a href="index.html" class="nav-item nav-link">Início</a>
                    <a href="formNovoMembro.html?idSede=${sede.id}" class="nav-item nav-link">Nova membro</a>
                    <a href="formNovaAtividade.html?idSede=${sede.id}" class="nav-item nav-link">Nova atividade</a>
                    <a href="relatorioView.html" class="nav-item nav-link">Relatório</a>
                </div>
            </div>
            <a href="#"><input type="button" value="Sair" class="btn btn-danger" /></a>
        </nav>
        <br/>
        <h3 style="text-align: center">Sede - ${sede.nome}</h3>
        <div class="row">
            <div class="col-sm-6">
                <ul class="list-group">
                    <li class="list-group-item"><b>Estado: </b>${sede.estado}</li>
                    <li class="list-group-item"><b>Cidade: </b>${sede.cidade}</li>
                    <li class="list-group-item"><b>Bairro: </b>${sede.bairro}</li>
                </ul>
            </div>
            <div class="col-sm-6">
                    <li class="list-group-item"><b>Telefone: </b>${sede.telefone}</li>
                    <li class="list-group-item"><b>URL: </b>${sede.url}</li>
                    <li class="list-group-item">
                        <form role="form" action="formEditaSede.html?id=${sede.id}" method="POST">
                            <input type="submit" class="btn btn-warning" value="Editar" />
                        </form>
                    </li>
            </div>
        </div>
        <h4 style="text-align: center">Membros</h4>
        <table class="table table-striped" id="membros" name="membros">
            <thead class="thead-light">
                <tr style="text-align: center">
                    <th>Nome</th>
                    <th>Ação</th>
                </tr>
            </thead>
            <tbody style="text-align: center">
                <c:forEach var="membro" items="${sede.membros}">
                    <tr>
                        <td>${membro.nome}</td>
                        <td>
                            <a href="formEditaMembro.html?id=${membro.id}&idSede=${sede.id}"
                                class="btn btn-warning">Editar</a>
                            <a href="formDeletaMembro.html?id=${membro.id}&idSede=${sede.id}"
                                class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <h4 style="text-align: center">Atividades</h4>
        <table class="table table-striped" id="atividades" name="atividades">
            <thead class="thead-light">
                <tr style="text-align: center">
                    <th>Descrição</th>
                    <th>Ação</th>
                </tr>
            </thead>
            <tbody style="text-align: center">
                <c:forEach var="atividade" items="${sede.atividades}">
                    <tr>
                        <td>${atividade.titulo}</td>
                        <td>
                            <a href="formEditaAtividade.html?id=${atividade.id}&idSede=${sede.id}"
                                class="btn btn-warning">Editar</a>
                            <a href="formDeletaAtividade.html?id=${atividade.id}&idSede=${sede.id}"
                                class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <footer class="page-footer font-small">
        <div class="text-center py-3">
            <a href="mailto:gabriel.nascimento@ice.ufjf.br?Subject=GerenciamentoOngs" target="_top">Gabriel
                Nascimento</a> | Sistemas de Informação | UFJF
        </div>
    </footer>
    <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="webjars/jquery/2.1.4/jquery.js" type="text/javascript"></script>
</body>

</html>