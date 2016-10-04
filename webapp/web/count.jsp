<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>count</head>
<body>
    <%! int count = 0; %>
    count = <%= count++ %>
    <br/>
    <% int count = 0; %>
    count = <%= count++ %>
    <jsp:include page="/time.jsp" flush="true"/>
    <%--<javainclude file="time.jsp" %>--%>
</body>
</html>