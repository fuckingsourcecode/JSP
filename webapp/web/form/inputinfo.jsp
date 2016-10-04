<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>inputinfo</title>
</head>
<body>
    <form action="showinfo.jsp" method="post" name="form">
        <table width="700" cols="2" border="1">
            <tr>
                <td>username</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>password</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td>sex</td>
                <td>
                    <input type="radio" value="male" name="rdo" checked>male
                    <input type="radio" value="female" name="rdo" checked>female
                </td>
            </tr>
            <tr>
                <td>num</td>
                <td>
                    <select name="major" id="">
                        <option value="first">first</option>
                        <option value="second">second</option>
                        <option value="third">third</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>checkbox</td>
                <td>
                    <input type="checkbox" name="ckbx" value="film">film
                    <input type="checkbox" name="ckbx" value="threat">threat
                    <input type="checkbox" name="ckbx" value="music">music
                    <input type="checkbox" name="ckbx" value="paint">parint
                </td>
            </tr>
        </table>
        <input type="submit" value="submit" name="submit1">
    </form>
</body>
</html>