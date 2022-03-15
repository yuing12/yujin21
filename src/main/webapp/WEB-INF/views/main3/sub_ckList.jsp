<%@page import="com.stone.simple.checklist.common.CheckList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
CheckList cklist = (CheckList)request.getAttribute("cklist");

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 
<title>어디가지?</title>
<style type="text/css">


ul li {
list-style-type: none;
}

.header {
   position: relative;
    width: 100%;
    font-size: 1.7rem;
    text-align: center;
    background: #F7F7FF;
    border-bottom: 1px solid #e6e6e6;
    margin: 0;
}


.title{
    position: relative;
    margin: 0 auto;
    background-color : #F7F7FF;
}

#logo{
height:80px;
width: 300px;
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

/* 숙소  */ 
.SubhomeThemedItems_container__2BOx- {
    padding-right: 2rem;
    padding-left: 2rem;
    margin-top: 1.2rem;
    padding-bottom: 2rem;
}

*, :after, :before {
    box-sizing: inherit;
}
section {
    display: block;
} 	

.subhome_heading__1-Gi8 {
    font-size: 20px;
    font-weight: 700;
    line-height: 2.4rem;
    overflow: hidden;
    padding: 0.8rem 0;
    text-overflow: ellipsis;
    white-space: nowrap;
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

.SubhomeThemedItems_body__3Mz-M {
    display: -webkit-flex;
    display: flex;
    -webkit-flex-wrap: wrap;
    flex-wrap: wrap;
}

.SubhomeThemedItems_bodyItem__2vv_m {
    width: calc(25% - 1.125rem);
    min-width: calc(25% - 1.125rem);
}
.SubhomeThemedItems_bodyItem__2vv_m:nth-child(2n) {
    margin-left: 15px;
}

.SubhomeThemedItems_bodyItem__2vv_m {
    width: 50px;
    margin-top: 15px;
}

.ThemePlaceItem_body__2BjpH {
    padding: 0.8rem 0.5rem 0;
}

.ProductBadges_container__1A4Ml {
    display: inline-block;
}
.ThemePlaceItem_title__1fyvQ {
    max-height: 3.6rem;
    display: block;
    display: -webkit-box;
    font-size: 1.4rem;
    font-weight: 500;
    line-height: 1.8rem;
    overflow: hidden;
    text-overflow: ellipsis;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
}
.ThemePlaceItem_image__2_Itg {
    border-radius: 0.4rem;
    background: 50% no-repeat;
    background-size: cover;
    padding-top: 75%;
}

.ThemePlaceItem_stats__1Fa97 {
    font-size: 1.2rem;
    margin-top: 0.2rem;
}
.ThemePlaceItem_stats__1Fa97>span:first-child {
    background-size: 1.3rem;
}
.PlaceListScore_ratingStars__1IKyk {
    display: inline-block;
    width: 6rem;
    height: 1.2rem;
    background: url(//yaimg.yanolja.com/joy/sunny/static/images/icon-score-yayellow-line-1.svg) repeat-x;
    margin-right: 0.2rem;
}
.PlaceListScore_rating__3Glxf {
    font-size: 1.2rem;
    font-weight: 700;
    margin-right: 0.2rem;
}
.PlaceListScore_stars__2qfg3 {
    display: inline-block;
    height: 1.2rem;
    background: url(//yaimg.yanolja.com/joy/sunny/static/images/icon-score-yayellow-fill.svg) repeat-x;
}


.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:10px;}
.map_wrap {float:center; width:500px;height:500px;}
#category {float:center; border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff; overflow: hidden;z-index: 2;}
#category li {float:left; list-style: none; width:50px; border-right:1px solid #acacac; padding:6px 0; text-align: center; cursor: pointer;}
#category li.on {background: #eee;}
#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
#category li:last-child{margin-right:0;border-right:0;}
#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
#category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
#category li .bank {background-position: -10px 0;}
#category li .mart {background-position: -10px -36px;}
#category li .pharmacy {background-position: -10px -72px;}
#category li .oil {background-position: -10px -108px;}
#category li .cafe {background-position: -10px -144px;}
#category li .store {background-position: -10px -180px;}
#category li.on .category_bg {background-position-x:-46px;}

.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}

#s {
border: 0px;
border-radius: 5px;
}

button:hover{
color: white;
background-color: skybule;
}
button {
border:1px solid skyblue;
border-radius: 5px;
text-decoration: line-through text-decoration;
}

footer{
position : absolute;
bottom : 5%;
}

input[type="checkbox"]{

zoom: 1.2;
position: relative;
  top: 3px;

}
input[id="id1"] {
  
}
 #btn-primary{
position: absolute;
background-color: #a7a9da;
 border:1px solid #ced4da; 
 left: 250px;
 top: 430px;
 
 }  
</style>
<script type="text/javascript">
function setBg(t) {
	td=t.parentNode;
td.style.backgroundColor = (t.checked)? "#F7F7FF" :"white";
	}

$(document).ready(function() {
	
	let text1 = '<%=cklist.getFirstlistblank()%>';
	let text2 = '<%=cklist.getSecondlistblank()%>';
	let text3 = '<%=cklist.getThirdlistblank()%>';
	let text4 = '<%=cklist.getFourthlistblank()%>';
	
	<%if(cklist.getId()){%>
	$("#id1").attr("checked", "checked");
	<%} if(cklist.getCreditcardcash()){%>
	$("#id2").attr("checked", "checked");
	<%} if(cklist.getCharger()){%>
	$("#id3").attr("checked", "checked");
	<%} if(cklist.getPortablecharger()){%>
	$("#id4").attr("checked", "checked");
	<%} if(cklist.getMask()){%>
	$("#id5").attr("checked", "checked");
	<%} if(cklist.getUmbrella()){%>
	$("#id6").attr("checked", "checked");
	<%} if(cklist.getCamera()){%>
	$("#id7").attr("checked", "checked");
	<%} if(cklist.getCloth()){%>
	$("#id8").attr("checked", "checked");
	<%} if(cklist.getPajamas()){%>
	$("#id10").attr("checked", "checked");
	<%} if(cklist.getUnderwear()){%>
	$("#id11").attr("checked", "checked");
	<%} if(cklist.getSocks()){%>
	$("#id12").attr("checked", "checked");
	<%} if(cklist.getSecondlistblank() != null){%>
	$("#id13").attr("checked", "checked");
	$("#id14").attr("placeholder", text2);
	<%} if(cklist.getToothbrush()){%>
	$("#id15").attr("checked", "checked");
	<%} if(cklist.getShowersupplies()){%>
	$("#id16").attr("checked", "checked");
	<%} if(cklist.getCosmetics()){%>
	$("#id17").attr("checked", "checked");
	<%} if(cklist.getDryer()){%>
	$("#id18").attr("checked", "checked");
	<%} if(cklist.getShaver()){%>
	$("#id19").attr("checked", "checked");
	<%} if(cklist.getThirdlistblank() != null){%>
	$("#id20").attr("checked", "checked");
	$("#id21").attr("placeholder", text3);
	<%} if(cklist.getEmergencymedicine()){%>
	$("#id22").attr("checked", "checked");
	<%} if(cklist.getTissue()){%>
	$("#id23").attr("checked", "checked");
	<%} if(cklist.getEyepatch()){%>
	$("#id24").attr("checked", "checked");
	<%} if(cklist.getNeckpillow()){%>
	$("#id25").attr("checked", "checked");
	<%} if(cklist.getBlanket()){%>
	$("#id26").attr("checked", "checked");
	<%} if(cklist.getFourthlistblank() != null){%>
	$("#id27").attr("checked", "checked");
	$("#id28").attr("placeholder", text4);
	<%}%>
})

$(document).ready(function() {
			$("#cbx_chkAll").click(function() {
				if($("#cbx_chkAll").is(":checked")) $("input[name=checkvalue]").prop("checked", true);
				else $("input[name=checkvalue]").prop("checked", false);
			});
			
			$("input[name=checkvalue]").click(function() {
				var total = $("input[name=checkvalue]").length;
				var checked = $("input[name=checkvalue]:checked").length;
				
				if(total != checked) $("#cbx_chkAll").prop("checked", false);
				else $("#cbx_chkAll").prop("checked", true); 
			});
		});
</script>
</head>

<body>
<!-- 헤더 영역 -->
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
<!-- 헤더 컨테이너  -->
<section class="SubhomeThemedItems_container__2BOx-">
	<header class="SubhomeThemedItems_header__3G0Jp">
		<h2 class="subhome_heading__1-Gi8"> </h2>
	</header>
	<!-- 헤더 컨테이너  -->
	<nav class="SubhomeThemedItems_nav__fqPbx">
		<div class="SubhomeThemedItems_navItem__hqrNt">
		<span class="SubhomeThemedItems_navItemName__1ZZhb SubhomeThemedItems_navItemActive__3ulAC"> 체크리스트 </span>
		</div>
	</nav>
</section>



<form action="/checklistsave" method="get">
<div class="container" style="width: 70%; height: 100%;">

<div class="container" style="float: left; width:20%; padding-left: 15px;">
<table>
<th> 필수 리스트</th>
<tr><td><input onclick="setBg(this)" id="id1" name="checkvalue" type="checkbox" value="id"> 신분증 (운전면허증) </td></tr>
<tr><td><input onclick="setBg(this)" id="id2" name="checkvalue" type="checkbox" value="creditcardcash"> 신용카드 / 현금</td></tr>
<tr><td><input onclick="setBg(this)" id="id3" name="checkvalue" type="checkbox" value="charger"> 핸드폰 충전기 </td></tr>
<tr><td><input onclick="setBg(this)" id="id4" name="checkvalue" type="checkbox" value="portablecharger"> 보조 배터리 </td></tr>
<tr><td><input onclick="setBg(this)" id="id5" name="checkvalue" type="checkbox" value="mask"> 마스크 </td></tr>
<tr><td><input onclick="setBg(this)" id="id6" name="checkvalue" type="checkbox" value="umbrella"> 우산 </td></tr>
<tr><td><input onclick="setBg(this)" id="id7" name="checkvalue" type="checkbox" value="camera"> 카메라 </td></tr>
<tr><td> 
</td></tr>
</table>
</div>

<div class="container" style="float: left; width:20%; padding-left: 15px;">
<table>
<th> 의류 </th>
<tr style="border-bottom-color: gray;"><td><input type="checkbox" name="checkvalue"id="id8" value="cloth"> 옷</td></tr>
<tr><td><input onclick="setBg(this)" id="id10" name="checkvalue" type="checkbox" value="pajamas"> 잠옷 </td></tr>
<tr><td><input onclick="setBg(this)" id="id11" name="checkvalue" type="checkbox" value="underwear"> 속옷 </td></tr>
<tr><td><input onclick="setBg(this)" id="id12" name="checkvalue" type="checkbox" value="socks"> 양말 </td></tr>
<tr><td>
</td></tr>
</table>
</div>

<div class="container" style="float: left; width:20%; padding-left: 14px;">
<table>
<th> 세면, 화장품</th>
<tr><td><input onclick="setBg(this)" id="id15" name="checkvalue" type="checkbox" value="toothbrush"> 칫솔, 치약</td></tr>
<tr><td><input onclick="setBg(this)" id="id16" name="checkvalue" type="checkbox" value="showersupplies"> 샤워용품 </td></tr>
<tr><td><input onclick="setBg(this)" id="id17" name="checkvalue" type="checkbox" value="cosmetics"> 기초, 색조 화장품 </td></tr>
<tr><td><input onclick="setBg(this)" id="id18" name="checkvalue" type="checkbox" value="dryer"> 고데기&드라이기&헤어롤 </td></tr>
<tr><td><input onclick="setBg(this)" id="id19" name="checkvalue" type="checkbox" value="shaver"> 면도기</td></tr>
<tr><td>
</td></tr>
</table>
</div>

<div class="container" style="float: left; width:16%; padding-left: 10px;">
<table>
<th> 기타    </th>
<tr><td><input onclick="setBg(this)" id="id22" name="checkvalue" type="checkbox" value="emergencymedicine"> 비상약</td></tr>
<tr><td><input onclick="setBg(this)" id="id23" name="checkvalue" type="checkbox" value="tissue"> 물티슈  </td></tr>
<tr><td><input onclick="setBg(this)" id="id24" name="checkvalue" type="checkbox" value="eyepatch"> 안대 </td></tr>
<tr><td><input onclick="setBg(this)" id="id25" name="checkvalue" type="checkbox" value="neckpillow"> 목베게 </td></tr>
<tr><td><input onclick="setBg(this)" id="id26" name="checkvalue" type="checkbox" value="blanket"> 담요 </td></tr>
<tr><td><input type="hidden" name="checkvalue" checked="checked" value="ddd"></tr></td>
<tr><td>
</td></tr>
</table>
</div>

<div class="container" style="float: left; width:9%; padding-left: 10px; ">
<table>
<th> 메모장    </th>
<tr><td><textarea name="memojang" id="memo" style="width: 200px; height: 300px;resize: none;"><%if(cklist.getMemojang() != null){%><%=cklist.getMemojang()%><%}else{%>이곳에 메모를 해주세요.<%} %></textarea></td></tr>
<tr><td>
</td></tr>
</table>
</div>
</div>

<p style="position: fixed; bottom:530px; left: 250px;">
<span><input onclick="setBg(this)" id="cbx_chkAll" type="checkbox" name="all">&nbsp; </span>전체 선택/해제</p>
<input class="btn btn-primary" id="btn-primary" type="submit" value="저장하기">


</form>
</body>
</html>