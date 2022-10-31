<%-- 
    Document   : datahora
    Created on : 31 de out de 2022, 12:25:36
    Author     : rlarg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4><a href="index.html">Voltar</a></h4>
        <h1>JSP</h1>
        <h2>Data/Hora</h2>
        <div>
            <%= new java.util.Date() %>
        </div>
    </body>
</html>
