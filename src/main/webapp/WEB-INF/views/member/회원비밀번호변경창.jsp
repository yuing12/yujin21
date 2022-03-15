<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.stone.member.common.Member"%>
<%  Member member=(Member)request.getAttribute("member_pwUpdate"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/member_pwUpdate" method="post">
<input type="password" id="password" name="password" />
</form>
</body>
</html>