<%@page import="com.emergentes.modelo2.Registro"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%
            if(session.getAttribute("listaest")==null){
                ArrayList<Registro>listaux =new ArrayList<Registro>();
                session.setAttribute("listaest", listaux);
            }
            ArrayList<Registro> lista =(ArrayList<Registro>) session.getAttribute("listaest");
            %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Lista de usuarios</h1>
        <a href="ControladorRegistro?op=1">Nuevo</a>
        <table  border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Correo electronico</th>
                <th>Contraseña</th>
                <th></th>
            </tr>
     
        <% 
            if(lista!=null){
                for(Registro item : lista){
                    
               
                %>
    <tr>
         <td> <%=item.getId()%></td>
        <td><%=item.getNombre()%> </td>
        <td><%=item.getApellidos()%></td>
        <td> <%=item.getCorreo_electronico()%></td>
         <td><%=item.getContraseña()%></td>
         <td>
             <a href="ControladorRegistro?op=2&id=<%=item.getId()%>">
                 Modificar
             </a> 
         </td>
        <td>
            <a href="ControladorRegistro?op=3&id=<%=item.getId()%>"
               onclick='return confirm("esta seguro de eliminar el registro?");'>
                Eliminar
            </a>
        </td>
    </tr>
    <%
        }
}
    %>
</table>
        
    </body>
</html>
