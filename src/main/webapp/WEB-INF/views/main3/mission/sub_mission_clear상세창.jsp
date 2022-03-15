<!-- 작성자 : 조유진 
 미션창 : 미션을 인증하면 쿠폰이나 포인트를 받을 수 있다. 
 미션 클리어 한걸 인증하는 글을 자세히 볼수있다.-->

<%@page import="com.stone.mission.common.Mission"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="net.iharder.Base64" %>
    <%@ page import="java.util.*" %>
<%@page import="com.stone.member.common.Member"%>
    <%
    Mission mission= (Mission) request.getAttribute("mission");
   Boolean isWriter = (Boolean)request.getAttribute("isWriter");
%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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

tab {
    height: auto;
  
}

.tab .active, .tab .tab_btn.active {
    color: #000;
    font-weight: bold;
    color: #764ca2;
}


.tab_each{
  margin-top: 20px;
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

.sub_wrap { 
    width: 650px !important; 
    padding-bottom: 50px; 
 margin-left: 35%; 

 
} 



.more_wrap {
    padding-top: 70px;
    background: #fff;
}

.but{
margin-bottom : 20px;
margin-top : 10px;
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
   	<a href="/prepare" > <img id="logo" src="/img/logo/최종로고.png" alt="main_logo"/> </a>
	</div>
 
 
</div>
</header>

    <div id="content" class="sub_wrap more_wrap">
     <div class="align_rt">
<div class="notice">
<div class="tab" style="  border-bottom: 1px solid rgba(0,0,0,0.2);">
<span class="tab_btn active">미션 클리어 인증하기 <i class="ico_new"></i></span></div>


<div class="container" style="width: 100%; height: 100%;">
<!--  게시물상세 -->
<div class="container mt-3">
 <div class="input-group mb-3">
  <input type="hidden" id="no" name="no" value="<%=mission.getNo()%>">
    <span class="input-group-text" style="border-top-left-radius: 5px;border-bottom-left-radius: 5px; background-color:#f8f6fb;  border: 1px solid #baa5d0; ">제목</span>
     <input type="text" class="form-control" value="<%=mission.getTitle()%>" disabled style="background-color: white;" >
  
    <span class="input-group-text" style="background-color:#f8f6fb;  border: 1px solid #baa5d0; ">작성자</span>
    <input type="text" class="form-control" value="<%=mission.getWriter().getName() %>" disabled style="background-color: white;">
  </div>

   <div class="input-group mb-3" style="border: solid 1px #ced4da;border-radius:5px; ">
    <span class="input-group-text " style="background-color:#f8f6fb;  border: 1px solid #baa5d0; ">내용</span>
    <textarea class="form-control"rows="10"  id="contents" name="contents" style="border: 0;resize: none;background-color: white;" disabled >
    <%=mission.getContents() %></textarea>
  </div>
 

   <%if(mission.getProfile()!=null){ %>
    <img src="data:/png;base64,<%=Base64.encodeBytes(mission.getProfile())%>" class="profile" width="200" height="200"/>
<%} %>
 </div>

  
   <%-- 글쓴이와 로그인한 회원이 동일할때  --%>

  
    
    <% if(isWriter != null && isWriter == true) { %>

	 <div class="btn-group" role="group" style="margin-top : 5%;"> 
   <button class="btn btn-outline-info" onclick="location.href='/mission_update/<%=mission.getNo() %>'" style="border-radius:5px;color: #764ca2;
    border-color: #764ca2;"  >수정</button> &nbsp; &nbsp;
  </div>
		<div class="btn-group" role="group" style="margin-top : 5%;">
   <button class="btn btn-outline-info" onclick="location.href='/mission_delete/<%=mission.getNo()%>'" style="border-radius:5px;color: #764ca2;
    border-color: #764ca2;" >삭제  </button> &nbsp; &nbsp;
  </div>
		<%
		}
	%>

</div>

</div>


</div>

</div>



    </div>
</div>
</body>

</html>