<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Ejemplo de JdbcTemplate</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <center>
                    <h1>Listado de estudiantes</h1>
                </center>
                <hr />
               
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Id de estudiante</th>
                            <th>Nombre Completo</th>
                            <th>Correo electronico</th>
                            <th>Codigo de carnet</th>
                            <th>Editar/Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${datos}" var="dato">
                            <tr>
                                <td><c:out value="${dato.id}" /></td>
                                <td><c:out value="${dato.nombre}" /></td>
                                <td><c:out value="${dato.correo}" /></td>
                                <td><c:out value="${dato.telefono}" /></td>
                                <td>
                                    <a href="<c:url value="edit.htm?id=${dato.id}" />" class="btn btn-default"> Editar</a>
                                    <a href="<c:url value="delete.htm?id=${dato.id}" />" class="btn btn-default"> Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <p>
                <center><a href="<c:url value="add.htm" />" class="btn btn-default"> Agregar</a></center>
                </p>
            </div>
            
        </div>
    </body>
</html>
