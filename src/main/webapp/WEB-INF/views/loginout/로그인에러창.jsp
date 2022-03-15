<!--
작성자: 조유진
페이지설명: 아이디, 비밀번호 입력 후 로그인을 진행하는 페이지
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="">
.header {
   position: relative;
    width: 100%;
    font-size: 1.7rem;
    text-align: center;
    background: #F7F7FF;
    border-bottom: 1px solid #e6e6e6;
    margin: 0;
}
#logo{
height:80px;
width: 300px;
}



#loginForm {
margin-top:50%;
    width: 1400px;
    margin: 100px auto;
    text-align: center;
    display: flex;
    align-items: center;
    flex-direction: column;
}

html, body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    font-family: 'Nanum Gothic', sans-serif;
}

.loginForm__input{
border-radius:5px;
    width: 400px;
    height: 55px;
    border: 2.5px solid #dadce0;
    font-size: 15px;
    margin: 10px auto;
}

.loginForm__memory {
    margin-right: 20px;
}

.loginForm__input_sub {
    margin: 30px auto;
    width: 200px;
    height: 55px;
    font-size: 23px;
    color: #ffffff;
    background-color: #a7a9da;
    border: none;
    border-radius: 5px;
    font-family: 'Jua', sans-serif;
}
.loginForm__input_sub_id_pw{
  	margin: 10px;
    width: 20px;
    height: 30px;
    font-size: 7px;
    color: #ffffff;
    background-color: #a7a9da;
    border: none;
    border-radius: 5px;
    font-family: 'Jua', sans-serif;
}

</style>
</head>
<body>
<header class="header">
<div class="container-fluid">
 	 <div class="title">
  		 <div class="title_left"> </div>
	</div>
   <!-- 로고  -->
   <div style="background: #F7F7FF;text-align: center; height: 70px;" >
   	<a href="/main3" > <img id="logo" src="/img/logo/최종로고.png" alt="main_logo"/> </a>
	</div>
</div>
</header>

<div class="container">
<div class="container p-5 my-5" >
   <p class="text-center" style="color:red;font-family: 'Jua', sans-serif;">아이디 또는 비밀번호를 확인해주세요.</p>
<div class="container" style="padding-left: 33%;">
        <form action="/login" method="post" name="" onsubmit="return loginCheck()">
            <div>
                <input id="id" class="loginForm__input" type="text" name="id" size="20" placeholder="아이디" maxlength="12" required> <br>
                <input id="password" class="loginForm__input" type="password" name="password" size="20" placeholder="비밀번호" maxlength="25" required> <br>
            </div>

            <label class="loginForm__memory">
                <input id="memory_id" type="checkbox" name="memory_id" value="y"> 아이디 기억하기
               <span><input type="button" class="loginForm__input_sub_id_pw" style="width: 20%;" value="아이디찾기" onclick="location.href='/findid'"></span>
                <span><input type="button" class="loginForm__input_sub_id_pw" style="width: 21%;" value="비밀번호찾기" onclick="location.href='/findpw'"></span>
            </label>

            <div id="loginForm__submit">
                <input type="submit" class="loginForm__input_sub" value="로그인">
           <input type="button" class="loginForm__input_sub" value="회원가입" onclick="location.href='/member'">
            </div>
        </form>
        </div>
    </div>
</div>
    
 
</body>
</html>