<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>숫자포멧</title>
  </head>
  <body>
    첫번째 수 : <fmt:formatNumber value="123500" groupingUsed="true" /><br>
    두번째 수 : <fmt:formatNumber value="3.14158" pattern="#.##" /><br>
    세번째 수 : <fmt:formatNumber value="10.5" pattern="#.00"/>
  </body>
</html>
