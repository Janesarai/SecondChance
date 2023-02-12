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
                <!-- Boostrap -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
                <!-- CSS FILE -->
                <link rel="stylesheet" href="css/publicacion.css">
    <title>Detalles masotas</title>
</head>
<body>
    
    <!-- Navbar -->
    <jsp:include page="/WEB-INF/elementos/barraNavegacion.jsp"></jsp:include>
            
    <a href="/">Volver al home</a>
    <h1 class="d-flex justify-content-center" style="font-size: 70px;">Informacion del animal</h1>
    <div class="d-flex justify-content-evenly m-5 py-3 border border-secondary rounded-4" style="background-color: rgb(218, 218, 218);">

        <div style="width: 28%;">
            <h1 class="d-flex justify-content-center" style="font-size: 70px; width: 70%;"><c:out value="${mascota.nombre}"/></h1>
            <ul>
                <li><strong>Edad: </strong><c:out value="${mascota.edad}"/></li>
                <li><strong>Tamaño: </strong><c:out value="${mascota.tamano}"/></li>
                <li><strong>Sexo: </strong><c:out value="${mascota.sexo}"/></li>
                <li><strong>Energia: </strong><c:out value="${mascota.energia}"/>/10</li>
                <li><strong>Personalidad: </strong><c:out value="${mascota.personalidad}"/></li>
                <li><c:out value="${mascota.publicacion.descripcion}"></c:out></li>
            </ul>
            <c:if  test="${userId == publicacion.user.id}">
                <div class="d-flex justify-content-evenly">
                    <a href="/mascota/${id}/borrar" class="btn btn-danger">Borrar</a>
                    <a href="/mascota/${mascota.id}/edit" class="btn btn-primary">Editar Mascota</a>
                </div>
            </c:if>

        </div>
        <div style="width: 28%;">
            <img src="${mascota.ubicacion}" width="500px" alt="${mascota.ubicacion}" class="rounded-4">
        </div>
    </div>

        <!-- Footer -->
        <footer class="footer fixed-down footer-expand-lg bg-dark p-md-3 mt-4">
            <div class="container-fluid ">
                <nav class="row">
                    <a href="" class="col-3 text-reset text-uppercase d-flex align-items-center">
                        <img src="/imagenes/Second Chance.png" width="30%" alt="logo second chance" class="logo mr-2" >
                    </a>
                    <ul class="col-3 list-unstyled">
                        <li class="font-weight-bold text-uppercase">Teléfonos</li>
                        <li><a href="#" class="text-reset">(22) 37825605</a></li>
                        <li><a href="#" class="text-reset">(+569) 83750182</a></li>
                    </ul>
                    <ul class="col-3 list-unstyled">
                        <li class="font-weight-bold text-uppercase">Dirección</li>
                        <li><a href="#" class="text-reset">Av. las rosas comuna La Dehesa</a></li>
                    </ul>
                    <ul class="col-3 list-unstyled">
                        <li class="font-weight-bold text-uppercase">Email</li>
                        <li><a href="#" class="text-reset">secondChance@gmail.com</a></li>
                    </ul>
                </nav>
            </div>
        </footer>
</body>
</html>