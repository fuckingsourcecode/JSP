<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>refresh</title>
</head>
<body>
    <%! int count = 0; %>
    <%
        response.setHeader("refresh", "2");
    %>
    <h3>you have already visited <%= count++ %> times</h3>
    //使用setHeader清除缓存
    <%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);%>
</body>
</html>