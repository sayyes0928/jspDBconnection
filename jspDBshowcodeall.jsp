<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DB 연결</title>
  </head>
  <body>
  
   <%
    //이전 페이지에서 입력값이 없을시 오류발생
    // Exception 처리를 할 경우, 해당 예외처리의 문장은 출력되지 않는다.
    // 단지 개발자의 관점에서 확인하는 목적
    Connection conn=null;
    Statement stmt=null;
    int check = 0;

    try{
     Class.forName("com.mysql.jdbc.Driver");
     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");

    if(conn==null)
     throw new Exception("DB에 연결 할 수 없습니다.");
    
    stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT CODE FROM jspDB;");

    while(rs.next()){ 
     String code = rs.getString("code");
       out.println(code+"<br>");
     }
    }finally {
        try{
            stmt.close();
        }catch (Exception ignored){ }
        try{
            conn.close();
        }catch (Exception ignored){}
    }   
   %>
   
  </body>
</html>
