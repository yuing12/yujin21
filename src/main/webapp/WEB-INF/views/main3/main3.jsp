<%@page import="com.stone.mosttour.common.Tourlocal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="net.iharder.Base64"%>
<%@page import="com.stone.member.common.Member"%>
<%@page import="com.stone.simple.common.VillageWeather"%>
<%@page import="com.stone.simple.common.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
	VillageWeather	w =	(VillageWeather)request.getAttribute("vl"); 
		String local_name =(String)request.getAttribute("local_name");
	Member user = (Member)request.getAttribute("user"); 
	int mosttrue = (int)request.getAttribute("mosttrue");
	List<Tourlocal> mostlocal = (ArrayList<Tourlocal>)request.getAttribute("mostlocal");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<title>어디가지?</title>

<style type="text/css">
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
 width: 400px;
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

/* ------------------------- */

*  {margin:0;padding:0;}

 a{
 text-decoration: none;
 }

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
.sidebar_under {
margin-left: 15%;

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
margin-left:10px;
}

.category_2{
margin-right:30px;
margin-left:10px;
}

a, button {
    color: #000;
}

button {
    outline: none;
    cursor: pointer;
}

/* 본문영역 */
/*  본문 중앙으로 위치하게 만드는 아이 */
  #contents {
   max-width:1200px;margin:0 auto;
}
   #contents img {max-width:100%; }


/* 카테고리 */
.categoryItem{
    color: inherit;
    text-decoration: none;
    color: #1a1a1a;
    display: inline-block;
    position: relative;
    text-align: center;
    padding-top: 1.3rem;
    margin-right: 15px;

    
}
.category_container a {
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -webkit-tap-highlight-color: rgba(255,255,255,0);
    cursor: pointer;
}

.coupon {
margin-top:6%;
margin-left:24%;
margin-bottom: 3%;
width:50%;
height: 40%;
display: -webkit-flex;
display: flex;
align-items: flex-end;
border: 1px solid #e6e6e6; 
border-radius: 0.4rem;
}

#login{background-color:#a7a9da;width:40%; height:20px; border: 1px gray;}

#member_info{background-color:#a7a9da;width:30%;border: 1px gray;}






<!-- 순위 스타일 -->

.wp-block-columns:not(.is-not-stacked-on-mobile)>.wp-block-column:not(:only-child) {
    flex-basis: calc(50% - var(--wp--style--block-gap, 2em)/2)!important;
    flex-grow: 0;
}
.wp-block-column{
   margin-top: 10px;
}

.inspiration-image-container {
    position: relative;
    overflow: hidden;
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
</style>

</head>

<body>

<!-- 헤더 영역 -->
<input type="checkbox" id="sidebar">
	<!-- 헤더 컨테이너  -->
 <header class="header">
<div class="container-fluid">
 	 <div class="title">
 	  <!-- 뒤로가기 버튼 -->
  	<div class="title_left"> 
               <a href="/prepare" class="back" >
               <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
</svg></a>
      </div>
	</div>
      
   <!-- 로고  -->
   <div style="background: #F7F7FF;text-align: center; height: 70px;margin-bottom: 10px;" >
   	<a href="/main3" > <img id="logo" src="/img/logo/최종로고.png" alt="main_logo"/> </a>
	</div>
	   <div class="HomeTitle_right">
   		<label for="sidebar" class="menu"></label>

   </div>
</div>
</header>

    <!-- 오른쪽 메뉴  -->

<!-- 사이드바 -->
<div class="sidebar_content">

  <div class="container">
   <div class="sidebar_profile" >
   		<%if(user!= null){ %>
   		 <a href="/member_info"><h5><%=user.getId()%>님 환영합니다.</h5></a>
   		 	<%if(user.getProfile()!=null){ %>
    	<img src="data:/png;base64,<%=Base64.encodeBytes(user.getProfile())%>" style="width:100px;height:100px;"/><br>
    	 <%}else{ %>
    	<a href="/member_info"><img class="profile" style="width:100px;height:100px;" src="../img/thirdpage/사이드바_임시프로필2.png" ></a>
    	 <%} %>
    	
    	<a href="/logout"> <button type="button" style="margin-left:10%;margin-top: 10%;" class="badge rounded-pill" id="login" value="logout"> 로그아웃  </button></a>
    	<a href="/member_info"><button type="button" style="height: 20px; width: 85px;" class="badge rounded-pill" id="member_info" value="info"> 내정보  </button></a>
    	
         <%}else{ %>
   		<a href="/login"><h5 style="margin-top:35px;">로그인이 필요합니다!</h5></a>
  		 <a href="/login"><img class="profile" style="width:100px;height:100px;" src="../img/thirdpage/사이드바_임시프로필2.png" ></a>
  		 <%} %>
    </div>
  </div>

 <div class="sidebar_menu">
  <ul>
     <li><a href="/cal">내 일정 <img alt="" src="../img/thirdpage/사이프바_다음 화살표.png"  width="7%" height="10%" style="float: right; margin-top: 4px;"></a></li>
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
  
<!-- 카테고리 -->
<nav id="contents" style="margin-top:20px;" class="category_container">
<div style="text-align: center; margin-bottom:50px;"> 현재  <%=local_name %> 날씨는&nbsp;


<%if(w.sky.equals("1")){%>
	
	<img src="/img/weather/sun.png">
<% }else if(w.sky.equals("3")){%>

	<img src="/img/weather/cloud.png">

<%}else if(w.sky.equals("4")){ %>

	<img src="/img/weather/manycloud.png">

<%} %>
</div>

<div class="category_box">
<!-- 1줄 -->
<div style="text-align: center;">
	<a href="/sub_hotel" class="categoryItem">
	<img src="/img/thirdpage/category/hotel.png" class="category" alt="호텔" width="120px;" height="120px;">
	<p>호텔</p>
	</a>
	<a href="/sub_taste" class="categoryItem">
	<img src="/img/thirdpage/category/dish.png" alt="맛집"  class="category"  width="120px;" height="120px;">
	<p>맛집</p>
	</a>
	<a href="/sub_cafe" class="categoryItem">
	<img src="/img/thirdpage/category/coffee.png" alt="카페"  class="category"  width="120px;" height="120px;">
	<p>카페</p>
	</a>
<!-- 	<a href="/sub_mostTour" class="categoryItem"> -->
<!-- 	<img src="/img/thirdpage/category/map.png" alt="인기여행지" width="120px;" height="120px;"> -->
<!-- 	<p>인기여행지</p> -->
<!-- 	</a> -->
</div>

<!-- 2줄 -->
<div style="text-align: center;">
	<a href="/sub_travel" class="categoryItem">
	<img src="/img/thirdpage/category/premium-icon-earth-477975.png" class="category_2" alt="관광지" width="120px;" height="120px;">
	<p>관광지</p>
	</a>
	<a href="/tourboards/1" class="categoryItem">
	<img src="/img/thirdpage/category/tour.png" alt="랜선투어" class="category_2" width="120px;" height="120px;">
	<p>랜선투어</p>
	</a>
	<a href="/cal" class="categoryItem">
	<img src="/img/thirdpage/category/calendar.png" style="margin-right: 15px;"alt="일정 " class="category_2" width="120px;" height="120px;">
	<p>일정</p>
	</a>
</div>

<!--  3줄 (쿠폰)  -->



<div class="coupon">
    <div class="col-sm-3 p-3"><a href="/sub_coupon" >
		<img src="https://yaimg.yanolja.com/v5/2020/05/14/17/5ebd08056519c5.95575485.png" alt="선착순쿠폰" style="margin-left: 25%" width="70px;"height="70px;"><br>
		<span style="font-size: small;margin-left: 25%;">선착순쿠폰</span></a></div>
    <div class="col-sm-3 p-3">
		<a href="/missions" >
		<img src="/img/thirdpage/mission.jpg" alt="미션룸" style="margin-bottom: 10%" ><br>
		<span style="font-size: small;margin-left: 25%;">꿀미션룸</span></a></div>
    <div class="col-sm-3 p-3">
		<a href="#" >
		<img src="/img/thirdpage/폭죽.jpg" alt="이번달행사"><br>
		<span style="font-size: small;margin-left:15%;">이번달 행사들</span></a></div>
    <div class="col-sm-3 p-3">
		<a href="#">
		<img src="/img/thirdpage/card.jpg" alt="카드제휴할인"><br>
		<span style="font-size: small;margin-left: 25%;">제휴카드</span></a></div>
  </div>

</div>
</nav>
<%if(mosttrue>0){ %>
<div id="contents">
	<p style="font-size: 20px;">인기여행지 TOP 5</p>
	
	
	<!-- 1위 -->
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px;width: 100%;">
		<a target="_blank" href="#">
		<div class="inspiration-image-content"><div class="inspiration-image transition" style="background-image:url(img/gangwon/<%=mostlocal.get(0).getTourlocal()%>.jpg);"></div><div class="inspiration-image-scrim"><div class="inspiration-image-title-container"><div class="inspiration-image-title">
		
		<h4><span class="inspiration-image-city">1위 <%=mostlocal.get(0).getTourlocal() %> </span></h4></div><div class="inspiration-image-subtitle"><button class="inspiration-image-tertiary"><h4>미식 여행의 최적지</h4></button></div></div></div></div></a></div><script image-source="https://content.skyscnr.com/m/780e89d431147bf7/original/osaka.jpg?quality=80&amp;crop=1150px:400px" image-height="350px" image-title-city="오사카" image-title-country="일본" image-subtitle="미식 여행의 최적지" image-call-to-action-url="https://www.skyscanner.co.kr/routes/sela/kix/seoultoosakakansaiinternational.html"></script>
	</p>
	</div>
	<%if(mosttrue>1){ %>
	<!-- 2위 -->
	<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 100%;">
		<a target="_blank" href="#">
		<div class="inspiration-image-content"><div class="inspiration-image transition" style="background-image: url(img/gangwon/<%=mostlocal.get(1).getTourlocal()%>.jpg);"></div><div class="inspiration-image-scrim"><div class="inspiration-image-title-container">
		
		<div class="inspiration-image-title"><h4><span class="inspiration-image-city">2위 <%=mostlocal.get(1).getTourlocal() %> </span></h4></div><div class="inspiration-image-subtitle"><button class="inspiration-image-tertiary"><h4>골목골목, 멋이 넘치는 도시</h4></button></div></div></div></div></a></div><script image-source="https://content.skyscnr.com/m/fdb46f62f98c27d/original/tokyo.jpg?quality=80&amp;crop=1150px:400px" image-height="350px" image-title-city="도쿄" image-title-country="일본" image-subtitle="골목골목, 멋이 넘치는 도시" image-call-to-action-url="https://www.skyscanner.co.kr/routes/sela/tyoa/seoul-to-tokyo.html"></script>
	</p>
	<%if(mosttrue>2){ %>
	<!-- 3위 -->
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 100%;"><a target="_blank" href="https://www.skyscanner.co.kr/routes/sela/dmk/seoultobangkok.html"><div class="inspiration-image-content"><div class="inspiration-image transition" style="background-image: url(img/gangwon/<%=mostlocal.get(2).getTourlocal()%>.jpg);"></div><div class="inspiration-image-scrim"><div class="inspiration-image-title-container">
		
		<div class="inspiration-image-title"><h4><span class="inspiration-image-city">3위 <%=mostlocal.get(2).getTourlocal() %> </span><span class="inspiration-image-country"></span></h4></div><div class="inspiration-image-subtitle"><button class="inspiration-image-tertiary"><h4>시끌벅적, 열정의 도시</h4></button></div></div></div></div></a></div><script image-source="https://content.skyscnr.com/m/6c04e75c7553fb22/original/popular_bangkok.jpg?quality=80&amp;crop=1150px:400px" image-height="350px" image-title-city="방콕" image-title-country="태국" image-subtitle="시끌벅적, 열정의 도시" image-call-to-action-url="https://www.skyscanner.co.kr/routes/sela/dmk/seoultobangkok.html"></script>
	</p>
	<%if(mosttrue>3){ %>
<!-- 4위 -->
<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 100%;"><a target="_blank" href="https://www.skyscanner.co.kr/routes/sela/fuk/seoultofukuoka.html"><div class="inspiration-image-content"><div class="inspiration-image transition" style="background-image: url(img/gangwon/<%=mostlocal.get(3).getTourlocal()%>.jpg);"></div><div class="inspiration-image-scrim"><div class="inspiration-image-title-container">
		
		<div class="inspiration-image-title"><h4><span class="inspiration-image-city">4위 <%=mostlocal.get(3).getTourlocal() %> </span><span class="inspiration-image-country"></span></h4></div><div class="inspiration-image-subtitle"><button class="inspiration-image-tertiary"><h4>소확행을 찾을 수 있는 도시</h4></button></div></div></div></div></a></div><script image-source="https://content.skyscnr.com/m/1fbe58909b40b7ea/original/fukuoka2.jpg?quality=80&amp;crop=1150px:400px" image-height="350px" image-title-city="후쿠오카" image-title-country="일본" image-subtitle="소확행을 찾을 수 있는 도시" image-call-to-action-url="https://www.skyscanner.co.kr/routes/sela/fuk/seoultofukuoka.html"></script>
	</p>
	</div>
	<%if(mosttrue>4){ %>
<!-- 5위 -->

<div class="wp-block-column">	<p>
		<div class="inspiration-image-container" style="height: 350px; width: 100%;"><a target="_blank" href="https://www.skyscanner.co.kr/routes/sela/dad/seoul-to-da-nang.html"><div class="inspiration-image-content"><div class="inspiration-image transition" style="background-image: url(img/gangwon/<%=mostlocal.get(4).getTourlocal()%>.jpg);"></div><div class="inspiration-image-scrim"><div class="inspiration-image-title-container">
		
		<div class="inspiration-image-title"><h4><span class="inspiration-image-city">5위 <%=mostlocal.get(4).getTourlocal() %> </span><span class="inspiration-image-country"></span></h4></div><div class="inspiration-image-subtitle"><button class="inspiration-image-tertiary"><h4>가족과 함께 떠나면 좋은 휴양지</h4></button></div></div></div></div></a></div><script image-source="https://content.skyscnr.com/m/16f8e454feb40813/original/danang.jpg?quality=80&amp;crop=1150px:400px" image-height="350px" image-title-city="다낭" image-title-country="베트남" image-subtitle="가족과 함께 떠나면 좋은 휴양지" image-call-to-action-url="https://www.skyscanner.co.kr/routes/sela/dad/seoul-to-da-nang.html"></script>
	</p>
	</div>

<p></p>
</div>

<p></p>
</div>
	
	</div>
	
<%}}}}} %>
</body>
</html>