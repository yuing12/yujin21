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
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

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
margin-left:27%;
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
</style>

</head>

<body>
<!-- 헤더 영역 -->
<input type="checkbox" id="sidebar">
	<!-- 헤더 컨테이너  -->
 <header class="HomeTitle_container">
  <div class="HomeTitle_title">
   <div class="HomeTitle_left">
   <button><a href="/prepare">지도 선택 다시하기</a></button>
  </div>
   <!-- 로고  -->
   <div class="HomeTitle_center">
   	<a href="/main3" class="HomeTitle_logo" >
   	  <img src="/img/logo/최종로고.png" alt="main_logo" />
   </a>
   </div>
    <!-- 오른쪽 메뉴  -->
   <div class="HomeTitle_right">
   		<label for="sidebar" class="menu"></label>

   </div>
  </div>
 </header>

<!-- 사이드바 -->
<div class="sidebar_content">

   <br>
   
   <div class="sidebar_profile" style="float: left;">
   <%if(user != null){ %>
   <tr>
   
    <h3 style="margin-left: 25px; margin-top: 7px;"><%=user.getId()%>님 환영합니다</h3><br>
    <td><a href="/logout"  style="margin-left: 25px; margin-top: 7px; top:3px;"><button class="btn btn-secondary btn-xs btn-radius" type="button" value="logout">로그아웃</button></a></td>
   <td> <a href="/member_info"  style="margin-left: 25px; margin-top: 7px;"><button type="button" value="info">내 정보</button></a></td>
   <%}else{ %>
   <a href="/login"><h3 style="margin-left: 25px; margin-top: 7px;">로그인이 필요합니다!</h3></a>
   <%} %>
   </tr>
   
    <table class="sidebar_under">
    <tr>
        <td><a href="#" class="sidebar_under1"><p id=sno>0</p><br><p>내 일정</p></a></td>
        <td><a href="#" class="sidebar_under1"><p id=sno>0</p><br><p>내 랜선투어</p></a></td>
    </tr>
   </table>
 
   </div>
  
 <div class="box" style=" float: left; margin-left: 10px; margin-top: 20px;" >
 <%if(user != null){%>
 <%if(user.getProfile()!=null){ %>
    <img src="data:/png;base64,<%=Base64.encodeBytes(user.getProfile())%>" class="profile" width="200" height="300"/>
<%}else{ %>
     <img src="/img/no_image.jpg" class="profile" width="200" height="300"/>
<%} %>
<%} %>
  <a href="#"><img class="profile" src="../img/thirdpage/사이드바_임시프로필2.png" ></a>
</div>

<br><br>

 <div class="sidebar_menu" style="margin-top: 50px;">
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
<!-- 사이드바 외 영역 -->
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
<nav id="contents" style="margin-top:20px;" class="HomeQuickCategory_container">
<div style="text-align: center;"> 현재  <%=local_name %> 날씨는&nbsp;<br><br>


<%if(w.sky.equals("1")){%>
	
	<img src="/img/weather/sun.png">
<% }else if(w.sky.equals("3")){%>

	<img src="/img/weather/cloud.png">

<%}else if(w.sky.equals("4")){ %>

	<img src="/img/weather/manycloud.png">

<%} %>
</div>
<!-- 1줄 -->
<div class="HomeQuickCategory_businessAWrap" style="text-align: center;">
	<a href="https://www.yanolja.com/hotel" class="HomeQuickCategoryItem_businessItemA__3__em">
	<img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f96126eebabc9.82379506.png" alt="호텔">
	<p>호텔</p>
	</a>
	<a href="/sub_taste" class="HomeQuickCategoryItem_businessItemA__3__em">
	<img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f96126eebabc9.82379506.png" alt="호텔">
	<p>맛집</p>
	</a>
	<a href="https://www.yanolja.com/hotel" class="HomeQuickCategoryItem_businessItemA__3__em">
	<img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f96126eebabc9.82379506.png" alt="호텔">
	<p>카페</p>
	</a>
	<a href="https://www.yanolja.com/hotel" class="HomeQuickCategoryItem_businessItemA__3__em">
	<img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f96126eebabc9.82379506.png" alt="호텔">
	<p>인기여행지</p>
	</a>

<!-- 2줄 -->
<div class="HomeQuickCategory_businessAWrap">
<!-- 	<a href="/checklist" class="HomeQuickCategoryItem_businessItemA__3__em"> -->
<!-- 	<img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f96126eebabc9.82379506.png" alt="호텔"> -->
<!-- 	<p>체크리스트</p> -->
<!-- 	</a> -->
	<a href="https://www.yanolja.com/hotel" class="HomeQuickCategoryItem_businessItemA__3__em">
	<img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f96126eebabc9.82379506.png" alt="호텔">
	<p>관광지</p>
	</a>
	<a href="/tourboards/1" class="HomeQuickCategoryItem_businessItemA__3__em">
	<img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f96126eebabc9.82379506.png" alt="호텔">
	<p>랜선투어</p>
	</a>
	<a href="/cal" class="HomeQuickCategoryItem_businessItemA__3__em">
	<img src="https://yaimg.yanolja.com/v5/2020/10/26/09/5f96126eebabc9.82379506.png" alt="호텔">
	<p>일정</p>
	</a>
</div>

<!--  3줄 (쿠폰)  -->
	<div class="HomeQuickCategory_recommendBWrap__2Ym62">
		<!-- 쿠폰1 -->
		<a href="#" class="HomeQuickCategoryItem_recommendItemB__1Ep0C HomeQuickCategoryItem_recommendBMaxFour__2-moL">
		<img src="/img/thirdpage/coupon.jpg" style="width:120px; height: 70px;"alt="선착순쿠폰"><p>선착순쿠폰</p></a>
		<!-- 쿠폰2 -->
		<a href="/missions" class="HomeQuickCategoryItem_recommendItemB__1Ep0C HomeQuickCategoryItem_recommendBMaxFour__2-moL">
		<img src="/img/thirdpage/mission.jpg" style="width:140px; height: 70px;"alt="미션룸"><p>꿀미션룸</p></a>
		<!-- 미션1 -->
		<a href="#" class="HomeQuickCategoryItem_recommendItemB__1Ep0C HomeQuickCategoryItem_recommendBMaxFour__2-moL">
		<img src="/img/thirdpage/폭죽.jpg" style="width:140px; height: 70px;"alt="이번달행사"><p>이번달 행사들</p></a>
		<!-- 미션2 -->
		<a href="#" class="HomeQuickCategoryItem_recommendItemB__1Ep0C HomeQuickCategoryItem_recommendBMaxFour__2-moL">
		<img src="/img/thirdpage/card.jpg" style="width:140px; height: 70px;"alt="카드제휴할인"><p>제휴카드</p></a>
	</div>
</div>
</nav>
</body>
</html>