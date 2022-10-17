<%-- 
    Document   : Index
    Created on : 26 sep. de 2022, 22:57:04
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LLenar la encuesta</h1>
        <form action="PrecesaServlet" method="post">
            <label>Nombre: </label>
            <input type='text' name='nombre'/>
            <br>
            <label>Lenguajes</label>
            <br>
            <p>Java: <input type="checkbox" name='leng' value='Java'/></p>
            <p>PHP: <input type="checkbox" name='leng' value='PHP'/></p>
            <p>Pyton: <input type="checkbox" name='leng' value='Pyton'/></p>
            <p>C#: <input type="checkbox" name='leng' value='C#'/></p>
            <input type="submit" value="enviar"/>
            
        </form>
    </body>
</html>
