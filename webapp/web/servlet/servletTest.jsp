<%--
  Created by IntelliJ IDEA.
  User: whistle
  Date: 16-10-4
  Time: 上午9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<base href="<%= basePath%>">
<html>
<head>
    <title>Servlet Test</title>
</head>
<body>
    <form action="./servlet/HelloServlet" method="post">
        <p>username: <input type="text" name="username"></p>
        <p><input type="submit" value="submit"></p>
    </form>
</body>
</html>
