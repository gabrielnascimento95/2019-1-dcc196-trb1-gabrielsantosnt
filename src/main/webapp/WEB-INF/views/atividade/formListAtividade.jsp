<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/views/cabecalho.jsp" />

<div>
    <div>
        <h1 align="center">Atividades</h1>
    </div>
    <div>
        <a href="formInsercaoAtividade.html" role="button">Adicionar
        </a><br/><br/>

        <table>
            <tr>
                <th>Sede</th>
                <th>Título</th>
                <th>Descrição</th>
                <th>Data início</th>
                <th>Data fim</th>
                <th>Hora Assistencial</th>
                <th>HoraJurídica</th>
                <th>HoraExecutiva</th>
                <th>HoraFinanceira</th>
                <th>Ações</th>
            </tr>
            <c:forEach items="${atividade}" var="rep">
                <tr>
                    <td>${rep.getSede().getNome()}</td>
                    <td>${rep.getTitulo()}</td>
                    <td>${rep.getDescricao()}</td>
                    <td>${rep.getDataInicio()}</td>
                    <td>${rep.getDataFim()}</td>                                     
                    <td>${rep.getHoraAssistencial()}</td>                                     
                    <td>${rep.getHoraJuridica()}</td>                                     
                    <td>${rep.getHoraExecutiva()}</td>                                     
                    <td>${rep.getHoraFinanceira()}</td>                                     
                    <td>
                        <a href="/editaAtividade?id=${rep.getId()}" role="button">Editar
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div>
        Atividades
    </div>
</div>
<c:import url="/WEB-INF/views/rodape.jsp" />