<%--
  Created by IntelliJ IDEA.
  User: Minh Lee
  Date: 21/09/2018
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<fieldset>
    ${error}
    <legend>Login Form</legend>
    <form action="/login" method="POST">
        <table>
            <tr>
                <td>Username</td>
                <td><input type="text" name="txtUsername" placeholder="Enter username" value=""/></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="txtPassword" placeholder="Enter password" value=""/></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="chkRemember" value="ON"/>Remember to me</td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Login"/></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>
