<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>login success</title>
    </head>
    <body>
        <p><%= request.getSession().getAttribute("username")%></p>
        <p><%= request.getParameter("info")%></p>
        <p><%= request.getParameter("user")%></p>
        <p><%= request.getParameter("password")%></p>
        <a href="login.jsp">go back login page</a>
    </body>
</html>