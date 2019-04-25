<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Sede ${sede.nome}</title>
</head>
<body>
    <div>
        <h1>Sede ${sede.nome}</h1>
        <div>
            <ul>
                <li>${sede.estado}</li>
                <li>${sede.cidade}</li>
                <li>${sede.bairro}</li>
                <li>${sede.telefone}</li>
                <li>${sede.url}</li>
            </ul>           
        </div>
        <div>
            <table border="1" style="width:100%">
                <tr>
                    <th><a href="index.html">Home</a></th>
                    <th><a href="formNovoMembro.html?idSede=${sede.id}">Novo Membro</a></th>
                    <th><a href="formNovaAtividade.html?idSede=${sede.id}">Nova Atividade</a></th>
                    <th><a href="relatorioView.html?id=${sede.id}">Relatório</a></th>
                    <th>
                        <form role="form" action="formEditaSede.html?id=${sede.id}" method="POST">
                            <input type="submit" value="Editar"/>
                        </form>
                    </th>
                </tr>
            </table>      
        </div>
            <div>
                <h2>Membros</h2>
                <ul id="membro" name="membro">      
                    <c:forEach var="membro" items="${sede.membros}">         
                        <table border="1" style="width:100%">
                            <tr>
                                <td>${membro.nome}</td>
                                <td>
                                    <table>
                                        <tr>
                                            <td><a href="formDeletaMembro.html?id=${membro.id}&idSede=${sede.id}">Excluir</a></td>
                                            <td><a href="formEditaMembro.html?id=${membro.id}&idSede=${sede.id}">Editar</a></td>    
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </table> 
                    </c:forEach>   
                </ul>      
            </div>
            <div>
                <h2>Atividades </h2>
                <ul id="atividade" name="atividade">      
                    <c:forEach var="atividade" items="${sede.atividades}">
                        <table border="1" style="width:100%">
                            <tr>
                                <td>${atividade.titulo}</td>
                                <td>
                                    <table>
                                        <tr>
                                            <td><a href="formDeletaAtividade.html?id=${atividade.id}&idSede=${sede.id}">Excluir</a></td>
                                            <td><a href="formEditaAtividade.html?id=${atividade.id}&idSede=${sede.id}">Editar</a></td>    
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </c:forEach>   
                </ul>      
            </div>
        <div>  
        </div>
    </div>
</body>
</html>