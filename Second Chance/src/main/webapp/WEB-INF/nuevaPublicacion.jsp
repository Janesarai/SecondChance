<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/nuevoNombre.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Add a name</title>
</head>

<body>
    <div class="container">
        <div class="contenedor">
            <h1>Agregar nuevo Nombre</h1>


            <form:form action="/publicacion" method="POST" modelAttribute="nombre">
                <div class="formularioNombre">
                    <p>
                        <form:label class="form-label" path="nombre_mascota">Nombre mascota</form:label>
                        <form:errors path="nombre_mascota" />
                        <form:input class="form-control" type="text" path="nombre_mascota" />
                    </p>
                    <p>
                        <form:label class="form-label" path="tamaño_mascota">Nombre mascota</form:label>
                        <form:errors path="tamaño_mascota" />
                        <form:input class="form-control" type="text" path="tamaño_mascota" />
                    </p>

                    <form:form action="/names/new" method="POST" modelAttribute="tipoDeAnimal">
                        <div class="formularioTipoDeAnimal">
                            <p>
                                <form:label class="form-label" path="tipoDeAnimal">Tipo de animal
                                </form:label>
                                <form:errors path="tipoDeAnimal" />
                                <form:input class="form-control" type="text" path="tipoDeAnimal" />
                            </p>


                            <form:form action="/names/new" method="POST" modelAttribute="personalidad">
                                <div class="formularioTipoDeAnimal">
                            <p>
                                <form:label class="form-label" path="nivel_energia"></form:label>
                                <form:errors path="nivel_energia" />
                                <form:label path="nivel_energia">Nivel Energia</form:label>
                                <select class="form-control" path="nivel_energia" name="nivel_energia">
                                    <option>Bajo</option>
                                    <option>Medio</option>
                                    <option>Alto</option>
                                    <option>Muy alto</option>
                                </select>
                            </p>

                        </div>
                        <p>
                        <div class="mb-3">
                            <form:label class="form-label" path="edad">Origen</form:label>
                            <form:errors path="edad" />
                            <form:input class="form-control" type="text" path="edad" />
                        </div>
                        </p>
                        <p>Descripcion:</p>
                        <p>
                            <textarea class="form-control name=" descripcion" id="" cols="30" rows="10"></textarea>
                        </p>
                        <div class="guardar">
                            <a class="btn btn-primary" href="/home">Cancel</a>
                            <input class="btn btn-primary" type="submit" value="Guardar"/>
                        </div>
                </div>
            </form:form>
        </div>
</body 
</html>