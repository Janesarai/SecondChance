<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Perfil</title>
    <link rel="stylesheet" type="text/css" href="Mi_Cuenta.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    
    <!-- Navbar -->
    <jsp:include page="/WEB-INF/elementos/barraNavegacion.jsp"></jsp:include>

    <section class="seccion-perfil-usuario">
        <div class="perfil-usuario-header">
            <div class="perfil-usuario-portada">
                <div class="perfil-usuario-avatar">
                    <img src="Imagenes/585e4bf3cb11b227491c339a.png" alt="img-avatar">
                </div>
            </div>
        </div>
        <div class="perfil-usuario-body">
            <div class="perfil-usuario-bio">
                <h3 class="titulo">Felipe Parada</h3>
                <p class="texto">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt ut labore et dolore magna aliqua.</p>
            </div>
            <div class="perfil-usuario-footer">
                <ul class="lista-datos">
                    <li><i class="icono fas fa-map-signs"></i> Direccion de usuario:</li>
                    <li><i class="icono fas fa-phone-alt"></i> Telefono:</li>
                    <li><i class="icono fas fa-map-marker-alt"></i> Ubicacion.</li>
                    <li><i class="icono fas fa-calendar-alt"></i> Fecha nacimiento.</li>
                </ul>
                <ul class="lista-datos">
                    <li><i class="icono fas fa-user-check"></i> Registro.</li>
                    <li><i class="icono fas fa-share-alt"></i> Redes sociales.</li>
                </ul>
            </div>
            <div class="perfil-usuario-footer">
                <div>
                    <h3>Tus Publicaciones</h3>
                </div>
            </div>
            <div class="perfil-usuario-footer">

                <div class="main d-flex flex-wrap justify-content-evenly" id="seccion_cards">
                    <c:forEach items="${userId}" var="user">
                    <div class="row">
                        <div class=" col-md card-content">
                                <div class="card">
                                    <img src="/Imagenes/229887_269850069789903_177554475_n.jpg" class="card-img">
                                    <div class="card-body">
                                        <h2 class="card-title"><c:out value="${mascota.user.nombre}"/></h2>
                                        <p class="card-sub-title"><c:out value="${mascota.user.nombre} ${mascota.user.apellido}"/></p>
                                        <p class="card-info"><c:out value="${user.mascota.publicacion.titulo}"/></p>
                                        <c:if test="${userId == null}">
                                            <a href="/iniciasesion/registrate" class="btn btn-outline-light btn-lg">Mas Informacion</a>
                                        </c:if>
                                        <c:if test="${userId != null}">
                                            <a href="/detalle/${mascota.id}" class="btn btn-outline-light btn-lg">Mas Informacion</a>
                                        </c:if>
                                    </div>
                                </div>
                        </div>
                    </div>
                </c:forEach>
                </div>

            </div>
            <div class="redes-sociales">
                <a href="https://www.facebook.com" class="boton-redes facebook fab fa-facebook-f"><i class="icon-facebook"></i></a>
                <a href="https://twitter.com" class="boton-redes twitter fab fa-twitter"><i class="icon-twitter"></i></a>
                <a href="https://www.instagram.com" class="boton-redes instagram fab fa-instagram"><i class="icon-instagram"></i></a>
            </div>
        </div>
    </section>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>