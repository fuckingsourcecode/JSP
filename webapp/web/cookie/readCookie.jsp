<%@ page contentType="text/html; charset=utf-8" language="java" import="java.net.*" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>read cookie</title>
    </head>
    <body>
        <%
            if (request.getCookies() != null) {
                for (Cookie cookie : request.getCookies()) {
                    String name = URLDecoder.decode(cookie.getName(), "utf-8");
                    String value = URLDecoder.decode(cookie.getValue(), "utf-8");
                    out.print("<p> cookie attribute" + name + " " + value + "</p>");
                }
            }
        %>
    <p>for read cookie</p>
    <%
        Cookie myCookie[] = request.getCookies();
        Cookie cookie = null;
        for (int i = 0; i < myCookie.length; i++) {
            cookie = myCookie[i];
            if (cookie.getName().equals("userIp")) {
    %>
        <p>you last login ip address <%= cookie.getValue() %></p>
    <%
            }
        }
    %>

    </body>
</html>