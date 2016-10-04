<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
    <head>
        <title>jsp:param测试</title>
    </head>
    <body>
        <% request.setCharacterEncoding("utf-8"); %>
        <%= "&lt;jsp:param&gt;测试" %>
        <jsp:forward page="paramForward.jsp">
            <jsp:param name="username" value="whistle" />
            <jsp:param name="email" value="whistle.ting@gmail.com" />
        </jsp:forward>
    </body>
</html>