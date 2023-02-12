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
    <div class="">
            <!-- Navbar -->
            <nav class="navbar  navbar-expand-lg navbar-dark p-md-3" style="background-color: black;">
                <div class="container-fluid">
                    <a href="#" class="navbar-brand">
                        <img src="/imagenes/Second Chance.png" width="30%" class="logo" alt="logo home">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav" style="margin-left: auto;">
                        <li class="nav-item">
                            <a class="nav-link text-white" aria-current="page" href="#">Inicio</a>
                        </li>
                        <li class="nav-item" style="display: inline-block;">
                            <a class="nav-link text-white" href="/quienesSomos">¿Quiénes somos?</a>
                        </li>
                        <li class="nav-item" style="display: inline-block;">
                            <a class="nav-link text-white" href="#">¿Cómo adoptar a tu mascota?</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                ¿Cómo ayudar?
                                </a>
                                <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Dona</a></li>
                                <li><a class="dropdown-item" href="#">Hazte socio</a></li>
                                <li><a class="dropdown-item" href="#">Fundaciones</a></li>
                                </ul>
                        </li>

                            <c:if test="${userId == null}">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person-fill"></i>
                                    Bienvenido
                                    </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="/iniciasesion/registrate">Registro/Inicio</a></li>
                                </ul>
                            </c:if>
                            <c:if test="${userId != null}">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person-fill"></i>
                                    <c:out value="${user.nombre}"></c:out>
                                    </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Mi perfil</a></li>
                                    <li><a class="dropdown-item" href="/adopcion">Crear publicacion</a></li>
                                    <li><a class="dropdown-item" href="/salir">Cerrar sesión</a></li>
                                </ul>
                            </c:if>

                        </li>
                        </ul>
                    </div>
                </div>
            </nav>
    </div>
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