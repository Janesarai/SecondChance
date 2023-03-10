<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

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
    <title>Publicación</title>
</head>
<body>

    <!-- Navbar -->
    <jsp:include page="/WEB-INF/elementos/barraNavegacion.jsp"></jsp:include>

    <!-- Formulario -->
    <form:form method="post" action="/publicacion" modelAttribute="publicacion" enctype="multipart/form-data">

    <div class="wrapper">
        <div class="header">
            <ul style="list-style: none;">
                <li class="active form_1_progessbar" >
                    <div>
                        <p>1</p>
                    </div>
                </li>
                <li class="form_2_progessbar">
                    <div>
                        <p>2</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="form_wrap">
            <div class="form_1 data_info">
                <h2>Sube tu Publicación</h2>
                    <div class="form_container">
                        <div class="input_wrap">
                            <form:label id="label" path="titulo">Título Publicación:</form:label>
                            <form:errors path="titulo"/>
                            <form:input class="input" path="titulo" type="text" id="titulo" placeholder="Título" />
                        </div>
                        <div class="input_wrap">
                            <form:label id="label" path="descripcion">Descripción:</form:label>
                            <form:errors path="descripcion"/>
                            <form:input class="input" path="descripcion" id="descripcion" rows="3" placeholder="Ejemplo: Pequeño" />
                        </div>
                        <div class="input_wrap">
                            <form:label id="label" path="mascota">Mascota:</form:label>
                            <form:select class="input" path="mascota">
                                <c:forEach items="${mascota}" var="mascota">
                                    <form:option value="${mascota.id}">
                                        <c:out value="${mascota.nombre}"/>
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
                            <form:label id="label" path="ciudad">Mascota:</form:label>
                            <form:select class="input" path="ciudad">
                                <c:forEach items="${ciudad}" var="ciudades">
                                    <form:option value="${ciudades.id}">
                                        <c:out value="${ciudades.nombre}"/>
                                    </form:option>
                                </c:forEach>
                            </form:select>
                        </div>
                        <div class="input_wrap">
                            <form:label id="label" path="ciudad">Region:</form:label>
                            <form:select class="input" path="ciudad">
                                <c:forEach items="${region}" var="regiones">
                                    <form:option value="${regiones.id}">
                                        <c:out value="${regiones.nombre}"/>
                                    </form:option>
                                </c:forEach>
                            </form:select>
                        </div>
                    </div>
            </div>
        <div class="btns_wrap">
            <div class="common_btns form_1_btns">
                <button type="button" class="btn_next">Siguiente<span class="icon"><ion-icon name="arrow-forward-sharp"></ion-icon></span></button>
            </div>
            <div class="common_btns form_2_btns" style="display: none;">
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

    <script src="js/publicacion.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body> 
</html>
