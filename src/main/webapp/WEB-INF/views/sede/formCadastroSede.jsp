<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/views/cabecalho.jsp" />
<div>
    <div>
        <h1 align="center">Sedes</h1>
    </div>
    <div>
        <form class="text-left" action="formInsercaoSedeSubmit.html" method="POST">
            <label>Nome:</label>
            <input type="text" name="nome">
            <label>Estado:</label>
            <input type="text" name="estado">
            <label>Cidade:</label>
            <input name="cidade" type="text">
            <label>Bairro:</label>
            <input name="bairro" type="text">
            <label>URL:</label>
            <input name="site" type="text">
            <label>Telefone:</label>
            <input name="telefone" type="text">
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