
package com.emergentes.controlador3;
import com.emergentes.modelo3.Producto;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "ControladorProducto", urlPatterns = {"/ControladorProducto"})
public class ControladorProducto extends HttpServlet {

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          int op =Integer.parseInt(request.getParameter("op"));
        int id,pos;
         HttpSession ses = request.getSession();
       
       ArrayList<Producto> lista =(ArrayList<Producto>) ses.getAttribute("listaest");
      
        if(op==1){
            
     Producto obj =new Producto();
     
              request.setAttribute("miPersona", obj);
               request.getRequestDispatcher("editar2.jsp").forward(request, response);
               
        }
        if(op==2){
             id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request, id);
           Producto ob =lista.get(pos);
           request.setAttribute("miPersona", ob);
           request.getRequestDispatcher("editar2.jsp").forward(request, response);
               
        }
        if(op==3){
             id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request, id);
           lista.remove(pos);
           ses.setAttribute("listaest", lista);
             response.sendRedirect("index3.jsp");
        }  
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     int id=Integer.parseInt(request.getParameter("id"));
     String producto =request.getParameter("producto");
     String categoria =request.getParameter("categoria");
     String existencia=request.getParameter("existencia");
     int precio =Integer.parseInt(request.getParameter("precio"));
     String nuevo =request.getParameter("nuevo");
     int pos;
     Producto obj1 =new Producto();
               obj1.setId(id);
               obj1.setProducto(producto);
               obj1.setCategoria(categoria);
               obj1.setExistencia(existencia);
               obj1.setPrecio(precio);
     
       HttpSession ses = request.getSession();
       
       ArrayList< Producto> lista =(ArrayList<Producto>) ses.getAttribute("listaest");
       if(nuevo.equals("true")){
                   lista.add(obj1);
                   
               }else{
           pos=buscarIndice(request,id);
           lista.set(pos, obj1);
                   
               }
        response.sendRedirect("index3.jsp");
    }
    private int buscarIndice(HttpServletRequest request, int id){
        HttpSession ses= request.getSession();
       ArrayList<Producto> lista = (ArrayList<Producto>) ses.getAttribute("listaest");
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
    
    
    


