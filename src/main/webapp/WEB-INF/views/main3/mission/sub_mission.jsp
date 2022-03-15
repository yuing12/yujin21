<!-- 작성자 : 조유진 
 미션창 : 미션을 인증하면 쿠폰이나 포인트를 받을 수 있다. -->


<%@page import="com.stone.mission.common.Mission"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<%@ page import="com.stone.member.common.*" %>
    <%
    List<Mission> list= (List<Mission>) request.getAttribute("missions");
   Member user = (Member)request.getAttribute("user");
   Boolean isLogin = (Boolean)request.getAttribute("isLogin");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꿀미션룸</title>
<style type="">
/* 전체설정 */

html, body {
    font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;
    font-size: 14px;
    line-height: 1;
    color: rgba(0,0,0,0.87);
    -webkit-text-size-adjust: none;
}

html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    box-sizing: border-box;
}
article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
    display: block;
}

* {
    outline: 0;
}


/* 헤더 */


.header {
   position: relative;
    width: 100%;
    font-size: 1.7rem;
    background: #F7F7FF;
    border-bottom: 1px solid #e6e6e6;
    margin: 0;
}



.title{
    position: relative;
    margin: 0 auto;
    background-color : #F7F7FF;
     float:left;
}

#logo{
margin-right : 150px;
height:80px;
width: 300px;
}

.bi{
margin-top: 20px;
margin-left : 150px; 
color: #764ca2;

}


 .gnb_pc {
 margin-right : 250px;
    display: inline-block;
    position: absolute;
    top: 27px;
    right: 31px;
}

.gnb_pc li {
    display: inline-block;
    position: relative;
    min-width: 53px;
    min-height: 35px;
    margin-left: 30px;
    vertical-align: top;
}

.gnb_pc li a {
    display: inline-block;
    font-size: 18px;
    color:  #764ca2;
    letter-spacing: 0;
    text-decoration:none;

}

.gnb_pc li ul {
    display: none;
    position: absolute;
    top: 0;
    left: 0;
    border-radius: 5px;
    padding: 32px;
    background: #fff;
    text-align: left;
    -webkit-box-shadow: 0px 3px 5px 0px rgb(0 0 0 / 20%);
    -moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.2);
    box-shadow: 0px 3px 5px 0px rgb(0 0 0 / 20%);
}

.gnb_pc li ul li {
    display: block;
    min-width: auto;
    min-height: auto;
    margin: 0 0 14px 0;
     
}

.gnb_pc li ul li a, .gnb_pc li ul li button {
    overflow: visible !important;
    display: block;
    position: relative !important;
    top: auto !important;
    left: auto !important;
    width: auto !important;
    height: auto !important;
    margin: 0;
    font-size: 16px;
    color: rgba(0,0,0,0.87);

    
}

a{
    text-decoration:none;
}


/* 본문 메뉴 */


.sub_wrap {
    width: 500px !important;
    margin: 0 auto 0 auto;
    padding-bottom: 50px;
 
}


.more_wrap {
    padding-top: 70px;
    background: #fff;
}

.but{
margin : 10px auto;
display : block;
width : 100px;
    height: 30px; 
    border-radius: 4px;
    font-size: 10px;
    color:  #764ca2;;
    text-align: center;
    box-sizing: border-box;
    vertical-align: top; 
    background-color: #fff;
    border-style : solid;
    border-color : #764ca2 ;
    border-width: 2px;
    
}

#content h2 {
 margin-bottom: 10px; 
} 


.explanation{
 margin-top: 50px;
}

/* 리셋 CSS */
* {margin:0;padding:0;box-sizing:border-box;}
ul, li {list-style:none;}


.slidebox {max-width:700px;margin:0 auto;position:relative;}
.slidebox .slidelist {position:relative;white-space:nowrap;overflow:hidden;}
.slidebox .slidelist .slideitem {position:relative;display:inline-block;vertical-align:middle;background-color:#fff;width:100%;transition:all 1s; text-align: center; }
.slidebox .slidelist .slideitem > a {display:block;width:auto;position:relative;}
.slidebox .slidelist .slideitem > a img {max-width:100%;}
.ma{
 margin-top: 10px;
 margin-bottom: 10px;

}

.slidebox .slide-control [class*="control"] label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:20px;border-radius:50%;cursor:pointer;}
.slidebox .slide-control [class*="control"] label.prev {left:-50px;background: url('/img/left-arrow.png') center center / 50% no-repeat;}
.slidebox .slide-control [class*="control"] label.next {right:-50px;background: url('/img/right-arrow.png') center center / 50% no-repeat;}

[name="slide"] {display:none;}
#slide01:checked ~ .slidelist .slideitem {left:0;}
#slide02:checked ~ .slidelist .slideitem {left:-100%;}
#slide03:checked ~ .slidelist .slideitem {left:-200%;}
#slide04:checked ~ .slidelist .slideitem {left:-300%;}

.slide-control [class*="control"] {display:none;}
#slide01:checked ~ .slide-control .control01 {display:block;}
#slide02:checked ~ .slide-control .control02 {display:block;}
#slide03:checked ~ .slide-control .control03 {display:block;}
#slide04:checked ~ .slide-control .control04 {display:block;}


<!--클리어 목록 -->

.clear {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: center;
  line-height: 1.5;
  margin: 20px 10px;
}
.clear th {
  width: 155px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #fff;
  background: #baa5d0 ;
}
.clear td {
  width: 155px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #f8f6fa;
}

</style>
</head>
<body>

<div class="wrap show">

<header class="header">
<div class="container-fluid">
 	 <div class="title" >
 	 
 	 <!-- 뒤로가기 버튼 -->
  		 <div class="title_left"> 
  		 		<a class="back" onclick="history.go(-1)">
  		 		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
</svg></a>
  		 </div>
	</div>
   <!-- 로고  -->
   <div style="background: #F7F7FF;text-align: center; margin-right:20px; height: 80px;" >
   	<a href="/main3" > <img id="logo" src="/img/logo/최종로고.png" alt="main_logo"/> </a>
	</div>
            <ul class="gnb_pc">
                    <li><a href="#">내일정</a></li>
   <%if(user != null){  %>
    <li><a href="/logout"><span>로그아웃</span></a></li>
                
                     <%}else{ %> 
                        <li><a href="/login"><span>로그인</span></a></li>
                       <%} %>
                            </ul>
</div>
</header>

    <div id="content" class="sub_wrap more_wrap">


<h2 style="text-align: center;">매주 월요일 오전 6시에 업데이트 됩니다.</h2><br>

<div class="slidebox">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<ul class="slidelist">
		<li class="slideitem">
		<div class="ma">
			<p>1. 타지역에서 제주도로 비행기타고 가서 귤 까먹기</p> 
			<br>


			</div>
		</li>
		<li class="slideitem">
		<div class="ma">
			<p>2. 북서울꿈의 숲에서 물구나무서서 사진찍기</p> 
			<br>
			
			
				</div>
		</li>
		<li class="slideitem">
		<div class="ma">
		<p>3. 뛰어서 30km 지역이동 </p>
		<br>
			
		
				</div>
		</li>
		
	</ul>
	

	
	<div class="slide-control">
		<div class="control01">
			<label for="slide03" class="prev"></label>
			<label for="slide02" class="next"></label>
		</div>
		<div class="control02">
			<label for="slide01" class="prev"></label>
			<label for="slide03" class="next"></label>
		</div>
		<div class="control03">
			<label for="slide02" class="prev"></label>
			<label for="slide01" class="next"></label>
		</div>
	
	</div>
</div>

	<button class="but" onclick="location.href='/mission_clear'">인증하기</button>

<div class="clear">
			<table class="table table-hover" id="table">
<tr>
    <th class="cols">번호</th>
    <th class="cols">제목</th>
     <th class="cols">작성자 </th>
    <th class="cols">작성일</th>
    <th class="cols">조회수 </th>
  </tr>
 
  
<%
     for(int i=0; i<list.size(); i++){
    	 Mission missions = list.get(i); 
   %>

<tr>
 	<td> <%=missions.getNo()%></td>  
	<td><a href="mission/<%=missions.getNo()%>">  <%=missions.getTitle()%> </a></td>
	<td><%=missions.getWriter().getName() %> </td>
	<td><%=missions.getDate()%></td>
	<td><%=missions.getViews() %></td>
 </tr>
<% } %>


	
</table>
</div>

<!-- 설명란 -->
 <div class="explanation">
<p style="    margin-bottom: 10px;"> 꿀 미션이란? </p>
<p style="    margin-bottom: 7px;"> 꿀 미션은 매주 여행과 관련된 미션들을 주는 걸 말합니다.</p>
<p style="    margin-bottom: 7px;"> 미션들을 클리어할 때마다 보상드립니다!! </p>
<p> 보상 : 쿠폰, 포인트 지급</p>
  </div>
</div>
</body>
</html>