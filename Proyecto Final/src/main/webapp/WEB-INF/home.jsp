<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/Home.css">
    <script src="https://kit.fontawesome.com/8c2ce3db19.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Second Chance</title>
</head>

<body>
    <header class="cabecera">
        <img id=logo src="imagenes/Second_Chance.jpg" alt="Logo de Second Chance">
        <a href="/iniciasesion/registrate">Iniciar sesion</a>
        <a href="/iniciasesion/registrate">Registrarse</a>
    </header>
        <!--Carrusel-->
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block " src="css/imgCss/GettyImages-977898246-1942d4364fa64bd2ba792a86f4f24715.jpg"
                        alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block " src="css/imgCss/e0b61-akita-americano-todo-lo-que-necesitas-saber-1-.jpg"
                        alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block " src="css/imgCss/image_7867e-Cats.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


    <div class="pipeta">
        <div class="dropdown">
            <button class="btn menus btn-secondary dropdown-toggle " id="boton" type="button" data-toggle="dropdown"
                aria-expanded="false">
                ¿Quienes somos?
            </button>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item active" href="#">Nuestra Historia</a></li>
            </ul>
        </div>
        <div class="dropdown">
            <button class="btn menus btn-secondary dropdown-toggle" type="button" data-toggle="dropdown"
                aria-expanded="false">
                Misión y Visión
            </button>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item active" href="#">Mision Actual</a></li>
                <li><a class="dropdown-item" href="#">Vision a Largo plazo</a></li>
            </ul>
        </div>
        <div class="dropdown">
            <button class="btn menus btn-secondary dropdown-toggle" type="button" data-toggle="dropdown"
                aria-expanded="false">
                Adóptame aquí
            </button>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item active" href="#">Perros</a></li>
                <li><a class="dropdown-item" href="#">Gatos</a></li>
                <li><a class="dropdown-item" href="#">Exoticos</a></li>
            </ul>
        </div>
        <div class="dropdown">
            <button class="btn menus btn-secondary dropdown-toggle" type="button" data-toggle="dropdown"
                aria-expanded="false">
                Cómo Apoyarnos
            </button>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item active" href="#">Siguenos en Redes</a></li>
                <li><a class="dropdown-item" href="#">Difusión</a></li>
            </ul>
        </div>
        <div class="dropdown">
            <button class="btn menus btn-secondary dropdown-toggle" type="button" data-toggle="dropdown"
                aria-expanded="false">
                Asociaciones
            </button>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item active" href="#">Veterinarios</a></li>
                <li><a class="dropdown-item" href="#">Fundaciones</a></li>
            </ul>
        </div>
        <div class="dropdown">
            <button class="btn menus btn-secondary dropdown-toggle" type="button" data-toggle="dropdown"
                aria-expanded="false">
                Historia de Adoptados
            </button>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item active" href="#">Historias Perritos</a></li>
                <li><a class="dropdown-item" href="#">Historias Gatitos</a></li>
                <li><a class="dropdown-item" href="#">Historias Exoticos</a></li>
            </ul>
        </div>
    </div>

    <div class="contenedor publicaciones">
        <div class="contieneForeach">
        <c:forEach items='${animalesItems}' var='animal' >
            <div class="publicacion">
                <div>
                    <img class="foto"
                        src="https://www.publimetro.cl/resizer/5kck4-Julb9l4t70SgTp_aE2Yyk=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/QR6PIGQRZJGIREAHFESUPMKA64.jpg"
                        alt="perrito">
                </div>
                <div>
                    <button class="cuadrado"><i class="fa-solid fa-beat"><img src="imagenes/Imagen1.png"
                                alt=""></i></button>
                </div>
                <div class="descripcion">
                    <h6>Nombre: <c:out value='${animal.getNombre_mascota()}'/></h6>
                    <h6>Genero: <c:out value='${animal.getGenero()}'/></h6>
                    
                </div>
            </div>
            
        </div>
        </c:forEach>

        <c:if test="${publicacion.user.id.equals(userId)}">
            <a class="btn btn-success m-4" href="/${publicacion}/">Crear publicacion</a>
        </c:if>

    </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>

</html>





















