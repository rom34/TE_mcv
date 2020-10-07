<%@page import="com.emergentes.modelo2.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            Registro item=(Registro) request.getAttribute("miPersona");
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
        <h1>Registro de usuarios</h1>
        <form action="ControladorRegistro" method="post">
            <table>
                <tr>
                    <td>Id:</td>
                    <td><input type="text" name="id" value="<%=item.getId()%>"></td>
                   
                </tr>
                
                 <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="<%=item.getNombre()%>"></td>
                </tr>
                 <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="<%=item.getApellidos()%>"></td>          
                </tr>
                 <tr>
                    <td>Correo electronico</td>
                    <td><input type="text" name="correo_electronico" value="<%=item.getCorreo_electronico() %>"></td> 
                </tr>
                 <tr>
                    <td>Contraseña</td>
                    <td><input type="password" name="password" value="<%=item.getContraseña() %>"></td>       
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
