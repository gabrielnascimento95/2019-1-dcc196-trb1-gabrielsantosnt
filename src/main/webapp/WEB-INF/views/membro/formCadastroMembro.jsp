<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/views/cabecalho.jsp" />
<div>
    <div>
        <h1 align="center">Membros</h1>
    </div>
    <div>
        <form class="text-left" action="formInsercaoMembroSubmit.html" method="POST">
            <label>Sede:</label>
            <select name="sede">
                <option value="">...</option>
                <c:forEach var="rep" items="${sedes}">
                    <option value="${rep.id}">
                        ${rep.getNome()}
                    </option>
                </c:forEach>
            </select>
            <label>Nome:</label>
            <input type="text" name="nome">
            <label>Função:</label>
            <input type="text" name="funcao">
            <label>Email:</label>
            <input type="email" name="email" type="text">
            <label>Data entrada:</label>
            <input name="dataEntrada" type="text">
            <label>Data saída:</label>
            <input name="dataSaida" type="text">
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