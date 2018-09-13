<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Hola desde Spring Web MVC</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">

            <div class="panel panel-primary">
                <div class="panel-default">Editar</div>
                <div class="panel-body">
                   
                        <form:form method="post" commandName="usuarios">
                            <center>
                                <h1>Editar estudiante</h1>
                            </center>
                            
                            <form:errors path="*" element="div" cssClass="alert alert-danger" />
                            
                            <p>
                                <form:label path="nombre">Nombre:</form:label>
                                <form:input path="nombre" cssClass="form-control" />
                                
                            </p>
                            
                            <p>
                                <form:label path="correo">Correo electrónico</form:label>
                                <form:input path="correo" cssClass="form-control" />
                            </p>
                            
                            <p>
                                <form:label path="telefono">Codigo de carnet</form:label>
                                <form:input path="telefono" cssClass="form-control" />
                            </p>
                            <hr />
                            <center>
                                <input type="submit" value="Enviar" class="btn btn-default" />
                            </center>
                            
                        </form:form>
                </div>
            </div>
        </div>
            <ol class="default">
                <li><a href="<c:url value="/home.htm" />">Listado de productos</a></li>
                <li class="active">Editar estudiante</li>
            </ol>
    </body>
</html>
