<%@page import="com.emergentes.modelo3.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            Producto item=(Producto) request.getAttribute("miPersona");
            boolean nuevo = true ;
            if(item.getId()>0){
                nuevo= false;
            }
            %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de productos</h1>
        <form action="ControladorProducto" method="post">
            <table>
                <tr>
                    <td>Id:</td>
                    <td><input type="text" name="id" value="<%=item.getId()%>"></td>
                   
                </tr>
                
                 <tr>
                    <td>Producto</td>
                    <td><input type="text" name="producto" value="<%=item.getProducto() %>"></td>
                </tr>
                 <tr>
                    <td>Categoria</td>
                    <td><input type="text" name="apellidos" value="<%=item.getCategoria() %>"></td>          
                </tr>
                 <tr>
                    <td>existencia</td>
                    <td><input type="text" name="correo_electronico" value="<%=item.getExistencia()  %>"></td> 
                </tr>
                 <tr>
                    <td>precio</td>
                    <td><input type="password" name="password" value="<%=item.getPrecio() %>"></td>       
                </tr>
                 <tr>
                    
                   <td><input type="hidden" name="op" value="3">
                   <input type="hidden" name="nuevo" value="<%=nuevo%>"></td>
                   <td><input type="submit" value="Enviar"></td>
                </tr>
                
            </table>
        </form>
    
    </body>
</html>
