<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>구내식당</title>
  </head>
  <body>
  <h3>오늘의 점심 메뉴입니다.</h3>
  <ul>
    <c:forEach var="dish" items="${MENU}">
     <li>${dish}</li>
    </c:forEach>
  </ul>
  </body>
</html>
