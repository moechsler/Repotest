<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css">     
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autentificación</title>
    </head>
    
    <body>
    <center>
        <h2>Autentificación</h2>
            <form action="login" method="post">
                <input placeholder="Usuario/Nombre: "type="text" name="nombre" required=""><br><br>
                <input placeholder="Clave: "type="password" name="password" required=""><br><br>
                <input type="checkbox" value="check"> Recordar<br><br>
                <input type="submit" value="Iniciar Sesion">
            </form>
    </body>
</html>