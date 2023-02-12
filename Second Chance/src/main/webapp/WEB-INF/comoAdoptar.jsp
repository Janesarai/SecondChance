<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!-- css file -->
    <link rel="stylesheet" href="css/comoAdoptar.css">
    <title>Como adoptar</title>
</head>
<body>
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" >
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
                        <a class="nav-link text-white" href="quienesSomos">¿Quíenes somos?</a>
                    </li>
                    <li class="nav-item" style="display: inline-block;">
                        <a class="nav-link text-white" href="/como-Adoptar-A-Tu-Mascota">¿Cómo adoptar a tu mascota?</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            ¿Como ayudar?
                            </a>
                            <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/dona">Dona</a></li>
                            <li><a class="dropdown-item" href="/hazteSocio">Hazte socio</a></li>
                            <li><a class="dropdown-item" href="/fundaciones">Fundaciones</a></li>
                            </ul>
                    </li>
                    <li class="nav-item dropdown text-white">
                        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person-fill"></i> Mi cuenta</a>
                        <ul class="dropdown-menu">

                         <%-- colocar un if --%>
                        <li><a class="dropdown-item" href="/iniciasesion/registrate">Registro</a></li>
                        <li><a class="dropdown-item" href="/iniciasesion/registrate">Inicio sesión</a></li>

                        <li><a class="dropdown-item" href="/miPerfil">Mi perfil</a></li>
                        <li><a class="dropdown-item" href="#">Cerrar sesión</a></li>
                        </ul>
                    </li>
                    </ul>
                </div>
            </div>
        </nav>

    <div class="row">
        <div class="cuerpo col">
            <h1 class="titulo">Como adoptar a tu mascota</h1>
            <h2 class="subTitulo ">Bienvenidos a Second Chance</h2>

            <p class="parrafo">Lorem ipsum dolor sit, amet consectetur adipisicing elit. At eaque natus eos aliquid, velit nisi laborum ad reprehenderit nam adipisci, tempore corporis iure quae sequi porro a tenetur non quam.</p>
            <p class="parrafo">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis quidem aspernatur numquam, excepturi vero, officia architecto voluptas quasi temporibus sed eaque reprehenderit explicabo. Harum, fugit cupiditate! Iste ratione eius odio.</p>
        </div>
        <div class="animacion col">
            <img src="https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_curiosidad__small/public/articulos/perro-infecciones.jpg" alt="">
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>