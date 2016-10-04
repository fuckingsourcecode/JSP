<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
    <head>
        <title>jsp:param测试</title>
    </head>
    <body>
        <%= "&lt;jsp:param&gt;测试" %>
        <p>
            username: <%= request.getParameter("username") %>
        </p>
        <p>
            email: <%= request.getParameter("email") %>
        </p>
    </body>
</html>