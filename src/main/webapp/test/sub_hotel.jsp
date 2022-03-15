<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디가지?</title>
<style type="text/css">


ul li {
list-style-type: none;
}

/* 헤더 */
.HomeTitle_container {
    position: relative;
    width: 100%;
    height: 150px;;
    font-size: 1.7rem;
    text-align: center;
    background: #F7F7FF;
    border-bottom: 1px solid #e6e6e6;
    margin: 0;
/*     z-index: 20; */
}
.HomeTitle_title{
    position: relative;
    margin: 0 auto;background-color : #F7F7FF;
}
.HomeTitle_left {
    position: absolute;
    top: 0;
    left: 0;
/*     z-index: 20; */
}
.HomeTitle_center{
    position: absolute;
    text-align: center;
    top: 0;
   right: 4.4rem; 
    width: calc(100% - 8.8rem);
    height: 4.4rem;
     z-index: 10;
}

/* 로고 */
.HomeTitle_logo{
 border: none;
 background: none;
position: relative;
width:40%;
 height:10%;
   color: #000;
}


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

</style>
</head>

<body>
<!-- 헤더 영역 -->

	<!-- 헤더 컨테이너  -->
 <header class="HomeTitle_container">
  <div class="HomeTitle_title">
   <div class="HomeTitle_left">
  </div>
   <!-- 로고  -->
   <div class="HomeTitle_center">
   	<a href="/" class="HomeTitle_logo" >
   	  <img src="/img/logo/logo_진짜최종-removebg-preview.png" alt="main_logo"/>
   </a>
   </div>
    <!-- 오른쪽 메뉴  -->
   <div class="HomeTitle_right">
  	 <button class="HomeTitle_button">
  	 	<img src="/img/thirdpage/메뉴바.png" alt="메뉴바" width="20px" height="20px">
  	 </button>
   </div>
  </div>
 </header>

<!-- 헤더 컨테이너  -->
<section class="SubhomeThemedItems_container__2BOx-">
	<header class="SubhomeThemedItems_header__3G0Jp">
		<h2 class="subhome_heading__1-Gi8"> 우리도 호캉스 갈까? 숙소페이지 ex1</h2>
	</header>
	<!-- 헤더 컨테이너  -->
	<nav class="SubhomeThemedItems_nav__fqPbx">
		<div class="SubhomeThemedItems_navItem__hqrNt">
		<span class="SubhomeThemedItems_navItemName__1ZZhb SubhomeThemedItems_navItemActive__3ulAC">서울</span>
		</div>
		<div class="SubhomeThemedItems_navItem__hqrNt">
		<span class="SubhomeThemedItems_navItemName__1ZZhb">뭐라쓰지 </span>
		</div>
		<div class="SubhomeThemedItems_navItem__hqrNt">
		<span class="SubhomeThemedItems_navItemName__1ZZhb">휴가에딱</span>
		</div>

		<div class="SubhomeThemedItems_navItem__hqrNt">
		<span class="SubhomeThemedItems_navItemName__1ZZhb">전국인기</span></div>
	</nav>

<!-- 숙소 정보  -->
<div class="SubhomeThemedItems_body__3Mz-M">
	<a href="naver.com" class="ThemePlaceItem_container__1Clhm SubhomeThemedItems_bodyItem__2vv_m">
		<div class="ThemePlaceItem_image__2_Itg" style="background-image:url('/img/ico_category_180801.png')"></div>
		
	<div class="ThemePlaceItem_body__2BjpH">
		
	<div class="ThemePlaceItem_title__1fyvQ">신라스테이 삼성</div>
		<div class="PlaceListScore_container__2-JXJ ThemePlaceItem_stats__1Fa97">
		<span class="PlaceListScore_reviewInfo__3QSCU">예약하러 </span>
		</div>
	</div>
	</a>
	
	<a href="naver.com" class="ThemePlaceItem_container__1Clhm SubhomeThemedItems_bodyItem__2vv_m">
		<div class="ThemePlaceItem_image__2_Itg" style="background-image:url(https://yaimg.yanolja.com/v5/2022/02/09/12/640/6203b0afbd2f87.40559775.jpg)"></div>
		
	<div class="ThemePlaceItem_body__2BjpH">
		
	<div class="ThemePlaceItem_title__1fyvQ">신라스테이 삼성</div>
		<div class="PlaceListScore_container__2-JXJ ThemePlaceItem_stats__1Fa97">
		<span class="PlaceListScore_reviewInfo__3QSCU">예약하러 </span>
		</div>
	</div>
	</a>
	
	
<a href="/hotel/3009050" class="ThemePlaceItem_container__1Clhm SubhomeThemedItems_bodyItem__2vv_m">
<div class="ThemePlaceItem_image__2_Itg" style="background-image:url(https://yaimg.yanolja.com/v5/2022/02/09/12/640/6203b0afbd2f87.40559775.jpg)"></div>
<div class="ThemePlaceItem_body__2BjpH"><div class="ProductBadges_container__1A4Ml">
<span style="color:#de2e5f;background-color:;font-weight:700;border:0.1rem solid #de2e5f" class="ProductBadges_badge__PRhPM">DayUse</span></div>
<div class="ThemePlaceItem_title__1fyvQ">신라스테이 서초</div>
<div class="PlaceListScore_container__2-JXJ ThemePlaceItem_stats__1Fa97">
<span class="PlaceListScore_rating__3Glxf">
<span class="PlaceListScore_ratingStars__1IKyk">
<i class="PlaceListScore_stars__2qfg3" style="width:92%"></i></span>4.6</span>
<span class="PlaceListScore_reviewInfo__3QSCU">(<!-- -->3,046<!-- -->)</span></div>
<span class="coupon-item Badge_baseBadgeStyle__27HJP"><span class="Badge_name__j2BjI">선착순 </span>
<span class="Badge_desc__3hwV5">1만원</span></span><div class="subhome_priceDiscount__36Nn_">121,000<i>원</i></div></div></a>
<a href="/hotel/3001564" class="ThemePlaceItem_container__1Clhm SubhomeThemedItems_bodyItem__2vv_m">
<div class="ThemePlaceItem_image__2_Itg" style="background-image:url(https://yaimg.yanolja.com/v5/2022/02/09/13/640/6203c459bf6cd7.87014443.jpg)"></div>
<div class="ThemePlaceItem_body__2BjpH"><div class="ProductBadges_container__1A4Ml">
<span style="color:#de2e5f;background-color:;font-weight:700;border:0.1rem solid #de2e5f" class="ProductBadges_badge__PRhPM">DayUse</span></div>
<div class="ThemePlaceItem_title__1fyvQ">신라스테이 구로</div><div class="PlaceListScore_container__2-JXJ ThemePlaceItem_stats__1Fa97">
<span class="PlaceListScore_rating__3Glxf"><span class="PlaceListScore_ratingStars__1IKyk"><i class="PlaceListScore_stars__2qfg3" style="width:94%"></i></span>4.7</span>
<span class="PlaceListScore_reviewInfo__3QSCU">(<!-- -->5,822<!-- -->)</span></div>
<span class="coupon-item Badge_baseBadgeStyle__27HJP"><span class="Badge_name__j2BjI">선착순 </span><span class="Badge_desc__3hwV5">1만원</span></span>
<div class="subhome_priceDiscount__36Nn_">82,500<i>원</i></div></div></a>

<a href="/hotel/3013410" class="ThemePlaceItem_container__1Clhm SubhomeThemedItems_bodyItem__2vv_m">
<div class="ThemePlaceItem_image__2_Itg" style="background-image:url(https://yaimg.yanolja.com/v5/2022/02/05/19/640/61fed6c7405c27.65182403.jpg)"></div>
<div class="ThemePlaceItem_body__2BjpH"><div class="ProductBadges_container__1A4Ml">
<span style="color:#247B9F;background-color:;font-weight:700;border:0.1rem solid #247B9F" class="ProductBadges_badge__PRhPM">야놀자케어</span>
<span style="color:#de2e5f;background-color:;font-weight:700;border:0.1rem solid #de2e5f" class="ProductBadges_badge__PRhPM">DayUse</span></div>
<div class="ThemePlaceItem_title__1fyvQ">페어필드 바이 메리어트 서울</div><div class="PlaceListScore_container__2-JXJ ThemePlaceItem_stats__1Fa97">
<span class="PlaceListScore_rating__3Glxf"><span class="PlaceListScore_ratingStars__1IKyk"><i class="PlaceListScore_stars__2qfg3" style="width:92%"></i></span>4.6</span>
<span class="PlaceListScore_reviewInfo__3QSCU">(<!-- -->12,270<!-- -->)</span></div>
<span class="coupon-item Badge_baseBadgeStyle__27HJP"><span class="Badge_name__j2BjI">선착순 </span>
<span class="Badge_desc__3hwV5">2천원</span></span>
<div class="subhome_priceDiscount__36Nn_">76,000<i>원</i></div>
</div>
</a>

</div>

</section>





</body>
</html>