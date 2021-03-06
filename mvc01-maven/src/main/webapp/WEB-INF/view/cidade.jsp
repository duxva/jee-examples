<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Exemplo MVC01 - Cidade</title>
    </head>
    <body>
        <h1>Lista de Cidades</h1>
        <form action="cidade" method="GET">
            <label for="busca">Busca:</label>
            <input type="text" name="busca" id="busca"/>
            <input type="submit" value="buscar" />
        </form>
        <ul>
        <%@page import="java.util.List" %>
        <%@page import="br.edu.utfpr.mvc01.model.pojo.Cidade" %>
        <% List <Cidade> lista =
                (List <Cidade>) request.getAttribute("lista");
           for (Cidade cidade : lista) { %>
               <li><%= cidade.getNome() %></li>
        <% } %>
        </ul>
    </body>
</html>
