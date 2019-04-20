<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/views/cabecalho.jsp" />

<div>
    <div>
        <h1 align="center">Sedes</h1>
    </div>
    <div>
        <a href="formInsercaoSede.html" role="button">Nova</a><br/><br/>

        <table class="table">
            <tr>
                <th>Nome</th>
                <th>Cidade</th>
                <th>Bairro</th>
                <th>Estado</th>
                <th>Telefone</th>
                <th>URL</th>
                <th>Ações</th>
            </tr>

            <c:forEach items="${sede}" var="itens">
                <tr>
                    <td>${itens.getNome()}</td>
                    <td>${itens.getCidade()}</td>
                    <td>${itens.getBairro()}</td>
                    <td>${itens.getEstado()}</td>
                    <td>${itens.getTelefone()}</td>
                    <td>${itens.getSite()}</td>
                    <td>
                        <a href="/editarSede?id=${rep.getId()}" role="button">Editar</a>
                        <a href="/excluirSede?id=${rep.getId()}" role="button">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div>
        Sedes
    </div>
</div>

<c:import url="/WEB-INF/views/rodape.jsp" />