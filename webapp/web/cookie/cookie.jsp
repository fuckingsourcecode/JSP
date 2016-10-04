<%@ page contentType="text/html; charset=utf-8" language="java" import="java.net.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date, java.util.*" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>cookie</title>
    </head>
    <body>
        <%
            Cookie cookie = new Cookie(URLEncoder.encode("姓名", "utf-8"), URLEncoder.encode("杰克", "utf-8"));
            cookie.setMaxAge(60*60);
            response.addCookie(cookie);
            String userIp = request.getRemoteAddr();
            cookie = new Cookie("userIp", userIp);
            cookie.setMaxAge(10*60);
            response.addCookie(cookie);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日h:m:s");
            String logintime = sdf.format(new Date());
            cookie = new Cookie("logintime", URLEncoder.encode(logintime, "utf-8"));
            cookie.setMaxAge(20*60);
            response.addCookie(cookie);
            out.print("save information successfully !!!");
        %>
        <a href="readCookie.jsp">go read cookie</a>
    </body>
</html>