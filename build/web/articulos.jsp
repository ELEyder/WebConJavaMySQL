<%-- 
    Document   : carreras
    Created on : 09/05/2023, 11:30:38 AM
    Author     : Eyder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String id=(String) request.getAttribute("varid");  %>
        <% String articulo=(String) request.getAttribute("vararticulo");%>
        <% String precio=(String) request.getAttribute("varprecio");%>
        <h1>Listado</h1>
        <table border="1">
            <tr><td>ID</td><td>ARTICULO</td><td>PRECIO</td></tr>
            <tr><td><%=id %></td><td><%=articulo %></td><td><%=precio %></td></tr>
        </table>
    </body>
</html>
