<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" >
    <div class="container-fluid">

        <a href="/" class="navbar-brand">
            <img src="/imagenes/Second Chance.png" class="logo" alt="logo home">
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav" style="margin-left: auto;">
            <li class="nav-item">
                <a class="nav-link text-white" aria-current="page" href="/">Inicio</a>
            </li>
            <li class="nav-item" style="display: inline-block;">
                <a class="nav-link text-white" href="/quienesSomos">¿Quiénes somos?</a>
            </li>
            <li class="nav-item" style="display: inline-block;">
                <a class="nav-link text-white" href="como-Adoptar-A-Tu-Mascota">¿Cómo adoptar a tu mascota?</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    ¿Cómo ayudar?
                    </a>
                    <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/dona">Dona</a></li>
                    <li><a class="dropdown-item" href="hazteSocio">Hazte socio</a></li>
                    <li><a class="dropdown-item" href="/fundaciones">Fundaciones</a></li>
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
                        <li><a class="dropdown-item" href="/misesion">Mi sesion</a></li>
                        <li><a class="dropdown-item" href="/adopcion">Crear publicacion</a></li>
                        <li><a class="dropdown-item" href="/salir">Cerrar sesión</a></li>
                    </ul>
                </c:if>
            </li>
            </ul>
        </div>
    </div>
</nav>
