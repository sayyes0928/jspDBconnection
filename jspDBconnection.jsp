<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DB 연결</title>
  </head>
  <body>
   <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
    if (conn != null){
        out.println("mydb 데이터베이스로 연결했습니다.<br>");
        conn.close();
        out.println("mydb 데이터베이스 연결을 끊었습니다.");
    }else{
        out.println("mydb 데이터베이스에 연결 할 수 없습니다.<br>");
    }
   %>
  </body>
</html>
