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


.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:10px;}
.map_wrap {float:center; width:50%;height:500px;}
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
		<h2 class="subhome_heading__1-Gi8"> 캌페 ex1 지도 </h2>
	</header>
	<!-- 헤더 컨테이너  -->
	<nav class="SubhomeThemedItems_nav__fqPbx">
		<div class="SubhomeThemedItems_navItem__hqrNt">
		<span class="SubhomeThemedItems_navItemName__1ZZhb SubhomeThemedItems_navItemActive__3ulAC">카페 </span>
		</div>
		<div class="SubhomeThemedItems_navItem__hqrNt">
		<span class="SubhomeThemedItems_navItemName__1ZZhb">지도로  </span>
		</div>
		<div class="SubhomeThemedItems_navItem__hqrNt">
		<span class="SubhomeThemedItems_navItemName__1ZZhb">검색</span>
		</div>

		<div class="SubhomeThemedItems_navItem__hqrNt">
		<span class="SubhomeThemedItems_navItemName__1ZZhb">창</span></div>
	</nav>
</section>
<!-- 지도로 보여주기   -->

<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <ul id="category">
        <li id="BK9" data-order="0"> 
            <span class="category_bg bank"></span>
         맛집
        </li>       
        <li id="MT1" data-order="1"> 
            <span class="category_bg mart"></span>
            카페
        </li>  
        <li id="PM9" data-order="2"> 
            <span class="category_bg pharmacy"></span>
            관광
        </li>  
        
    </ul>
</div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d37e311780ba930a7583f7b7e59ef8d&libraries=services"></script>
<script>
// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
    markers = [], // 마커를 담을 배열입니다
    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
 
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(map); 

// 지도에 idle 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', searchPlaces);

// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
contentNode.className = 'placeinfo_wrap';

// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

// 커스텀 오버레이 컨텐츠를 설정합니다
placeOverlay.setContent(contentNode);  

// 각 카테고리에 클릭 이벤트를 등록합니다
addCategoryClickEvent();

// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
function addEventHandle(target, type, callback) {
    if (target.addEventListener) {
        target.addEventListener(type, callback);
    } else {
        target.attachEvent('on' + type, callback);
    }
}

// 카테고리 검색을 요청하는 함수입니다
function searchPlaces() {
    if (!currCategory) {
        return;
    }
    
    // 커스텀 오버레이를 숨깁니다 
    placeOverlay.setMap(null);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
        displayPlaces(data);
    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
        // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

    } else if (status === kakao.maps.services.Status.ERROR) {
        // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
        
    }
}

// 지도에 마커를 표출하는 함수입니다
function displayPlaces(places) {

    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
    var order = document.getElementById(currCategory).getAttribute('data-order');

    

    for ( var i=0; i<places.length; i++ ) {

            // 마커를 생성하고 지도에 표시합니다
            var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);

            // 마커와 검색결과 항목을 클릭 했을 때
            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
            (function(marker, place) {
                kakao.maps.event.addListener(marker, 'click', function() {
                    displayPlaceInfo(place);
                });
            })(marker, places[i]);
    }
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, order) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
function displayPlaceInfo (place) {
    var content = '<div class="placeinfo">' +
                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

    if (place.road_address_name) {
        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
    }  else {
        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
    }                
   
    content += '    <span class="tel">' + place.phone + '</span>' + 
                '</div>' + 
                '<div class="after"></div>';

    contentNode.innerHTML = content;
    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
    placeOverlay.setMap(map);  
}


// 각 카테고리에 클릭 이벤트를 등록합니다
function addCategoryClickEvent() {
    var category = document.getElementById('category'),
        children = category.children;

    for (var i=0; i<children.length; i++) {
        children[i].onclick = onClickCategory;
    }
}

// 카테고리를 클릭했을 때 호출되는 함수입니다
function onClickCategory() {
    var id = this.id,
        className = this.className;

    placeOverlay.setMap(null);

    if (className === 'on') {
        currCategory = '';
        changeCategoryClass();
        removeMarker();
    } else {
        currCategory = id;
        changeCategoryClass(this);
        searchPlaces();
    }
}

// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
function changeCategoryClass(el) {
    var category = document.getElementById('category'),
        children = category.children,
        i;

    for ( i=0; i<children.length; i++ ) {
        children[i].className = '';
    }

    if (el) {
        el.className = 'on';
    } 
} 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
</script>







</body>
</html>