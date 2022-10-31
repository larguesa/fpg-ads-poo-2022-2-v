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
        <title>Números aleatórios</title>
    </head>
    <body>
        <%
            String errorMessage = null;
            boolean hasParameterN = request.getParameter("n")!=null;
            double n = 0;
            try{
                n = Integer.parseInt(request.getParameter("n"));
            }catch(Exception ex){
                errorMessage = ex.getMessage();
            }
        %>
        <h4><a href="index.html">Voltar</a></h4>
        <h1>JSP</h1><h2>Soma</h2>
        <div>
            <% if(hasParameterN && errorMessage!=null){ %>
                <div style="color:red"><%= errorMessage %></div>
            <% } %>
            <% if(hasParameterN){ %>
                <table><tr><td>Índice</td><td>Número</td></tr>
                    <% for(int i=1; i<=n; i++){ %>
                        <tr>
                            <td><%= i %></td>
                            <td><%= ((int)(Math.random()*100)) %></td>
                        </tr>
                    <% } %>
                </table>
            <% } %>
            <form>
                <input type="number" name="n"/>
                <input type="submit" name="gerar" value="Gerar"/>
            </form>
        </div>
    </body>
</html>
