<%@page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <title>Exclusão</title>
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
                    <a href="sedeView.html?id=${idSede}" class="nav-item nav-link">Sede</a>
                    <a href="relatorioView.html" class="nav-item nav-link">Relatório</a>
                </div>
            </div>
            <form role="form" action="formEditaSede.html?id=${sede.id}" method="POST">
                <input type="submit" class="btn btn-warning" value="Editar" />
            </form>
            <a href="#"><input type="button" value="Sair" class="btn btn-danger" /></a>
        </nav>
        <br />
        <h3 style="text-align: center">Exclusão de atividade concluída com sucesso!</h3>
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