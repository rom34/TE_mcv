<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.emergentes.modelo1.Inscripcion"%>
<%
    Inscripcion miobj =(Inscripcion) request.getAttribute("miobj");
    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido</h1>
        <p>Se registro su inscripcion su nombre es <%=miobj.getNombre()%></p>
        <p>en el curso</p>
        <ul>
            <%
                String[] curso =miobj.getCurso();
            if(curso !=null){
                for(int i=0;i<curso.length ;i++){
                    
                    
                
                    %>
                    
           
            <li><%=curso[i]%></li>
            <%
                }
}

%>
       </ul>

        
    </body>
</html>
