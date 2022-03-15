<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@page import="net.iharder.Base64"%>
<%@page import="com.stone.member.common.Member"%>
<%@page import="com.stone.simple.common.VillageWeather"%>
<%@page import="com.stone.simple.common.User"%>
<% 
	VillageWeather	w =	(VillageWeather)request.getAttribute("vl"); 
		String local_name =(String)request.getAttribute("local_name");
	Member user = (Member)request.getAttribute("user"); 
%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<meta charset="UTF-8">
<title>어디가지?</title>
<style type="text/css">
*{font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;}
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

#my_modal {
 display: none;
 width: 300px;
 padding: 20px 60px;
 background-color: #fefefe;
 border: 1px solid #888;
 border-radius: 3px;
 }

#my_modal .modal_close_btn {
  position: absolute;
  top: 10px;
  right: 10px;
 }
 
*  {margin:0;padding:0;}

ul li {
list-style-type: none;
}


/* 사이드바 */
header label.menu {
position:absolute;
margin-top:50px; right:155px;
transform:translateY(-50%);
width:56px;height:78px;
background:url('./img/thirdpage/사이드바_메뉴바.png') 0 0 no-repeat;
background-size : 29px;
cursor:pointer;}

.sidebar_content {
position:fixed;top:0;right:-300px;width:300px;height:100%;background:#fff;transition:all .35s;z-index:5;
}


#sno{
  font-size: 20px;
  color: #5f3d79;

}

/* 프로필사진 둥글게 만들어주는 작업 */
.box {
   margin-left:50px;
    width: 100px;
    height: 100px; 
    border-radius: 70%;
    overflow: hidden;
}
.profile {
  margin-left:50px;
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.sidebar_profile {
 font-size: 10px;
 color: #d9d9d9;
 margin-left:50px;
 font-weight : bold ;
}


.sidebar_menu > ul {margin:20px;}
.sidebar_menu > ul > li {border-bottom:1px solid #ccc;list-style:none; }
.sidebar_menu > ul > li > a {display:inline-block;width:auto;color:black;padding:10px;margin:10px;background:#fff; }
.sidebar_menu label[for*='sidebar'] {position:absolute;top:0;left:0;width:100%;height:100%;z-index:-1;}



.sidebar_above{margin-top: 3%; margin-left: 5%; margin-right: 5%}


#under {background-color:  #f5f5f5;
        padding: 5px;  border: 3px solid #f5f5f5; border-right:0px; border-left:0px; box-shadow: 1px 3px 3px 0px #f5f5f5;}
        
        
.sidebar_under1 {
color: inherit;
    text-decoration: none;
    color: #1a1a1a;
    display: inline-block;
    position: relative;
    text-align: center;
}

.sidebar_under p {

font-size: 12px;
}

/* */


/* 사이드바 외 배경영역 */
.background {position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,.8);transition:all .35s;opacity:0;visibility:hidden;z-index:1;}


/* input 체크 */
input#sidebar {display:none;}
input#sidebar:checked ~ header label {background-position:-34px 0;}
input#sidebar:checked ~ .sidebar_content {right:0;}
input#sidebar:checked ~ .background  {opacity:1;visibility:visible;}

/* 오른쪽 메뉴바 */
.HomeTitle_right {
    position: absolute;
    top: 0;
    right: 100px;
    z-index: 20;
    outline: none;
    cursor: pointer;
    color: #000;
}
.HomeTitle_button{
    border: none;
    background: none;
    width:40px;
    height:40px;
    outline: none;
    cursor: pointer;
    color: #000;
    
}

.category{
margin-right:20px;
}

.category_2{
margin-right:30px;
}

a, button {
    color: #000;
}

button {
    outline: none;
    cursor: pointer;
}

a, button {
    color: #000;
}

button {
    outline: none;
    cursor: pointer;
}

   /* 본문영역 */
   .container {z-index: 0;}  
   .container img {max-width:100%; }
   body {
    min-width: 1200px;
    font-family: 'Lora','Iropke Batang','Nanum Gothic',sans-serif !important;
} 
   body, code {
    font: 0.75em Verdana,Dotum,AppleGothic,sans-serif;
    color: #8c6f6b;

}


/*  본문 중앙으로 위치하게 만드는 아이 */
  #contents {
    width: 70%;
    margin: 0 auto;
    margin-bottom: 200px;
}


<!--footer--!>
footer {
    width: 100%;
    height: 99999px; /* footer의 높이 */
    position: absolute;  
    bottom: 0;
    left: 0;
  
}

.HomeQuickCategory_container {
    position: relative;
    width: 100%;
    background: #fff;
    padding: 1.2rem 0 1.6rem;
    margin: 0 auto;
    font-size: 1.1rem;
    font-weight: 700;
}

/* 카테고리 */
.HomeQuickCategory_recommendBWrap {
    margin: 0 auto;
    max-width: 76.8rem;
    width: calc(100% - 4rem);
    height: 6.6rem;
    display: -webkit-flex;
    display: flex;
    -webkit-justify-content: space-around;
    justify-content: space-around;
    -webkit-align-items: flex-end;
    align-items: flex-end;
    border: 1px solid #e6e6e6;
    border-radius: 0.4rem;
}
.HomeQuickCategoryItem_businessItemA__3__em {
    color: inherit;
    text-decoration: none;
    color: #1a1a1a;
    display: inline-block;
    position: relative;
    text-align: center;
    padding-top: 1.3rem;
    min-width: 5.8rem;
}
a {
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -webkit-tap-highlight-color: rgba(255,255,255,0);
    cursor: pointer;
}
.HomeQuickCategory_recommendBWrap__2Ym62 {
    margin: 0 auto;
    max-width: 76.8rem;
    width: calc(100% - 4rem);
    height: 6.6rem;
    display: -webkit-flex;
    display: flex;
    -webkit-justify-content: space-around;
    justify-content: space-around;
    -webkit-align-items: flex-end;
    align-items: flex-end;
    border: 1px solid #e6e6e6;
    border-radius: 0.4rem;
}

/* 우  */ 
.subhome{
max-width: 1200px;
    margin: 0 auto;
    padding-right: 2rem;
    padding-left: 2rem;
    margin-top:30px;
    padding-bottom: 2rem;
}

*, :after, :before {
    box-sizing: inherit;
}
section {
    display: block;
} 	

.subhome_heading {
    font-size: 15px;
    font-weight: 700;
    line-height: 2.4rem;
    overflow: hidden;
    padding: 0.8rem 0;
    text-overflow: ellipsis;
}


.SubhomeThemedItems_nav__fqPbx {
    border-color: rgba(51,51,51,.1);
    border-style: solid;
    border-width: 1px 0;
    display: -webkit-flex;
    display: flex;
    padding: 0 0.75rem;
    -webkit-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
.SubhomeThemedItems_navItemName__1ZZhb {
    height: 3.6rem;
    color: #616161;
    display: -webkit-flex;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    font-size: 1.3rem;
    font-weight: 300;
    position: relative;
}

.SubhomeThemedItems_navItem__hqrNt {
    border-radius: 0.8rem;
    width: 100%;
    cursor: pointer;
    display: -webkit-flex;
    display: flex;
    -webkit-justify-content: center;
    justify-content: center;
    padding: 0 0.75rem;
    position: relative;
}

.SubhomeThemedItems_navItemActive__3ulAC {
    color: #2e2e2e;
    font-weight: 700;
}

<!-- 자세한 숙소 ->
.wp-block-columns:not(.is-not-stacked-on-mobile)>.wp-block-column:not(:only-child) {
    flex-basis: calc(50% - var(--wp--style--block-gap, 2em)/2)!important;
    flex-grow: 0;
}
.wp-block-column{
   margin-top: 10px;
}

.inspiration-image-container {
    position: relative;
    font-family: -apple-system,BlinkMacSystemFont,Roboto,Oxygen,Ubuntu,Cantarell,Fira Sans,Droid Sans,Helvetica Neue,Arial,sans-serif;
    border-radius: 6px;
}

.inspiration-image-container .inspiration-image-content .inspiration-image {
    position: absolute;
    height: 100%;
    width: 100%;
    left: 0;
    bottom: 0;
    background-size: cover;
    background-position: 50%;
    opacity: .9;
}

script {
    display: none;
}
.inspiration-image-container .inspiration-image-content .inspiration-image-scrim:before {
    border-radius: 0 0 6px 6px;
    content: "";
    bottom: 0;
    left: 0;
    background: linear-gradient(180deg,rgba(82,76,97,0) 0,rgba(82,76,97,.8));
    display: block;
    height: 100%;
    width: 100%;
}

.inspiration-image-container .inspiration-image-content .inspiration-image-scrim {
    position: absolute;
    width: 100%;
    height: 50%;
    left: 0;
    bottom: 0;
    vertical-align: bottom;
}

.inspiration-image-container .inspiration-image-content .inspiration-image-scrim .inspiration-image-title-container {
    position: absolute;
    bottom: 12px;
    right: 12px;
    left: 12px;
}

.inspiration-image-container .inspiration-image-content .inspiration-image-scrim .inspiration-image-title-container h4 {
    line-height: 24px;
    margin: 0;
    position: relative;
    padding: 0;
    display: inline-block;
    color: #fff;
    font-weight: 400;
    -webkit-font-smoothing: antialiased;
    background: 0 0;
    width: 100%;
}

.inspiration-image-container .inspiration-image-content .inspiration-image-scrim .inspiration-image-title-container .inspiration-image-title .inspiration-image-city {
    font-size: 20px;
}

.inspiration-image-container .inspiration-image-content h4 {
    font-size: 15px;
}

.inspiration-image-container .inspiration-image-content .inspiration-image-scrim .inspiration-image-title-container h4 {
    line-height: 24px;
    margin: 0;
    position: relative;
    padding: 0;
    display: inline-block;
    color: #fff;
    font-weight: 400;
    -webkit-font-smoothing: antialiased;
    background: 0 0;
    width: 100%;
}

.inspiration-image-container .inspiration-image-content .inspiration-image-scrim .inspiration-image-title-container .inspiration-image-title h4:after {
    content: "";
    display: block;
    height: 1px;
    width: 100%;
    margin: 3px 0;
    background: #fff;
}

.inspiration-image-container .inspiration-image-content .inspiration-image-scrim .inspiration-image-title-container .inspiration-image-subtitle button.inspiration-image-tertiary {
    cursor: pointer;
    padding: 0;
    border: none;
    background: 0 0;
}
#login{background-color:#a7a9da;width:40%; height:20px; border: 1px gray;}

#member_info{background-color:#a7a9da;width:30%;border: 1px gray;}


<!--글씨-->

 .name.no-event a{
 color: #fff;
}

 .name.no-event {
    bottom: 11px;
}

 .name strong {
    display: block;
    height: 27px;
    margin-top: 8px;
    font-size: 22px;
    line-height: 1;
     color: #fff;
}

 .name p { 
    overflow: hidden;
    margin-top: 2px;
    height: 17px;
    font-size: 14px;
    text-overflow: ellipsis;
    word-break: keep-all;
    white-space: nowrap;
     color: #fff;
}
.price {
    position: absolute;
    bottom: 35px;
    right: 16px;
    text-align: right;
} 

.price.no-event {
    bottom: 2px;
}


.in_box{
 width : 175px;
  height: 50px;
  background-color: #fff;
  float:left;
  text-align: center;
  background: #f09433; 
background: -moz-linear-gradient(45deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%); 
background: -webkit-linear-gradient(45deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%); 
background: linear-gradient(45deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%); 
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f09433', endColorstr='#bc1888',GradientType=1 );
 margin-top: 350px;
}


.in_box img {
  margin-top: 5px;

}


.na_box{
 width : 175px;
  height: 50px;
  background-color: #fff;
  float:left;
  text-align: center;
   background-color: #03c75b;
   margin-top: 350px;
}


.na_box img {
  margin-top: 5px;
  

}


.hotel {
 float:left;
 margin-left: 10px;
 margin-right: 10px;
}

.inspiration-image-container{
height: 350px; width: 380px;

}

</style> 
</head>

<body>
<input type="checkbox" id="sidebar">
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
 </header>
 
 
 
   <!-- 로고  -->
   <div style="background: #F7F7FF;text-align: center; height: 80px;" >
      <a href="/main3" > <img id="logo" src="/img/logo/최종로고.png" alt="main_logo"/> </a>
   </div>
 </div>
 </div>

 
 	<!-- 헤더 컨테이너  -->
<nav class="container mt-3" style="margin-left: 10%;">
 	 <ul class="nav nav-tabs" role="">
  		  <li class="nav-item">
     		 <a class="nav-link" style="font-size:large;color:#a098ef;" href="/sub_hotel">호텔</a>
   		 </li>
   		 <li class="nav-item">
    		  <a class="nav-link" style="font-size:large;color:#a098ef;"  href="/sub_taste">맛집</a>
   		 </li>
   		 <li class="nav-item">
     		 <a class="nav-link" style="font-size:large;color:#a098ef;" href="/sub_cafe">카페</a>
   		 </li>
  		 <li class="nav-item">
     		 <a class="nav-link" style="font-size:large;color:#a098ef;" href="/sub_travel">관광지</a>
   		 </li>
    </ul>
</nav>
   
<!-- 사이드바 -->
<div class="sidebar_content">

  <div class="container">
   <div class="sidebar_profile" >
   		<%if(user!= null){ %>
   		 <a href="/member_info"><h5><%=user.getId()%>님 환영합니다.</h5></a>
   		 	<%if(user.getProfile()!=null){ %>
    	<img src="data:/png;base64,<%=Base64.encodeBytes(user.getProfile())%>" style="width:100px;height:100px;"/><br>
    	 <%}else{ %>
    	<a href="#"><img class="profile" style="width:100px;height:100px;" src="../img/thirdpage/사이드바_임시프로필2.png" ></a>
    	 <%} %>
    	
    	<a href="/logout"> <button type="button" style="margin-left:10%;margin-top: 10%;" class="badge rounded-pill" id="login" value="logout"> 로그아웃  </button></a>
    	<a href="/member_info"><button type="button" class="badge rounded-pill" id="member_info" value="info"> 내정보  </button></a>
    	
         <%}else{ %>
   		<a href="/login"><h5 style="margin-top:7px;">로그인이 필요합니다!</h5></a>
  		 <a href="#"><img class="profile" style="width:100px;height:100px;" src="../img/thirdpage/사이드바_임시프로필2.png" ></a>
  		 <%} %>
    </div>
  </div>

 <div class="sidebar_menu">
  <ul>
  <li><a></a></li>
     <li><a href="#">내 일정 <img alt="" src="../img/thirdpage/사이프바_다음 화살표.png"  width="7%" height="10%" style="float: right; margin-top: 4px;"></a></li>
     <li><a href="#">즐겨찾기<img alt="" src="../img/thirdpage/사이프바_다음 화살표.png"  width="7%" height="10%" style="float: right; margin-top: 4px;"></a></li>
     <li><a href="#">쿠폰함<img alt="" src="../img/thirdpage/사이프바_다음 화살표.png"  width="7%" height="10%" style="float: right; margin-top: 4px;"></a></li>
  </ul>
   <label for ="sidebar"></label>
   </div>
 
 
 <p id="under"></p><br>
   <table class="sidebar_under">
    <tr>
        <td><a href="/notices" class="sidebar_under1"><img src="../img/thirdpage/사이드바 공지사항_.png" width="40%" height="40%" ><p>공지사항</p></a></td>
        <td><a href="/boards/1" class="sidebar_under1" style="left:-8px;"><img src="../img/thirdpage/사이드바_Q&A1.png" width="40%" height="40%" ><p>Q&A</p></a></td>
        <td><img id="popup_open_btn" src="../img/thirdpage/사이드바_고객센터 (1).png" style="cursor: pointer; "width="40%" height="40%" ><p>고객센터</p></td>
    </tr>
   </table>
</div>


<!-- 사이드바 외 영역  " 고객센터 "" -->
  <label for ="sidebar" class="background"></label>
 <div id="my_modal"><p>
 	    고객상담 직원 명단<br><br>
 	    원하는 직원을 골라서 전화해주세요:)<br><br>
           조인혁 : 010-9291-6096<br>
           심소윤 : 010-7400-5475<br>
           조유진 : 010-2616-3049<br>
           노준수 : 010-4732-1713</p>
            <a class="modal_close_btn" style="cursor: pointer;">닫기</a>
        </div>
 
<script>
function modal(id) {
                var zIndex = 9999;
                var modal = document.getElementById(id);

                // 모달 div 뒤에 희끄무레한 레이어
                var bg = document.createElement('div');
                bg.setStyle({
                    position: 'fixed',
                    zIndex: zIndex,
                    left: '0px',
                    top: '0px',
                    width: '100%',
                    height: '100%',
                    overflow: 'auto',
                    // 레이어 색갈은 여기서 바꾸면 됨
                    backgroundColor: 'rgba(0,0,0,0.4)'
                });
                document.body.append(bg);

                // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
                modal.querySelector('.modal_close_btn').addEventListener('click', function() {
                    bg.remove();
                    modal.style.display = 'none';
                });

                modal.setStyle({
                    position: 'fixed',
                    display: 'block',
                    boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

                    // 시꺼먼 레이어 보다 한칸 위에 보이기
                    zIndex: zIndex + 1,

                    // div center 정렬
                    top: '50%',
                    left: '50%',
                    transform: 'translate(-50%, -50%)',
                    msTransform: 'translate(-50%, -50%)',
                    webkitTransform: 'translate(-50%, -50%)'
                });
            }

            // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
            Element.prototype.setStyle = function(styles) {
                for (var k in styles) this.style[k] = styles[k];
                return this;
            };

            document.getElementById('popup_open_btn').addEventListener('click', function() {
                // 모달창 띄우기
                modal('my_modal');
            });
        </script>
  
<!-- 헤더 컨테이너  -->
<section class="subhome">


<!-- 맛집 정보  -->
<div class="hotel">
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 350px;">

		<a target="_blank" href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/1822217145?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14314006.6715030,4610380.2422022,15,0,0,0,dh">
		<div class="inspiration-image-content">
		<div class="inspiration-image transition" style="background-image: url(./img/맛집/만석찜가.jpg);">
		</div>
		<div class="inspiration-image-scrim"><div class="inspiration-image-title-container"><div class="inspiration-image-title">
		 
		<div class="name no-event">
         <strong>만석찜가</strong>
          <p> 속초시 동명동   </p>
          
          <div class="price no-event">
          <div class="map_html">
        
          
        
  </div></div></div></div></div></div></div></a>

		<div class="na_box" style="margin-top: 350px;" ><a href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/1822217145?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14314006.6715030,4610380.2422022,15,0,0,0,dh">
		<img src="/img/hotel/네이버2.png" alt="네이버" width="40px;" height="40px;">
		
		
		</a></div>
		<div class="in_box" style="margin-top: 350px;"><a href="naver.com">
			<img src="/img/hotel/인스타1.png" alt="인스타" width="40px;" height="40px;" >
		
		</a></div>
	
		
	
	</div></div></div>
	
	
<div class="hotel">
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 350px;">

		<a target="_blank" href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/13119461?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14306100.2603292,4608643.0822391,15,0,0,0,dh">
		<div class="inspiration-image-content">
		<div class="inspiration-image transition" style="background-image: url(./img/맛집/소야촌.jpg);">
		</div>
		<div class="inspiration-image-scrim"><div class="inspiration-image-title-container"><div class="inspiration-image-title">
		 
		<div class="name no-event">
         <strong>소야촌</strong>
          <p> 속초시 노학동   </p>
          
          <div class="price no-event">
          <div class="map_html">
          
     </div></div></div></div></div></div></div></a>

		<div class="na_box" style="margin-top: 350px;" ><a href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/13119461?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14306100.2603292,4608643.0822391,15,0,0,0,dh">
		<img src="/img/hotel/네이버2.png" alt="네이버" width="40px;" height="40px;">
		
		
		</a></div>
		<div class="in_box" style="margin-top: 350px;"><a href="naver.com">
			<img src="/img/hotel/인스타1.png" alt="인스타" width="40px;" height="40px;" >
		
		</a></div>
	
		
	
	</div></div></div>
	
	<div class="hotel">
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 350px;">

		<a target="_blank" href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/33257241?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14315457.9548365,4604156.1249424,15,0,0,0,dh">
		<div class="inspiration-image-content">
		<div class="inspiration-image transition" style="background-image: url(./img/맛집/일출횟집.jpg);">
		</div>
		<div class="inspiration-image-scrim"><div class="inspiration-image-title-container"><div class="inspiration-image-title">
		 
		<div class="name no-event">
         <strong>일출 횟집</strong>
          <p> 속초시 대포동  </p>
          
          <div class="price no-event">
          <div class="map_html">
      </div></div></div></div></div></div></div></a>

		<div class="na_box" style="margin-top: 350px;" ><a href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/33257241?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14315457.9548365,4604156.1249424,15,0,0,0,dh">
		<img src="/img/hotel/네이버2.png" alt="네이버" width="40px;" height="40px;">
		
		
		</a></div>
		<div class="in_box" style="margin-top: 350px;"><a href="naver.com">
			<img src="/img/hotel/인스타1.png" alt="인스타" width="40px;" height="40px;" >
		
		</a></div>
	
		
	
	</div></div></div>

	
	<div class="hotel">
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 350px;">

		<a target="_blank" href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/11815720?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14313860.4088241,4608246.8490649,15,0,0,0,dh">
		<div class="inspiration-image-content">
		<div class="inspiration-image transition" style="background-image: url(./img/맛집/88생성구이.jpg);">
		</div>
		<div class="inspiration-image-scrim"><div class="inspiration-image-title-container"><div class="inspiration-image-title">
		 
		<div class="name no-event">
         <strong>88생성구이</strong>
          <p> 속초시 중앙동   </p>
          
          <div class="price no-event">
          <div class="map_html">
  </div></div></div></div></div></div></div></a>

		<div class="na_box" style="margin-top: 350px;" ><a href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/11815720?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14313860.4088241,4608246.8490649,15,0,0,0,dh">
		<img src="/img/hotel/네이버2.png" alt="네이버" width="40px;" height="40px;">
		
		
		</a></div>
		<div class="in_box" style="margin-top: 350px;"><a href="naver.com">
			<img src="/img/hotel/인스타1.png" alt="인스타" width="40px;" height="40px;" >
		
		</a></div>
	
		
	
	</div></div></div>
	
	<div class="hotel">
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 350px;">

		<a target="_blank" href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/31329578?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14313297.4995550,4606344.1927437,15,0,0,0,dh">
		<div class="inspiration-image-content">
		<div class="inspiration-image transition" style="background-image: url(./img/맛집/만석닭강정본점.jpg);">
		</div>
		<div class="inspiration-image-scrim"><div class="inspiration-image-title-container"><div class="inspiration-image-title">
		 
		<div class="name no-event">
         <strong>만석닭강정 본점 </strong>
          <p> 속초시 조양동   </p>
          
          <div class="price no-event">
          <div class="map_html">
         </div></div></div></div></div></div></div></a>
		<div class="na_box" style="margin-top: 350px;" ><a href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/31329578?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14313297.4995550,4606344.1927437,15,0,0,0,dh">
		<img src="/img/hotel/네이버2.png" alt="네이버" width="40px;" height="40px;">
		
		
		</a></div>
		<div class="in_box" style="margin-top: 350px;"><a href="naver.com">
			<img src="/img/hotel/인스타1.png" alt="인스타" width="40px;" height="40px;" >
		
		</a></div>
	
		
	
	</div></div></div>
	
		<div class="hotel">
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 350px;">

		<a target="_blank" href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/1639437051?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14315479.2613870,4604166.1364029,15,0,0,0,dh">
		<div class="inspiration-image-content">
		<div class="inspiration-image transition" style="background-image: url(./img/맛집/먹자대게.jpg);">
		</div>
		<div class="inspiration-image-scrim"><div class="inspiration-image-title-container"><div class="inspiration-image-title">
		 
		<div class="name no-event">
         <strong>먹자대게</strong>
          <p> 속초시 대포동   </p>
          
          <div class="price no-event">
          <div class="map_html">
            </div></div></div></div></div></div></div></a>

		<div class="na_box" style="margin-top: 350px;" ><a href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/1639437051?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14315479.2613870,4604166.1364029,15,0,0,0,dh">
		<img src="/img/hotel/네이버2.png" alt="네이버" width="40px;" height="40px;">
		
		
		</a></div>
		<div class="in_box" style="margin-top: 350px;"><a href="naver.com">
			<img src="/img/hotel/인스타1.png" alt="인스타" width="40px;" height="40px;" >
		
		</a></div>
	
		
	
	</div></div></div>
	
	<div class="hotel">
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 350px;">

		<a target="_blank" href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/11711552?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14315479.2613870,4604166.1364029,15,0,0,0,dh">
		<div class="inspiration-image-content">
		<div class="inspiration-image transition" style="background-image: url(./img/맛집/단천식당.jpg);">
		</div>
		<div class="inspiration-image-scrim"><div class="inspiration-image-title-container"><div class="inspiration-image-title">
		 
		<div class="name no-event">
         <strong>단천식당  </strong>
          <p> 속초시 청호동   </p>
          
          <div class="price no-event">
          <div class="map_html">
        </div></div></div></div></div></div></div></a>

		<div class="na_box" style="margin-top: 350px;" ><a href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/11711552?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14315479.2613870,4604166.1364029,15,0,0,0,dh">
		<img src="/img/hotel/네이버2.png" alt="네이버" width="40px;" height="40px;">
		
		
		</a></div>
		<div class="in_box" style="margin-top: 350px;"><a href="naver.com">
			<img src="/img/hotel/인스타1.png" alt="인스타" width="40px;" height="40px;" >
		
		</a></div>
	
		
	
	</div></div></div>
	
	
	
		<div class="hotel">
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 350px;">

		<a target="_blank" href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/20420854?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14314060.4944768,4608083.8553111,15,0,0,0,dh">
		<div class="inspiration-image-content">
		<div class="inspiration-image transition" style="background-image: url(./img/맛집/봉포머구리집.jpg);">
		</div>
		<div class="inspiration-image-scrim"><div class="inspiration-image-title-container"><div class="inspiration-image-title">
		 
		<div class="name no-event">
         <strong>봉포머구리집</strong>
          <p> 속초시 영랑동   </p>
          
          <div class="price no-event">
          <div class="map_html">
           </div></div></div></div></div></div></div></a>

		<div class="na_box" style="margin-top: 350px;" ><a href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91/place/20420854?placePath=%3Fentry%253Dbmp&n_ad_group_type=10&n_query=%EC%86%8D%EC%B4%88%EB%A7%9B%EC%A7%91&c=14314060.4944768,4608083.8553111,15,0,0,0,dh">
		<img src="/img/hotel/네이버2.png" alt="네이버" width="40px;" height="40px;">
		
		
		</a></div>
		<div class="in_box" style="margin-top: 350px;"><a href="naver.com">
			<img src="/img/hotel/인스타1.png" alt="인스타" width="40px;" height="40px;" >
		
		</a></div>
	
		
	
	</div></div></div>
	
		
	

</section>





</body>
</html>