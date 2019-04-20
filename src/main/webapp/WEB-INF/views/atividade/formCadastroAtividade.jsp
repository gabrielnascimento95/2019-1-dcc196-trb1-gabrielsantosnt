<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/views/cabecalho.jsp" />

<div>
    <div>
        <h1 align="center">Atividades</h1>
    </div>
    <div>
        <form class="text-left" action="formInsercaoAtividadeSubmit.html" method="POST">
            <label>Sede:</label>
            <select name="sedes">
                <option value="">...</option>
                <c:forEach var="rep" items="${sedes}">
                    <option value="${rep.getId()}">
                        ${rep.getNome()}
                    </option>
                </c:forEach>
            </select>
            <label>Título:</label>
            <input type="text" name="titulo">
            <label>Descrição:</label>
            <input type="text" name="descricao">
            <label>Hora Assistencial:</label>
            <input type="number" name="horaAssistencial">
            <label>Hora Jurídica:</label>
            <input type="number" name="horaJuridica">
            <label>Hora Executiva:</label>
            <input type="number" name="horaExecutiva">
            <label>Hora Financeira:</label>
            <input type="number" name="horaFinanceira">
            <label>Data início:</label>
            <input name="dataInicio" type="text">
            <label>Data fim:</label>
            <input name="dataFim" type="text">
            <div><br/>
                <button type="submit">Enviar</button>
                <a href="formListAtividade.html">Cancelar</a>
            </div>
        </form>
    </div>
    <div>Atividades</div>
</div>
<c:import url="/WEB-INF/views/rodape.jsp" />