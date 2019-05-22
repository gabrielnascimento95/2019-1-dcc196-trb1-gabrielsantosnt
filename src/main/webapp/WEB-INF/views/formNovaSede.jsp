<%@page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <title>Nova Sede</title>
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
                    <a href="relatorioView.html" class="nav-item nav-link">Relatório</a>
                </div>
            </div>
            <a href="#"><input type="button" value="Sair" class="btn btn-danger" /></a>
        </nav>
        <br/>
        <h3>Cadastro - Nova Sede</h3>
        <form role="form" action="formNovaSedeSubmit.html" method="POST">
            <div class="form-group">
                <label for="nome">Nome</label>
                <input type="text" class="form-control" id="nome" name="nome" aria-describedby="helpNome"
                    placeholder="Nome da sede">
                <small id="helpNome" class="form-text text-muted">Digite o nome conforme registro federal.</small>
            </div>
            <div class="form-group">
                <label for="estado">Estado</label>
                <input type="text" class="form-control" id="estado" name="estado" placeholder="Estado">
            </div>
            <div class="form-group">
                <label for="cidade">Cidade</label>
                <input type="text" class="form-control" id="cidade" name="cidade" placeholder="Bairro">
            </div>
            <div class="form-group">
                <label for="bairro">Bairro</label>
                <input type="text" class="form-control" id="bairro" name="bairro" placeholder="Bairro ">
            </div>
            <div class="form-group">
                <label for="telefone">Telefone</label>
                <input type="text" class="form-control" id="telefone" name="telefone" placeholder="Telefone fixo">
            </div>
            <div class="form-group">
                <label for="url">URL</label>
                <input type="text" class="form-control" id="url" name="url" placeholder="URL">
            </div>
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