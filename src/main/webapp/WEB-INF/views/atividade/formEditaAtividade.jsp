<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/views/cabecalho.jsp" />

<div>
    <div>
        <h1 align="center">Atividades</h1>
    </div>
    <div>
        <form action="formInsercaoAtividadeSubmit.html" method="POST">
            <label>Sede:</label>
            <select name="sede" value="${atividade.getSede().getNome()}" >
                <option value="">...</option>
                <c:forEach var="rep" items="${sedes}">
                    <option value="${rep.getId()}" value="${atividade.getSede().getNome()}">
                        ${rep.getNome()}
                    </option>
                </c:forEach>
            </select>
            <label>Título:</label>
            <input type="text" name="titulo" value="${atividade.getTitulo()}">
            <label>Descrição:</label>
            <input type="text" name="descricao" value="${atividade.getDescricao()}">
            <label>Hora Assistencial:</label>
            <input type="number" name="horaAssistencial" value="${atividade.getHoraAssistencial()}">
            <label>Hora Jurídica:</label>
            <input type="number" name="horaJuridica" value="${atividade.getHoraJuridica()}">
            <label>Hora Executiva:</label>
            <input type="number" name="horaExecutiva" value="${atividade.getHoraExecutiva()}">
            <label>Hora Financeira:</label>
            <input type="number" name="horaFinanceira" value="${atividade.getHoraFinanceira()}">
            <label>Data início:</label>
            <input name="dataInicio" type="text" value="${atividade.getDataInicio()}">
            <label>Data fim:</label>
            <input name="dataFim" type="text" value="${atividade.getDataFim()}">
            <div><br/>
                <button type="submit">Enviar</button>
                <a href="formListAtividade.html">Cancelar</a>
            </div>
        </form>
    </div>
    <div>
        Atividades
    </div>
</div>

<c:import url="/WEB-INF/views/rodape.jsp" />