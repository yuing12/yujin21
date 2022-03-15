<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 				       String mostlocal  =	(String)request.getAttribute("mostlocal");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랜선투어</title>
</head>
<body>
최고의 인기 여행지는 <%=mostlocal %> 입니다!!
</body>
</html>