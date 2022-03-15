<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.stone.member.common.Member"%>
<%  Member member=(Member)request.getAttribute("findid_success"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=member.getName() %>님의 아이디는 '<%=member.getId()%>' 입니다.
<input type="button" onclick="location.href='/login'" value="로그인하러가기"/>
<input type="button" onclick="location.href='/findpw'" value="비밀번호찾기"/>
</body>
</html>