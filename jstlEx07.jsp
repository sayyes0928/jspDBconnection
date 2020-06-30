<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>JTSL Core Tag: out</title>
  </head>
  <body>
    <c:out value="<hr>"/>
    <c:out value="<hr>" escapeXml="false" />
    <p>
    <c:out value="${param.name}">
    패러미터가 없습니다.
    </c:out>
    <p>
    <c:out value="${param.name}" default="패러미터가 없습니다." />
    <p> \${param.name} = ${param.name}
  </body>
</html>
