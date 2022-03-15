<!-- 작성자 : 조유진 
   공지사항 변경창
   특징 : 관리자만 접근할 수 있다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.stone.notice.common.*" %>
<%@page import="com.stone.member.common.Member"%>
<%
	List<Notice> boards= (List<Notice>) request.getAttribute("boards");
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
height:80px;
width: 300px;
}

.bi{
margin-top: 20px;
margin-left : 150px; 
color: #764ca2;

}

/**/
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


.tab_each{
  margin-top: 20px;
}
   

.inquiry p{
margin-bottom: 20px;
    font-size: 18px;
    color: rgba(0,0,0,0.56);

}

.inquiry input {
    border: none;
    background: none;
    width: 100%;
    margin-top: 5px;
    font-size: 18px;
    color: rgba(0,0,0,0.56);

}

.inp_wrap {
    border: 1px solid rgba(0,0,0,0.08);
    padding: 8px 14px 8px 16px;
}

.inquiry textarea {
    width: 100%;
    height: 272px;
    padding: 33px 32px;
    border-radius: 4px;
    font-size: 18px;
    line-height: 29px;
    border: 1px solid rgba(0,0,0,0.08);
    color: rgba(0,0,0,0.56);
    resize: none;
    box-sizing: border-box;
     position: relative;
    margin-bottom: 10px;
}

.btn_wrap button {
    width: 144px;
    height: 48px;
}


.btn_red_fill {
 margin-top : 3px;
width : 50px;
    height: 20px; 
    border-radius: 4px;
    font-weight: bold;
    font-size: 16px;
    color:  #764ca2;;
    text-align: center;
    box-sizing: border-box;
    vertical-align: top;
    background-color: #fff;
    border-style : solid;
    border-color : #764ca2 ;
    border-width: 3px;
}

 
.btn_wrap {
    border-top: none;
    padding: 40px 0 0 0;
    text-align: center;
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
  		 		<a class="back" onclick="history.go(-1)"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
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
    <nav>
    <ul> 
        <li><a href="notices" class="active">공지사항</a></li>
        <li><a href="/boards/1">Q&A</a></li>
    </ul>
</nav>

   <div class="align_rt">
<div class="notice">
<div class="tab">
<span class="tab_btn active">공지사항 다시 작성 <i class="ico_new"></i></span></div>
<div class="tab_each" style="display: block;">
				<form class="inquiry" action="update_" method="post">
          
   <input type="hidden" name="no" value="${board.no}"  /> </p><br>
   <p> 제목</p><p class="inp_wrap"><input type="text" name="title" value="${board.title}"  /> </p><br>
   <p>공지사항 내용</p><textarea cols="25" rows="5" name="contents"  >${board.contents}</textarea><br>

					<section class="btn_wrap">
						<button class="btn_red_fill" >변경 완료</button>
					</section>
				</form>
</div>



</div>

</div>
</div>
</div>



</body>
</html>