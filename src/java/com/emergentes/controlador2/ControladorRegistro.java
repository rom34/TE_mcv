package com.emergentes.controlador2;
import com.emergentes.modelo2.Registro;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ControladorRegistro", urlPatterns = {"/ControladorRegistro"})
public class ControladorRegistro extends HttpServlet {
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          int op =Integer.parseInt(request.getParameter("op"));
        int id,pos;
         HttpSession ses = request.getSession();
       
       ArrayList<Registro> lista =(ArrayList<Registro>) ses.getAttribute("listaest");
      
        if(op==1){
            
     Registro obj =new Registro();
     
              request.setAttribute("miPersona", obj);
               request.getRequestDispatcher("editar.jsp").forward(request, response);
               
        }
        if(op==2){
             id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request, id);
           Registro ob =lista.get(pos);
           request.setAttribute("miPersona", ob);
           request.getRequestDispatcher("editar.jsp").forward(request, response);
               
        }
        if(op==3){
             id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request, id);
           lista.remove(pos);
           ses.setAttribute("listaest", lista);
             response.sendRedirect("index2.jsp");
        }  
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     int id=Integer.parseInt(request.getParameter("id"));
     String nombres =request.getParameter("nombres");
     String apellidos =request.getParameter("apellidos");
     String correo_electronico =request.getParameter("correo_electronico");
     String contraseña =request.getParameter("contraseña");
     String nuevo =request.getParameter("nuevo");
     int pos;
     Registro obj1 =new Registro();
               obj1.setId(id);
               obj1.setCorreo_electronico(correo_electronico);
               obj1.setNombre(nombres);
               obj1.setApellidos(apellidos);
               obj1.setContraseña(contraseña);
     
       HttpSession ses = request.getSession();
       
       ArrayList< Registro> lista =(ArrayList< Registro>) ses.getAttribute("listaest");
       if(nuevo.equals("true")){
                   lista.add(obj1);
                   
               }else{
           pos=buscarIndice(request,id);
           lista.set(pos, obj1);
                   
               }
        response.sendRedirect("index2.jsp");
    }
    private int buscarIndice(HttpServletRequest request, int id){
        HttpSession ses= request.getSession();
       ArrayList<Registro> lista = (ArrayList<Registro>) ses.getAttribute("listaest");
       int i=0;
       if(lista.size()>0){
           while(i<lista.size()){
               if(lista.get(i).getId()==id){
                   break;
               }else i++;
           }
       }
       return i;
    }

}