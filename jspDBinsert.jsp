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
    String code = request.getParameter("code");
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String price = request.getParameter("price");
    if(code==null || title==null || writer==null || price==null)
    throw new Exception("NULL 값 존재"); 
    //이전 페이지에서 입력값이 없을시 오류발생
    // Exception 처리를 할 경우, 해당 예외처리의 문장은 출력되지 않는다.
    // 단지 개발자의 관점에서 확인하는 목적
    Connection conn=null;
    PreparedStatement pstmt = null;

    try{
     Class.forName("com.mysql.jdbc.Driver");
     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");

    if(conn==null)
     throw new Exception("DB에 연결 할 수 없습니다.");
     String insert="INSERT INTO jspDB VALUES(?,?,?,?)";
     
     pstmt = conn.prepareStatement(insert);
     pstmt.setString(1,code);
     pstmt.setString(2,title);
     pstmt.setString(3,writer);
     pstmt.setString(4,price);

     pstmt.executeUpdate();
     

     request.setAttribute("CODE",code);
     request.setAttribute("TITLE",title);
     request.setAttribute("WRITER",writer);
     request.setAttribute("PRICE",new Integer(price));
    }finally {
        try{
            pstmt.close();
        }catch (Exception ignored){ }
        try{
            conn.close();
        }
    catch (Exception ignored){}
    }

 RequestDispatcher dispatcher = request.getRequestDispatcher("jspDBuseshow.jsp");
 dispatcher.forward(request,response);
  
   %>
   
  </body>
</html>
