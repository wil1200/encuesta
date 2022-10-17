<%@page import="com.emergentes.Encuesta"%>
<%
    Encuesta en=(Encuesta)request.getAttribute("encu");
    String lenguajes[]= en.getLenguajes();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias Por llenar la encuesta</h1>
        <p>Los datos recibidos son:   </p>
        <p>Nombre:<%= en.getNombre()%> </p>
        <p>Los lengujes de su preferencia son:</p>
        <ul>
            <% 
                if(lenguajes != null){
                for(String item: lenguajes){
              %>
                <li><%= item %></li>
              <%
                }
                }
            
               %> 
        </ul>
        <a href="Index.jsp">Volver</a>
    </body>
</html>
