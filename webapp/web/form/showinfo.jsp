<%@ page contentType="text/html; charset=utf-8" language="java" import="java.lang.reflect.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>showinfo</title>
</head>
<body>
    <% request.setCharacterEncoding("utf-8"); %>
    <h4>info</h4>
    <p>username:<%= request.getParameter("username")%></p>
    <p>password:<%= request.getParameter("password")%></p>
    <p>sex:<%= request.getParameter("rdo")%></p>
    <p>num:<%= request.getParameter("major")%></p>
    <p>checkbox:<% String cxbx1[] = request.getParameterValues("ckbx");
        System.out.println(cxbx1);
        if (cxbx1 != null) {
            int lng = Array.getLength(cxbx1);
            for (int i = 0; i<lng; i++) {
                out.println(cxbx1[i] + " ");
            }
        }%>
    </p>
    //sendDirect method using
    <% response.sendRedirect("https://www.baidu.com"); %>
    <%--<% System.out.println("going to baidu ");%>--%>
</body>
</html>