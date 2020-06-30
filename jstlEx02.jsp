<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    안녕하세요

    <c:set var="today" value="<%= new java.util.Date()%>"/>
    <c:if test="${today.hours > 9}" var = "boo
    l">
    저녁 식사는 하셨는지요?<br>
    </c:if>
    <p>
    <hr>
    \${today.hours} = ${today.hours}<br>
    \${bool} = ${bool}
  </body>
</html>
