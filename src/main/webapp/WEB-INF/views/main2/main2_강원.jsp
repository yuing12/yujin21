<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
	int[] area = new int[18];
	for(int i=0; i<area.length; i++){
		area[i] = i+58;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디가지?</title>
<style type="text/css">

/* 헤더 */
.header{
/* background-color : #ECECFB; */
background-color : #F7F7FF;
  text-align: center;
}

html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td {
    margin: 0;
    padding: 0;
}

ul li {list-style-type: none;}


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

  
</style>


</head>

<body>

<!--    헤더 영역 -->
<header >
   <div class="header">
	<img src="/img/logo/최종로고.png" width="20%" height="10%"/>
	</div>
</header>
   

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function 도시를조회하다(lno){
	console.log(lno);
	location.href = '/local?lno='+lno;
}

</script>


<div id="contents" style="margin-top:50px; ">
<!--    여행자님 => 로그인하면 이름으로 바뀌게   -->
<h1 style="margin: 10px; color: #7B86C7;"> 여행자님, 어디로 떠나시나요 ?</h1><h1 style="margin: 10px; color: #FF0044;">원하는 지역을 눌러보세요 !</h1>
<form action="/local" method="GET">
<img id="Image-Maps-Com-image-maps-2022-02-08-065137" src="/img/secondpage/강원도.jpg" class="map"border="0" width="1000" height="440" orgWidth="1000" orgHeight="440" usemap="#localpicture" alt="" />
	<map name="localpicture" id="ImageMapsCom-image-maps-2022-02-08-065137">
<area id="고성군" alt="고성군" style="outline:none; cursor: pointer;" shape="poly"onclick="도시를조회하다(<%=area[0]%>)"  coords="546,3,544,20,544,38,541,43,533,53,532,49,529,58,534,70,544,79,549,90,562,90,568,100,580,99,592,96,565,51" target="_self"/>
<area id="속초" alt="속초"  style="outline:none; cursor: pointer;" shape="poly" onclick="도시를조회하다(<%=area[1]%>)" coords="563,107,570,120,580,117,591,115,596,113,595,102,583,105,575,108,571,111" target="_self" />
</map>
</form>
</div>

</body>
</html>