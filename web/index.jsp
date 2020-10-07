
<%@page import="com.emergentes.modelo1.Inscripcion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inscripcion en curso</h1>
        <form action="Inscripcion" method="post">
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" value="" size=""></td>
                    
                </tr>
                <tr>
                    <td>Apellidos: </td>
                    <td><input type="text" name="apellidos" value="" size=""></td>
                    
                </tr>
                <tr>
                    <td>Curso: 
                   
             <select id=lista name="lista">
             <option value='1'> </option>
            <option value='1'>fisica 1</option>
            <option value='2'>fisica 2</option>
            <option value='3'>calculo 1</option>
            <option value='4'>calculo 2</option>
            </select></td>
              
                </tr>       
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>               
                </tr>   
            </table>
        </form>
    </body>
</html>
