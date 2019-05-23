<%@page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <title>Editar Atividade</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
    <script>
        $(document).ready(function () {
            $("#categoria").val("${atividade.categoria}");
        });
    </script>
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
                    <a href="relatorioView.html" class="nav-item nav-link">Relatório</a>
                </div>
            </div>
            <a href="#"><input type="button" value="Sair" class="btn btn-danger" /></a>
        </nav>
        <form role="form" action="formEditaAtividadeSubmit.html" method="POST">
            <div class="form-group">
                <label for="titulo">Título</label>
                <input type="text" class="form-control" id="titulo" name="titulo" value="${atividade.titulo}"
                    aria-describedby="helpNome">
                <small id="helpNome" class="form-text text-muted">Digite um título breve.</small>
            </div>
            <div class="form-group">
                <label for="descricao">Descrição</label>
                <input type="text" class="form-control" id="descricao" name="descricao" value="${atividade.descricao}">
            </div>
            <div class="form-group">
                <label for="dataInicio">Data Início</label>
                <input type="text" class="form-control" id="dataInicio" name="dataInicio"
                    value="${atividade.dataInicio}">
            </div>
            <div class="form-group">
                <label for="dataFim">Data Fim</label>
                <input type="text" class="form-control" id="dataFim" name="dataFim" value="${atividade.dataFim}">
            </div>
            <div class="form-group">
                <label for="duracao">Duração </label>
                <input type="text" class="form-control" id="duracao" name="duracao" value="${atividade.duracao}" />
            </div>
            <div class="form-group">
                <label for="categoria">Categoria </label>
                <select type="text" id="categoria" name="categoria" class="form-control">
                    <option value="Juridica">Jurídica </option>
                    <option value="Assistencial">Assistencial </option>
                    <option value="Financeira">Financeira </option>
                    <option value="Executiva">Executiva </option>
                </select>
            </div>
            <input type="hidden" id="id" name="id" value="${atividade.id}" />
            <input type="hidden" id="idSede" name="idSede" value="${idSede}" />
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
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