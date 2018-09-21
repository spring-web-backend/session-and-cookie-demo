<%--
  Created by IntelliJ IDEA.
  User: Minh Lee
  Date: 21/09/2018
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>HOME</title>
  </head>
  <body>
  <h2>HOME</h2>
  <%
    String username = (String)session.getAttribute("username");
    if (username != null) {%>
  Welcome : <%= username%>
  <a href="/logout?islogout=ok">logout</a>
  <%}%>
  </body>
</html>
