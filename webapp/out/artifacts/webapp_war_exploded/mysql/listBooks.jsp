<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>图书目录</title>
    </head>
    <body>
        <table>
            <tr>
                <td>ISBN</td>
                <td>书名</td>
                <td>版本</td>
                <td>价格</td>
            </tr>
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    String url = "jdbc:mysql://localhost:3306/books?useUnicode = true & characterEncoding = utf-8";
                    Connection dbCon = DriverManager.getConnection(url, "root", "root");
                    Statement stmt = dbCon.createStatement();
                    ResultSet rs = stmt.executeQuery("select isbn, title, copyright, price, summary from bookinfo");
                    while (rs.next()) {
                        System.out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getDouble(4) + " " + rs.getString(5));
            %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getDouble(4) %></td>
                <td><%= rs.getString(5) %></td>
            </tr>
            <%
                    }
                    rs.close();
                    stmt.close();
                    dbCon.close();
                } catch (SQLException se) {
                    se.printStackTrace();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
    </body>
</html>