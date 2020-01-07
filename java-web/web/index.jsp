<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>乘法口诀表</title>
  </head>
  <body>
    <% for(int i = 1; i <= 9; i++){%>
      <% for(int j = 1; j < i ; j++){%>
        <%= j%> * <%= i%> = <%= j*i%>
        &nbsp;&nbsp;&nbsp;&nbsp;
      <% } %>
    <br>
    <% } %>

  </body>
</html>
