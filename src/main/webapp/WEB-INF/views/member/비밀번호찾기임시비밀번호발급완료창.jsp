<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.stone.member.common.Member"%>
<%  Member member=(Member)request.getAttribute("findpw_new"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/login" method="post">
<%=member.getName() %>님의 비밀번호가 임시비밀번호인 '1234'로 변경되었습니다.
<input type="submit" value="로그인하러가기">
</form>
<input type="button" onclick="location.href='/findid'" value="아이디찾기"/>
</body>
</html>