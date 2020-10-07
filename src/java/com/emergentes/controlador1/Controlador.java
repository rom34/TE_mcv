
package com.emergentes.controlador1;
import com.emergentes.modelo1.Inscripcion;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    String nombre = request.getParameter("nombre");
    String apellidos=request.getParameter("apellidos");
    String[] curso = request.getParameterValues("curso");
    
    Inscripcion obj =new Inscripcion();
    obj.setNombre(nombre);
    obj.setApellidos(apellidos);
    obj.setCurso(curso);
    
    request.setAttribute("miobj", obj);
    request.getRequestDispatcher("salida.jsp").forward(request, response);
        
    }
   
}
