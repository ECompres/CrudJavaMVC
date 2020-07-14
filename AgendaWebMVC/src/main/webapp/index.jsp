
<%@page import="Encriptacion.EncriptarMD5"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title>Inicio</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
                integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    </head>

    <body>
 

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Agenda web
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active" href="#">Iniciar sesión</a>
                    <a class="nav-item nav-link" href="registro.jsp">Registrarse</a>
                    <a class="nav-item nav-link" href="UsuarioController?consulta=listarUsuarios">Registrarse</a>
                </div>
            </div>
        </nav>

        <br>

        <form action="index.jsp">
            <div class="container">
                <h1>Iniciar sesión</h1>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="EMAIL">Correo electronico</label>
                        <input type="email" class="form-control" id="EMAIL" name="EMAIL" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="form-row">

                    <div class="form-group col-md-6">
                        <label for="PASSWORD">Contraseña</label>
                        <input type="password" class="form-control" name="PASSWORD" id="PASSWORD">
                    </div>
                </div>

                <button type="submit" name="login" class="btn btn-dark">Iniciar Sesión</button>

            </div>
        </form>
    </body>

</html>
<%!
   
%>