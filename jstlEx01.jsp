<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>
<c:set var="num1" value="7" />
<c:set var="num2" value="9" />
<c:set var="result" value="${num1*num2}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    ${num1} 과 ${num2} 의 곱은? ${result}
  </body>
</html>
