<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Publicacion</title>
</head>
<body>
    <div class="container-sm">
        <h1>EditarPublicacion</h1>
        <a href="/" class="col-auto">Volver al home</a>
        <br>
        <form:form action="" method="post" modelAttribute="publicacion">
        <input type="hidden" name="_method" value="put">
                <p>
                    <form:label path="titulo">titulo</form:label>
                    <form:errors path="titulo"/>
                    <form:input path="titulo"  class="form-control"/>
            </p>
            <p>
                    <form:label path="descripcion">descripcion</form:label>
                    <form:errors path="descripcion"/>
                    <form:input path="descripcion" />
                    
            </p>
            </p>
                <form:label path="ciudad">Ciudad</form:label>
                    <form:select path="ciudad">
                        <c:forEach items="${ciudad}" var="ciudades">
                            <form:option value="${ciudades.id}">
                                <c:out value="${ciudades.nombre}"/>
                            </form:option>
                        </c:forEach>
                    </form:select>
    <p>
    <form:label path="ciudad">Region</form:label>
        <form:select path="ciudad">
            <c:forEach items="${region}" var="regiones">
                <form:option value="${regiones.id}">
                    <c:out value="${regiones.nombre}"/>
                </form:option>
            </c:forEach>
        </form:select>
    </p>
            <input type="submit" value="submit"/>
            <a href="/" class="btn btn-primary">cancel</a>
        </form:form>

        <a href="/mascota/{mascota.id}/edit">editar mascota</a>
    </div>
</body> 
</html>