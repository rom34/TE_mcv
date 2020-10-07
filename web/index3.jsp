<%@page import="com.emergentes.modelo3.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%
            if(session.getAttribute("listaest")==null){
                ArrayList<Producto>listaux =new ArrayList<Producto>();
                session.setAttribute("listaest", listaux);
            }
            ArrayList<Producto> lista =(ArrayList<Producto>) session.getAttribute("listaest");
            %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Lista de productos</h1>
        <a href="ControladorProducto?op=1">Nuevo</a>
        <table  border="1">
            <tr>
                <th>Id</th>
                <th>Producto</th>
                <th>Categoria</th>
                <th>Existencia</th>
                <th>Precio</th>
                <th></th>
            </tr>
     
        <% 
            if(lista!=null){
                for(Producto item : lista){
                    
               
                %>
    <tr>
         <td> <%=item.getId()%></td>
        <td><%=item.getProducto()%> </td>
        <td><%=item.getCategoria() %></td>
        <td> <%=item.getExistencia() %></td>
         <td><%=item.getPrecio() %></td>
         <td>
             <a href="ControladorProducto?op=2&id=<%=item.getId()%>">
                 Modificar
             </a> 
         </td>
        <td>
            <a href="ControladorProducto?op=3&id=<%=item.getId()%>"
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

