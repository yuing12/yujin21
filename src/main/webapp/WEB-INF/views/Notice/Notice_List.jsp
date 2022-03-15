<!-- 작성자 : 조유진 
   공지사항 목록창_바로 아래 상세도 바로 볼수 있음
   특징 : 관리자만 수정, 삭제에 접근할 수 있다. -->

<%@page import="com.stone.member.common.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.stone.notice.common.*" %>
<%
	List<Notice> notices= (List<Notice>) request.getAttribute("boards");
   Member user = (Member)request.getAttribute("user");
   Boolean isLogin = (Boolean)request.getAttribute("isLogin");
%>
<!DOCTYPE html> 
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/js/jquery.twbsPagination.js"></script> 
<meta charset="UTF-8">
<title>공지사항</title>

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

button {
    padding: 0;
    cursor: pointer;
}

button span {
    position: relative;
}

.wrap.show, footer.show {
    opacity: 1;
    visibility: visible;
}
.wrap {
    width: 100%;
    background: #fff;
    opacity: 0;
    visibility: hidden;
}

a, input, button, div, li, textarea, form, label, select {
    -webkit-tap-highlight-color: rgba(0,0,0,0);
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

/**/

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

/* 본문 */

/* 본문 메뉴 */
#content {
    overflow: hidden;
}


.more_wrap {
    padding-top: 54px;
    background: #fff;
}

.sub_wrap {
    width: 1024px !important;
    margin: 0 auto 0 auto;
    padding-bottom: 50px;
}

.sub_wrap nav { 
    display: block;
    float: left; 
    width: 238px;
    padding-left: 55px;
}

ul, ol, li {
    list-style: none;
}

.sub_wrap nav ul li {
    margin-bottom: 26px;
}

.sub_wrap nav ul li a.active {
    font-size: 18px;
    font-weight: bold;
    color: #764ca2;
}

.sub_wrap nav ul li a {
    display: block;
    font-size: 18px;
    color: rgba(0,0,0,0.56);
        text-decoration:none;
    
}

/* 본문 내용 */


.tab {
    height: auto;
    border-bottom: 1px solid rgba(0,0,0,0.2);
}

.tab .active, .tab .tab_btn.active {
    color: #000;
    font-weight: bold;
    color: #764ca2;
}

.tab span.tab_btn {
    display: inline-block;
    float: none;
    position: relative;
    width: auto;
    height: 40px;
    margin-right: 22px;
    font-size: 18px;
    line-height: normal;
    color: rgba(0,0,0,0.56);
    text-align: left;
    cursor: pointer;
}

.ico_new {
    display: inline-block;
    position: absolute;
    top: -1px;
    right: -13px;
    width: 12px; 
    height: 12px;
    margin: 0 0 0 0;
    text-indent: -9999px;
    vertical-align: top;
}


.sub_wrap .align_rt { 
    float: right;  
    width: 650px; 
    margin-right: 60px;
}

input[id*="answer"] {
    display: none;
    border-top: none;
 
}

input[id*="answer"] + label {
    display: block;
    padding: 20px;
padding: 38px 24px 35px 0;
    border-bottom: 0; 
    color: black;
    font-weight: 500;
    background: #fff;
    cursor: pointer;
    position: relative; 
}

input[id*="answer"] + label p{
overflow: hidden;
    width: 100%; 
    padding-bottom: 7px;
    white-space: nowrap;
    text-overflow: ellipsis;
    font-size: 20px;
     
}

input[id*="answer"] + label span{
display: block;
    position: relative;
    font-size: 13px;
    color: rgba(0,0,0,0.56);
}


input[id*="answer"] + label em {
    position: absolute;
    top: 50%;
    right: 2px;
    width: 14px;
    height: 9px;
    margin-top: -5px;  
    display: inline-block;
    background: url(./img/notice/arrow.png) 0 0 no-repeat;
    background-size: 14px auto;
    
    }

input[id*="answer"]+label + div {
  max-height: 0;
  transition: all .35s;
  overflow: hidden;
  background: #f7f7ff;
     border-bottom: 1px solid rgba(0,0,0,0.08);
  font-size: 15px; 
}

input[id*="answer"]+label + div p{
   display: inline-block;
   padding: 20px;
}

input[id*="answer"]+label + div button{
margin-top : 3px;
width : 35px;
    height: 20px; 
    border-radius: 4px;
    font-size: 12px;
    color:  #764ca2;;
    text-align: center;
    box-sizing: border-box;
       border-style : solid;
    vertical-align: top;
    background-color: #fff;
    border-color : #764ca2;
}

.tab button{
margin-top : 3px;
width : 50px;
    height: 20px; 
    border-radius: 4px;
    font-size: 12px;
    color:  #764ca2;;
    text-align: center;
    box-sizing: border-box;
    vertical-align: top;
       border-style : solid;
    background-color: #fff;
    border-color : #764ca2;
}


input[id*="answer"]:checked +label + div{max-height: 100px;}
input[id*="answer"]:checked +label em{background-position: 0 -10px;}

</style>

</head>


<body>

<div class="wrap show">

<header class="header">
<div class="container-fluid">
 	 <div class="title" >
 	 
 	 <!-- 뒤로가기 버튼 -->
  		 <div class="title_left"> 
  		 		<a class="back" onclick="history.go(-1)"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
</svg></a>
  		 </div>
	</div>
   <!-- 로고  -->
   <div style="background: #F7F7FF;text-align: center; margin-right:20px; height: 80px;" >
   	<a href="/prepare" > <img id="logo" src="/img/logo/최종로고.png" alt="main_logo"/> </a>
	</div>
            <ul class="gnb_pc">
                    <li><a href="#">내일정</a></li>
   <%if(user != null){ %>
    <li><a href="/logout"><span>로그아웃</span></a></li>
               
                     <%}else{ %> 
                        <li><a href="/login"><span>로그인</span></a></li>
                       <%} %>
                            </ul>
</div>
</header>

    
    <div id="content" class="sub_wrap more_wrap">
    <nav>
    <ul> 
        <li><a href="notices" class="active">공지사항</a></li>
        <li><a href="/boards/1">Q&A</a></li>
    </ul>
</nav>
   
   <div class="align_rt">
<div class="notice">
<div class="tab">

<span class="tab_btn active">서비스 공지사항 <i class="ico_new"></i></span>
    <% if(isLogin){ 
    	if(user.getId().equals("admin")){
    %>
<button onclick="location.href='/notice'">글쓰기</button>
<%} %>
<%} %>
</div>
<%
	for(int 일련번호=0;일련번호<notices.size();일련번호++){ 
		Notice list =notices.get(일련번호);//zero base
%>
   <div class="accordion">
          
                <input type="radio" name="accordion" id="answer<%=일련번호%>" >
                  <label for="answer<%=일련번호%>" > <p><%=list.getTitle() %></p> <em></em>
                  <span><%=list.getDate() %></span>
 
                  </label>
                  <div><p><%=list.getContents() %>
                  <br>
                  <br>
             <% if(isLogin){
            	 if(user.getId().equals("admin")){
            	 %>
            	 <button onclick="location.href='/prepare_update_/<%=list.getNo()%>'">변경</button>
            	 <button onclick="location.href='/delete_/<%=list.getNo()%>'">삭제</button>
               <%} %> 
             <%} %>
               </p></div>
	</div>
	<%	} %>
</div>
</div>
</div>
</div>

</body>
</html>