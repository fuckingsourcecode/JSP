<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path +"/";
%>
<%
    request.setCharacterEncoding("utf-8");
    String user = request.getParameter("user");
    String password = request.getParameter("password");
    if("admin".equals(user) && "admin".equals(password)) {
        request.getSession().setAttribute("username", user);
%>
<jsp:forward page="logok.jsp">
    <jsp:param name="info" value="hello, Session" />
</jsp:forward>
<%
    }
%>
<html>
    <head>
        <meta charset="utf-8" />
        <title>session login</title>
    </head>
    <body>
        <form action="login.jsp" method="post">
            <table>
                <tr>
                    <td colspan="2" align="center">user login</td>
                </tr>
                <%
                    if (null != user && null != password){
                %>
                <tr>
                    <td colspan="2">user or password error, please login</td>
                </tr>
                <%
                    }
                %>
                <tr>
                    <td>username</td>
                    <td>
                        <input type="text" name="user">
                    </td>
                </tr>
                <tr>
                    <td>password</td>
                    <td>
                        <input type="password" name="password">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="login">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>