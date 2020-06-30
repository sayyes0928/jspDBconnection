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
    String code = request.getParameter("code");
    if(code==null)
    throw new Exception("상품코드를 입력하세요"); 
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
    ResultSet rs = stmt.executeQuery("SELECT * FROM jspDB where code = '"+code+"';");

    if(!rs.next()){
        check = -1;
     }else{
     check = 0;
     String title = rs.getString("title");
     String writer = rs.getString("writer");
     int price = rs.getInt("price");

     request.setAttribute("CODE",code);
     request.setAttribute("TITLE",title);
     request.setAttribute("WRITER",writer);
     request.setAttribute("PRICE",new Integer(price));
     }
    }finally {
        try{
            stmt.close();
        }catch (Exception ignored){ }
        try{
            conn.close();
        }
    catch (Exception ignored){}
    }
if(check==0){
 RequestDispatcher dispatcher = request.getRequestDispatcher("jspDBuseshow.jsp");
 dispatcher.forward(request,response);
}else{
    out.println("코드값 없음 <br><br>");
    out.println("<a href='jspDBindex.html'>처음으로</a>");
}
 
  
   %>
   
  </body>
</html>
