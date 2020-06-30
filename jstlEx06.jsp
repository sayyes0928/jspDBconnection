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
  <c:set var="score" value="<%= new int[] {91, 88 ,77, 45, 99}%>" />
    <c:forEach var="point" items="${score}">
    \${point} = ${point} <br>
     <c:set var="sum" value="${sum+point}" />
    </c:forEach>

    합 = ${sum} <br>
    <h3>1부터 100까지 합</h3>
    <c:set var="sum" value="0" />
    <c:forEach var="i" begin="1" end="100" >
     <c:set var="sum" value="${sum+i}" />
    </c:forEach>

    결과 = ${sum}

    <h3>1부터 100까지의 3의 배수 합</h3>
    <c:set var="sum" value="0"/>
    <c:forEach var="i" begin="1" end="100" step="3">
     <c:set var="sum" value="${sum+i}" />
    </c:forEach>
    결과 = ${sum}
  </body>
</html>
