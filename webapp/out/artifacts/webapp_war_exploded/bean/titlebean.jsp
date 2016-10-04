<%@ page contentType="text/html; charset=utf-8" language="java" %>
<jsp:useBean id="title" class="bean.Title" scope="page"/>
<html>
    <head>
        <meta charset="UTF-8">
        <title>bean test</title>
    </head>
    <body>
        <p>JSP test javabean</p>
        <%
            title.setIsbn("9870011");
            title.setTitle("Javascript权威指南");
        %>
        <p>isbn is : <%= title.getIsbn() %></p>
        <p>title is : <%= title.getTitle() %></p>
    </body>
</html>