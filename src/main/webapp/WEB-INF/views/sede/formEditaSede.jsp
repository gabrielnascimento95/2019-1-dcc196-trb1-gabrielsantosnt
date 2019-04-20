<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/views/cabecalho.jsp" />
<div>
    <div>
        <h1 align="center">Edita Sedes</h1>
    </div>
    <div>
        <form class="text-left" action="formInsercaoSedeSubmit.html" method="POST">
            <label>Nome:</label>
            <input type="text" name="nome" value="${sede.getNome()}">
            <label>Cidade:</label>
            <input name="cidade" type="text" value="${sede.getCidade()}">
            <label>Bairro:</label>
            <input name="bairro" type="text" value="${sede.getBairro()}">
            <label>Estado:</label>
            <input name="estado" type="text" value="${sede.getEstado()}">
            <label>Telefone:</label>
            <input name="telefone" type="text" value="${sede.getTelefone()}">
            <label>URL:</label>
            <input type="text" name="site" value="${sede.getSite()}">
            <div><br/>
                <button type="submit">Salvar</button>
                <a href="formListSedes.html">Cancelar</a>
            </div>
        </form>
    </div>
    <div>
        Sedes
    </div>
</div>
<c:import url="/WEB-INF/views/rodape.jsp" />