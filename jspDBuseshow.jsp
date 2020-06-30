<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
   <form action="jspDBupdate.jsp" method="get">
  코드 :<input type="text" name="code" value="${CODE}" readonly=true> <br>
  제목 :<input type="text" name="title" value="${TITLE}" > <br>
  저자 :<input type="text" name="writer" value="${WRITER}" > <br>
  가격 :<input type="text" name="price" value="${PRICE}" > 원 <br>
   <input type="submit" value="수정"> 
   <script>
    function deleteBTN() {
        location.href = "jspDBdelete.jsp?code="+"${CODE}";
      }
   </script>
   <input type="button" value="삭제" onclick="deleteBTN()"><br>
   <hr>
   <a href="jspDBindex.html">초기화면으로</a><br>
   <a href="jspDBsearch.html">검색화면으로</a>
   
   </form>
  </body>
</html>
