<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<html>
<head><title>상품 정보 수정 완료</title></head>
<body>
 <h2>상품 정보가 수정되었습니다.</h2>
 수정된 정보를 조회하려면 아래의 링크를 클릭하십시오.<br><br>
 입력된 code는 ${param.code} 입니다.<br><br>
 <a href="jspDBuse.jsp?code=${param.code}">상품정보 조회</a>
</body>
</html>