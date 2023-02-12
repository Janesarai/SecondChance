<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>



<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>adopcion demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- CSS FILE -->
    <link rel="stylesheet" href="css/adopcion.css">

  </head>
  <body>

     <!-- Navbar -->
     <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3"  >
        <div class="container-fluid">
            <a href="#" class="navbar-brand">
                <img src="imagenes/Second Chance.png" class="logo" alt="logo home">
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
                    <a class="nav-link text-white" href="como-Adoptar-A-Tu-Mascota">¿Cómo adoptar a tu mascota?</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        ¿Como ayudar?
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


<!-- Formulario -->
<form:form method="post" action="/adopcion" modelAttribute="mascota" enctype="multipart/form-data">

<div class="wrapper">
	<div class="header">
		<ul style="list-style: none;">
			<li class="active form_1_progessbar">
				<div>
					<p>1</p>
				</div>
			</li>
			<li class="form_2_progessbar">
				<div>
					<p>2</p>
				</div>
			</li>
			<li class="form_3_progessbar">
				<div>
					<p>3</p>
				</div>
			</li>
		</ul>
	</div>
	<div class="form_wrap">
		<div class="form_1 data_info">
			<h2>Información de la Mascota</h2>
				<div class="form_container">
					<div class="input_wrap">
						<form:label id="label" path="nombre">Nombre de la mascota:</form:label>
                        <form:errors path="nombre"/>
						<form:input class="input" path="nombre" type="text" id="nombre"/>
                    </div>
					<div class="input_wrap">
						<form:label id="label" path="tamano">Tamaño:</form:label>
						<form:errors path="tamano"/>
						<select class="input" name="tamano" id="tamano">
							<option value="pequeño">Pequeño</option>
							<option value="mediano">Mediano</option>
							<option value="grande">Grande</option>
						</select>
					</div>
					<div class="input_wrap">
						<form:label id="label" path="tipoDeAnimal">Tipo de Animal</form:label>
						<form:select class="input" path="tipoDeAnimal">
							<c:forEach items="${tipos}" var="tipo">
								<form:option value="${tipo.id}">
									<c:out value="${tipo.tipoDeAnimal}"/>
								</form:option>
							</c:forEach>
						</form:select>
					</div>
				</div>
		</div>
		<div class="form_2 data_info" style="display: none;">
			<h2>Información de la Mascota</h2>
				<div class="form_container">
					<div class="input_wrap">
						<form:label id="label" path="edad">Edad:</form:label>
						<form:errors path="edad"/>
						<form:input class="input" path="edad" type="text"  name="edad" id="edad" placeholder="Ejemplo: 2 meses"/>
					</div>
					<div class="input_wrap">
						<form:label path="sexo">Sexo:</form:label>
						<form:errors path="sexo"/>
						<form:select class="input" path="sexo">
							<option>Hembra</option>
							<option>Macho</option>
						</form:select>
					</div>
					<div class="input_wrap">
						<form:label id="label" path="personalidad">Personalidad</form:label>
						<form:errors path="personalidad"/>
						<form:input class="input" path="personalidad" type="text"  name="personalidad" id="personalidad" placeholder="Ejemplo: Travieso"/>
					</div>
				</div>
		</div>
		<div class="form_3 data_info" style="display: none;">
			<h2>Información de la Mascota</h2>
				<div class="form_container">
					<div class="input_wrap">
						<form:label id="label" path="energia">Energia</form:label>
						<form:errors path="energia"/>
						<form:input class="input" path="energia" type="number" min="1" max="10"  name="energia" id="energia"/>
					</div>
					<div class="input_wrap">
						<input class="input" type="file" class="form-control bottom" name="postFile">
					</div>
				</div>
		</div>
	</div>
	<div class="btns_wrap">
		<div class="common_btns form_1_btns">
			<button type="button" class="btn_next">Siguiente<span class="icon"><ion-icon name="arrow-forward-sharp"></ion-icon></span></button>
		</div>
		<div class="common_btns form_2_btns" style="display: none;">
			<button type="button" class="btn_back"><span class="icon"><ion-icon name="arrow-back-sharp"></ion-icon></span>Volver</button>
			<button type="button" class="btn_next">Siguiente<span class="icon"><ion-icon name="arrow-forward-sharp"></ion-icon></span></button>
		</div>
		<div class="common_btns form_3_btns" style="display: none;">
			<button type="button" class="btn_back"><span class="icon"><ion-icon name="arrow-back-sharp"></ion-icon></span>Volver</button>
			<input type="submit" value="Siguiente" type="button" class="btn_done"/>
		</div>
	</div>
</div>
<div class="modal_wrapper">
	<div class="shadow"></div>
	<div class="success_wrap">
		<span class="modal_icon"><ion-icon name="checkmark-sharp"></ion-icon></span>
		<p>Has completado la informacion correctamente</p>
	</div>
</div>

</form:form>


    <script src="/js/adopcion.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>