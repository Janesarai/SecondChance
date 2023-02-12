<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta path="viewport" content="width=device-width, initial-scale=1.0">
        <!---- bootstrap ----->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- Css -->
<link rel="stylesheet" href="/css/loginregister.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <title>Inicia sesión | Registrate</title>
</head>
<body>
    <div class="wrapper">
        <div class="form-wrapper sign-in" >
            <form method="post" action="/loginpost">
                <h1>${error}</h1> 
                <h2>Inicia sesión</h2>

                <div class="input-group">
                    <input  type="text" id="email" name="email" >
                    <label  for="email">Correo electrónico</label>
                </div>

                <div class="input-group">
                    <input  type="password" id="password" name="password" >
                    <label  for="password">Contraseña</label>
                </div>

                <div class="remember">
                    <label><input type="checkbox">  Recuérdame</label>
                </div>
                <button type="submit">Inicia sesión</button>
                <div class="signUp-link">
                    <p>¿No tienes una cuenta?<a href="#" class="signUpBtn-link">  Únete</a></p>
                </div>
                <div class="social-platform">
                    <p>O inicia sesión con</p>
                <div class="social-icons">
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-google"></i></a>
                </div>
                </div>
            </form>
        </div>

            <div class="form-wrapper sign-up">
                <form:form method="post" action="/registerpost" modelAttribute="user">
                    <h2>Únete</h2>
                    <div class="input-group">
                        <form:input type="text"  path="nombre" />
                        <form:label path="nombre">Nombre</form:label>
                        <form:errors path="nombre"/>
                    </div>
                    <div class="input-group">
                        <form:input type="text"  path="apellido" />
                        <form:label path="apellido">Apellido</form:label>
                        <form:errors path="apellido"/>
                    </div>

                    <div class="input-group">
                        <form:input type="date"  path="fechaNacimiento"/>
                        <form:label path="fechaNacimiento">Fecha de nacimiento</form:label>
                        <form:errors path="fechaNacimiento"/>
                    </div>
                    <div class="input-group">
                        <form:input type="email"  path="email" />
                        <form:label path="email">Correo electrónico</form:label>
                        <form:errors path="email"/>
                    </div>
                    <div class="input-group">
                        <form:input type="int"  path="celular" />
                        <form:label path="celular">Celular</form:label>
                        <form:errors path="celular"/>
                    </div>
                    <div class="input-group">
                        <form:input type="password"  path="password" />
                        <form:label path="password">Contraseña</form:label>
                        <form:errors path="password"/>
                    </div>
                    <div class="input-group">
                        <form:input type="password"  path="passwordConfirm" />
                        <form:label path="passwordConfirm">Confirma contraseña</form:label>
                        <form:errors path="password"/>
                    </div>
                            <div class="remember">
                                <label><input type="checkbox"> Acepto los términos y condiciones</label>
                            </div>
                            <button type="submit">Registrate</button>
                            <div class="signUp-link">
                                <p>¿Ya tienes cuenta?<a href="#" class="signInBtn-link">  Inicia sesión</a></p>
                            </div>
                    </form:form>
                </div>
        </div>
</div>
        <script src="/js/loginregister.js"></script>
        <script src="js/home.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>