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
    <link rel="stylesheet" href="css/quienesSomos.css">
    <title>Quíenes Somos</title>
</head>
<body>
    
    <!-- Navbar -->
    <jsp:include page="/WEB-INF/elementos/barraNavegacion.jsp"></jsp:include>

    <div class="row">
        <div class="cuerpo col">
            <h1 class="titulo">Quienes Somos</h1>
            <h2 class="subTitulo ">Bienvenidos a Second Chance</h2>

            <p class="parrafo">En Second Chance somos un equipo de programadores con el objetivo de desarrollar una pagina que se dedique a la adopcion segura, 
                nuestro objetivo como equipo es hacer esta red lo mas segura y efectiva para especializarnos en el ambito de la adopcion, resolviendo
                los tipicos vacios que quedan a la hora de adoptar en otras redes sociales las cuales no estan hechas especialmente para esto.
                </p><p>Nuestra organizacion es sin fines de lucro por lo que las donaciones se van directamente para mejorar nuestra pagina, y asi ir 
                    prosperando y agilizando las adopciones para todos los animalitos.</p>
                    <p>Misión: Nuestra misión es mejorar la vida de los animales no deseados a través de la adopción consciente y el cuidado responsable. Trabajamos incansablemente para encontrar hogares amorosos y permanentes para cada animal que entra en nuestra organización, y educar a la comunidad sobre la importancia de la esterilización y el cuidado apropiado de los animales.

                        </p> <p>Visión: Nuestra visión es un mundo en el que todos los animales sean valorados y cuidados adecuadamente, y donde no haya más animales sin hogar. Trabajamos para alcanzar esta visión mediante la promoción de la adopción responsable, la esterilización y el cuidado apropiado de los animales, y la educación a la comunidad. Juntos, creemos que podemos lograr un futuro en el que todos los animales tengan un hogar seguro y amoroso.</p>
            
        </div>
        <div class="animacion col">
            <img src="https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_curiosidad__small/public/articulos/perro-infecciones.jpg" alt="">
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>