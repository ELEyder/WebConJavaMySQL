<%-- 
    Document   : index
    Created on : 02/05/2023, 08:54:04 AM
    Author     : lab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP</title>
    </head>
    <body>
        <h2>SODIMAC</h2>
        <form action="Login" method="get">
            <table border="1">
                <tr><td>USER:</td><td><input type="text" name="txtusuario"></td></tr>
                 <tr><td>CLAVE:</td><td><input type="text" name="txtclave"></td></tr>
                 <tr><td><input type="submit" value="Ingresar"></td><td></td></tr>
            </table>
        </form>
    </body>
</html>
