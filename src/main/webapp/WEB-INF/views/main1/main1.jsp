<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int[] cityno = new int[15];
for(int i=0; i<cityno.length; i++){
	cityno[i] = i+1;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>

html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td {
    margin: 0;
    padding: 0;
}
header {
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

}

#logo{
margin-right : 90px;
height:80px;
width: 300px;
}

.contents{ 
margin-top : 25px;
   margin-left: 18%;
   margin-right: 10%;

}

.square {
  position: relative; 
  left: 200px; 
  width: 100%;
  height: 100%; 
   
  
}
.imgswap{
	width: 100%;
  height: auto;    
 position: absolute; 
 float: left; width: 33%;  
 margin-left: 350px;
}

 button {
	border:none;
	background-color: rgba(0,0,0,0);
	
}

 .buttons{
  float: left; width: 33%; 
     margin-right: 60px;
     	width: 100%;
  height: auto;
     
 }

/* ///////////// 애니메이션 CSS ///////////////// */


 .b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15{ 
 	transition: slide-fwd-right 1s ease-in; 
 } 
 .b1:hover,  .b2:hover,  .b3:hover,  .b4:hover,  .b5:hover,  .b6:hover,
   .b7:hover,  .b8:hover,  .b9:hover,  .b10:hover,  .b11:hover,
     .b12:hover, .b13:hover, .b14:hover, .b15:hover{ 
 	animation: heartbeat 1.5s ease-in forwards; 
} 




@keyframes slide-fwd-right {
  0% {
            transform: translateZ(0) translateX(0);
  }
  100% {
            transform: translateZ(160px) translateX(100px);
  }
}


@keyframes heartbeat {
  from {
    -webkit-transform: scale(1);
            transform: scale(1);
    -webkit-transform-origin: center center;
            transform-origin: center center;
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  10% {
    -webkit-transform: scale(0.91);
            transform: scale(0.91);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  17% {
    -webkit-transform: scale(0.98);
            transform: scale(0.98);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  33% {
    -webkit-transform: scale(0.87);
            transform: scale(0.87);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  45% {
    -webkit-transform: scale(1);
            transform: scale(1);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
}





</style>
<meta charset="UTF-8">
<title>어디가지?</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<script type="text/javascript">
	
    function over1(){ 
        $('.imgswap div img:first-child').attr('src', 'img/firstpage/Seoul.png');
        
    }
    function over2(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/Busan.png');}
    function over3(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/Jeju.png');}
    function over4(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/Gangwon.png');}
    function over5(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/Daejeon.png');}
    function over6(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/Incheon.png');}
    function over7(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/NorthJeolla.png');}
    function over8(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/Gwangju.png');}
    function over9(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/Daegu.png');}
    function over10(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/Gyeonggi.png');}
    function over11(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/NorthChungcheong.png');}
    function over12(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/NorthGyeongsang.png');}
    function over13(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/SouthChungcheong.png');}
    function over14(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/SouthGyeongsang.png');}
    function over15(){ $('.imgswap div img:first-child').attr('src', 'img/firstpage/SouthJeolla.png');}
    function out() {
    	  $('.imgswap img').attr('src', 'img/firstpage/original.png');
	}
   function value전달(cno) {
		location.href = '/main2?cno='+cno;
}
    
</script>
</head>

<body>

<!--    1111헤더 영역 -->
   <header >
     <div class="title" >
  <div style="background:#F7F7FF;text-align:center; height:80px;" >
      <a href="/prepare" > <img id="logo" src="/img/logo/최종로고.png" alt="main_logo"/> </a>
   </div>
   </div>	
   </header>
   
 
   

<div class="contents">
<div class="buttons">
<div class="button_1">

<button type="button" onclick="value전달(<%=cityno[0]%>)" onmouseover="over1()" class="b1" onmouseout="out()" class="1" id="b"><img  src="img/firstpage/button2/서울.jpg" style="width: 100px; height: 100px;"><p>서울</p></button>
<button type="button" onclick="value전달(<%=cityno[1]%>)" onmouseover="over2()" class="b2" onmouseout="out()" class="2" id="b"><img  src="img/firstpage/button2/부산.jpg" style="width: 100px; height: 100px;"><p>부산</p></button>
<button type="button" onclick="value전달(<%=cityno[2]%>)" onmouseover="over3()" class="b3" onmouseout="out()" class="3" id="b"><img  src="img/firstpage/button2/전북, 전남, 제주.jpg" style="width: 100px; height: 100px;"><p>제주도</p></button>
</div>
<div class="button_2">
<button type="button" onclick="value전달(<%=cityno[3]%>)" value="4" name="bt1" onmouseover="over4()" class="b4" onmouseout="out()" class="4" id="b4"><img  src="img/firstpage/button2/경기도, 강원도, 광주, 경북, 경남.jpg" style="width: 100px; height: 100px;"><p>강원도</p></button>
<button type="button" onclick="value전달(<%=cityno[4]%>)" onmouseover="over5()" class="b5" onmouseout="out()" class="5" id="b"><img  src="img/firstpage/button2/대구, 대전.jpg" style="width: 100px; height: 100px;"><p>대전</p></button>
<button type="button" onclick="value전달(<%=cityno[5]%>)" onmouseover="over6()" class="b6" onmouseout="out()" class="6" id="b"><img  src="img/firstpage/button2/인천.jpg" style="width: 100px; height: 100px;"><p>인천</p></button>
</div>
<div class="button_3">
<button type="button" onclick="value전달(<%=cityno[6]%>)" onmouseover="over7()" class="b7" onmouseout="out()" class="7" id="b"><img  src="img/firstpage/button2/전북, 전남, 제주.jpg" style="width: 100px; height: 100px;"><p>전라북도</p></button>
<button type="button" onclick="value전달(<%=cityno[7]%>)" onmouseover="over8()" class="b8" onmouseout="out()" class="8" id="b"><img  src="img/firstpage/button2/경기도, 강원도, 광주, 경북, 경남.jpg" style="width: 100px; height: 100px;"><p>광주</p></button>
<button type="button" onclick="value전달(<%=cityno[8]%>)" onmouseover="over9()" class="b9" onmouseout="out()" class="9" id="b"><img  src="img/firstpage/button2/대구, 대전.jpg" style="width: 100px; height: 100px;"><p>대구</p></button>
</div>
<div class="button_3">
<button type="button" onclick="value전달(<%=cityno[9]%>)" onmouseover="over10()" class="b10" onmouseout="out()" class="10" id="b"><img  src="img/firstpage/button2/경기도, 강원도, 광주, 경북, 경남.jpg" style="width: 100px; height: 100px;"><p>경기도</p></button>
<button type="button" onclick="value전달(<%=cityno[10]%>)" onmouseover="over11()" class="b11" onmouseout="out()" class="11" id="b"><img  src="img/firstpage/button2/충북,충남.jpg" style="width: 100px; height: 100px;"><p>충청북도</p></button>
<button type="button" onclick="value전달(<%=cityno[11]%>)" onmouseover="over12()" class="b12" onmouseout="out()" class="12" id="b"><img  src="img/firstpage/button2/경기도, 강원도, 광주, 경북, 경남.jpg" style="width: 100px; height: 100px;"><p>경상북도</p></button>
</div>
<button type="button" onclick="value전달(<%=cityno[12]%>)" onmouseover="over13()" class="b13" onmouseout="out()" class="13" id="b"><img  src="img/firstpage/button2/충북,충남.jpg" style="width: 100px; height: 100px;"><p>충청남도</p></button>
<button type="button" onclick="value전달(<%=cityno[13]%>)" onmouseover="over14()" class="b14" onmouseout="out()" class="14" id="b"><img  src="img/firstpage/button2/경기도, 강원도, 광주, 경북, 경남.jpg" style="width: 100px; height: 100px;"><p>경상남도</p></button>
<button type="button" onclick="value전달(<%=cityno[14]%>)" onmouseover="over15()" class="b15" onmouseout="out()" class="15" id="b"><img  src="img/firstpage/button2/전북, 전남, 제주.jpg" style="width: 100px; height: 100px;"><p>전라남도</p></button>

</div>


<div class="imgswap">
<div class="map">
<img src="img/firstpage/original.png"  class="square"/> 
 </div>
</div>
</div>


</body>
</html>