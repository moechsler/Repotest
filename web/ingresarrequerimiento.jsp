<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%ResultSet resultadogerencia =null;%>
<%ResultSet resultadodepto =null;%>
<%ResultSet resultadoasignacion =null;%>
<%ResultSet resultadoencargado =null;%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css">     
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">         
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Requerimiento</title>
    <body>
    <%
    try{
        Connection gerencia = 
        DriverManager.getConnection
        ("jdbc:mysql://localhost/requerimiento?user=admin&password=admin");
        Statement statement = gerencia.createStatement() ;
        resultadogerencia =statement.executeQuery("select * from gerencia") ;
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
    %>
    
<%
    try{
        Connection depto = 
        DriverManager.getConnection
        ("jdbc:mysql://localhost/requerimiento?user=admin&password=admin");
        Statement statement = depto.createStatement() ;
        resultadodepto =statement.executeQuery("select * from depto") ;
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
    %>
    
<%
    try{
        Connection asignacion = 
        DriverManager.getConnection
        ("jdbc:mysql://localhost/requerimiento?user=admin&password=admin");
        Statement statement = asignacion.createStatement() ;
        resultadoasignacion =statement.executeQuery("select * from unidad") ;
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
    %> 
    
<%
    try{
        Connection encargado = 
        DriverManager.getConnection
        ("jdbc:mysql://localhost/requerimiento?user=admin&password=admin");
        Statement statement = encargado.createStatement() ;
        resultadoencargado =statement.executeQuery("select * from responsable") ;
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
    %>     
               
                
        <div class="container">
            <div class="col-lg-6">
                <h2 align="center">Agregar Requerimiento</h2>
                <form action="agregar">
                    <table align="center" border="0"width="700">
                    <tr valign="top">
                    <td width="200">
                    Gerencia:
                    <td>
                        <select>
                        <%  while(resultadogerencia.next()){ %>
                            <option><%= resultadogerencia.getString(2)%></option>
                        <% } %>
                        </select>
                    </td>
                    </tr>
                    <tr valign="top">
                    <td>
                    Depto.:
                    <td>
                        <select>
                        <%  while(resultadodepto.next()){ %>
                            <option><%= resultadodepto.getString(2)%></option>
                        <% } %>
                        </select>
                    </tr>
                    <tr valign="top">
                    <td>
                    Asignacion:
                    <td>
                        <select>
                        <%  while(resultadoasignacion.next()){ %>
                            <option><%= resultadoasignacion.getString(2)%></option>
                        <% } %>
                        </select>
                    </tr>
                    <tr valign="top">
                    <td>
                    Encargado:
                    <td>
                        <select>
                        <%  while(resultadoencargado.next()){ %>
                            <option><%= resultadoencargado.getString(2)%></option>
                        <% } %>
                        </select>
                    </tr>
                    <td>
                    Requerimiento:
                    <td>
                        <textarea name="requerimiento" rows="5" cols="30">...</textarea>                
                </form>
            </div>

                       
        
    </body>
</html>
