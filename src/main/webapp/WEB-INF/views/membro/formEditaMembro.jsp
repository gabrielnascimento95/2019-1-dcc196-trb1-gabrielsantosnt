<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/views/cabecalho.jsp" />

<div>
    <div>
        <h1 align="center">Membros</h1>
    </div>
    <div>
        <form action="formInsercaoMembroSubmit.html" method="POST">
            <label>Sede:</label>
            <select name="sede"value="${membro.getSede().getNome()}">
                <option value="">...</option>
                <c:forEach var="item" items="${sede}">
                    <option value="${item.getId()}">
                        ${item.getNome()}
                    </option>
                </c:forEach>
            </select>
            <label>Nome:</label>
            <input type="text" name="nome" value="${membro.getNome()}">
            <label>Função:</label>
            <input type="text" name="funcao" value="${membro.getFuncao()}">
            <label>Email:</label>
            <input type="email" name="email" type="text" value="${membro.getEmail()}">
            <label>Data Entrada:</label>
            <input name="data_entrada" type="text" value="${membro.getDataEntrada()}">
            <label>Data Saída:</label>
            <input name="data_saida" type="text" value="${membro.getDataSaida()}">
            <div><br/>
                <button type="submit">Salvar</button>
                <a href="formListMembro.html">Cancelar</a>
            </div>
        </form>
    </div>
    <div>
        Membros
    </div>
</div>

<c:import url="/WEB-INF/views/rodape.jsp" />