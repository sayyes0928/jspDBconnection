<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DB 수정</title>
  </head>
  <body>
  
   <%
    Connection conn=null;
    PreparedStatement pstmt = null;

    String code = (String)request.getParameter("code");

    try{
     Class.forName("com.mysql.jdbc.Driver");
     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");

    if(conn==null)
     throw new Exception("DB에 연결 할 수 없습니다.");
    
    pstmt = conn.prepareStatement("DELETE FROM jspDB WHERE code ='"+code+"';");
    pstmt.executeUpdate();

    }finally {
        try{
            pstmt.close();
        }catch (Exception ignored){ }
        try{
            conn.close();
        }
    catch (Exception ignored){}
    }
     
   response.sendRedirect("jspDBindex.html");
   %>
   
  </body>
</html>
