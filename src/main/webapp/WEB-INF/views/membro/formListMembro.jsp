<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/views/cabecalho.jsp" />

<div>
    <div>
        <h1 align="center">Membros</h1>
    </div>
    <div>
        <a href="formInsercaoMembro.html" role="button">Adicionar</a><br/><br/>

        <table>
            <tr>
                <th>Sede</th>
                <th>Nome</th>
                <th>Função</th>
                <th>E-mail</th>
                <th>Data entrada</th>
                <th>Data saída</th>
                <th>Ação</th>
            </tr>
            <c:forEach items="${membro}" var="item">
                <tr>
                    <td>${item.getSede().getNome()}</td>
                    <td>${item.getNome()}</td>
                    <td>${item.getFuncao()}</td>
                    <td>${item.getEmail()}</td>
                    <td>${item.getDataEntrada()}</td>
                    <td>${item.getDataSaida()}</td>                    
                    <td>
                        <a href="/editaMembro?id=${rep.getId()}" role="button">Editar</a>
                    </td>
                </tr>
            </c:forEach>
            
        </table>
    </div>
    <div>
        Membros
    </div>
</div>

<c:import url="/WEB-INF/views/rodape.jsp" />