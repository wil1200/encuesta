
package com.emergentes;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "PrecesaServlet", urlPatterns = {"/PrecesaServlet"})
public class PrecesaServlet extends HttpServlet {

    

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre=request.getParameter("nombre");
        // Recuperar Cadena de Valores Arreglos
        String lenguajes[]=request.getParameterValues("leng");
        
        //Crear Objetos 
        Encuesta encu=new Encuesta();
        
        //lenar Objetos
        encu.setNombre(nombre);
        encu.setLenguajes(lenguajes);
        
        //colocar el objeto como atributo  request
        
        request.setAttribute("encu", encu);
        
        //enviar objeto a salida.jsp
        
        request.getRequestDispatcher("salida.jsp").forward(request, response);
    }



}
