<%-- 
    Document   : home
    Created on : Sep 28, 2020, 7:05:02 PM
    Author     : leonardo
--%>

<%@page import="br.edu.unijuazeiro.progiii.sales.models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página inicial</title>
    </head>
    <body>
        <% 
           User user = (User) session.getAttribute("userLogged");
           if (user == null){
        %>
            <p style="text-align: center">É preciso fazer login para ter acesso</p>
            <p style="text-align: center">
                Clique <a href="login.jsp">aqui</a> para fazer login
            </p>
        
        <% } else { %>
        
            <h3>Usuário logado: <%=user.getUsername() %></h3>
            <h1>Sales App</h1>
            <nav>
                <a href="novo-cliente.jsp">Novo cliente</a>
            </nav>
        <% } %>
    </body>
</html>
