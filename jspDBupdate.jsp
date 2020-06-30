<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    Statement stmt=null;
    PreparedStatement pstmt = null;

    try{
     Class.forName("com.mysql.jdbc.Driver");
     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");

    if(conn==null)
     throw new Exception("DB에 연결 할 수 없습니다.");
    
    stmt = conn.createStatement();
    String update=String.format("UPDATE jspDB SET " + "title='%s', writer='%s',"
    +"price='%s' where code = '%s';",title,writer,price,code);
    int rowNum = stmt.executeUpdate(update);

  //  pstmt = conn.prepareStatement("UPDATE jspDB SET title = '"+title+"', writer = '"+writer+
  //   "', price = '"+price+"' where code ='"+code+"';");
    
  //  pstmt.executeUpdate();

    if(rowNum < 1)
      throw new Exception("DB에 데이터를 입력 할 수 없습니다.");

  //  request.setAttribute("CODE",code);
  // request.setAttribute("TITLE",title);
  //   request.setAttribute("WRITER",writer);
  //  request.setAttribute("PRICE",new Integer(price));
    }finally {
        try{
            pstmt.close();
        }catch (Exception ignored){ }
        try{
            conn.close();
        }
    catch (Exception ignored){}
    }

   response.sendRedirect("jspDBupdateok.jsp?code="+code);
  
   %>
   
  </body>
</html>
