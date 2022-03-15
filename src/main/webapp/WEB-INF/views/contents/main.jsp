<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% boolean isLogin=(boolean)request.getAttribute("isLogin");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
메인창입니다.

<button onclick="location.href='/boards'">qna</button>
</body>
</html>