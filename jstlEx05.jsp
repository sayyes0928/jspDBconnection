<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8" %> 
<% request.setCharacterEncoding("UTF-8");%>
<% String arr[]={"불고기백반", "오므라이스", "콩국수"};
   request.setAttribute("MENU",arr); //객체에 값을 셋팅한다
%>
<jsp:forward page="LunchMenuView.jsp"/>
