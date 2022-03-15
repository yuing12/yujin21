<!-- 작성자 : 조유진 
   마이페이지
   특징 : 관리자는 이름과 아이디만 보인다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.stone.member.common.Member"%>
<%  Member member=(Member)request.getAttribute("member_info");%>
<%@ page import="net.iharder.Base64" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<style>

    *{font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;}
    
    body{
    margin: 0;
    
    }
.header {
   position: relative;
    width: 100%;
    font-size: 1.7rem;
    background: #F7F7FF;
    border-bottom: 1px solid #e6e6e6;
 
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

/*   */ 


*, :after, :before {
    box-sizing: inherit;
}



<!-- 로그아웃, 탈퇴 -->

.bot_btn {
    height: 56px; 
    width : 750px; 
    margin-top: 10px;
    border-top: 1px solid rgba(0,0,0,0.08);
    background: none;
    text-align: left;
}

.bot_btn p {
    display: inline-block;
    padding-top: 23px;
    font-size: 16px;
    color: rgba(0,0,0,0.56);
}



.btn{
height: auto;
    margin-top: 0;
    padding: 0 8px;
    border: none;
    background: none;
    font-size: 16px;
    text-decoration: underline;
}

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

.card-footer span{
  font-weight: bold ;
}

.card-body img{
     border-radius: 70%;

}



</style>
</head>
<body>
<!-- 헤더 영역 --> 
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
   	<a href="/main3" > <img id="logo" src="/img/logo/최종로고.png" alt="main_logo"/> </a>
	</div>
</div>
</header>


    <div id="content" class="sub_wrap more_wrap">
   <nav>
    <ul>
    
        <li><a href="/member_info" class="active">마이페이지</a></li>
        <li><a href="#">내 일정</a></li>
        <li><a href="#">쿠폰함</a></li>
    </ul>
</nav>

 <div class="container_" style="width: 97%; padding-left: 30%; ">
       <div class="container_ p-5_ my-5_" style=" padding : 1rem!important;border-bottom: 1px solid rgba(0,0,0,0.08); ">
  
  			<div class="card_" style="width: 70%; height: 50%;">
  			<form action="/member_info" enctype="multipart/form-data" method="post">
   			 <div class="card-header_" 
   			 style=" font-size: 18px; height:30px; margin-bottom: 30px; font-weight: bold; color: #764ca2;">
                               내 정보</div>
   				<div class="card-body_">
   				<%if(member.getProfile()!=null){ %>
    				<img src="data:/png;base64,<%=Base64.encodeBytes(member.getProfile())%>"   class="profile" width="175" height="175"/>
				<%}else{ %>
     			<img src="img/thirdpage/사이드바_임시프로필.png" width="175" height="175"/>
				<%} %><br>
   				</div> 
   				
    			<div class="card-footer_" style=" margin-top: 30px;">
    			<%if(member.getId().equals("admin")){ %>
  	          <p><span>이름 : </span><%=member.getName() %></p>
              <p><span>아이디 : </span><%=member.getId() %></p>
   <%}else{%>
	          <p><span>이름 : </span><%=member.getName() %></p>
			   <p> <span>성별 : </span><%=member.getGender() %></p>
			    <p><span>아이디 : </span><%=member.getId() %></p>
				<p><span>이메일 : </span><%=member.getEmail() %></p>
				<p><span>전화번호 : </span><%=member.getTel() %></p>
	<%} %>
    		
				</div>
    			</form>
    			</div>
    			 		<br>
  			<button  type="submit" class="btn-primary_" 
  			style=" margin-bottom: 50px;
    height: 30px;
    border-radius: 4px;
    font-size: 12px;
    color:  #764ca2;
       border-style : solid;
    text-align: center;
    box-sizing: border-box;
    vertical-align: top;
    background-color: #fff;
    border-color : #764ca2;"  onclick="location.href='/member_update'">회원정보수정</button>
    			 </div>



<div class="bot_btn">
			<p>'어디가지?'를 이용하고 싶지 않으신가요?</p>
			        <button class="btn"  onclick="location.href='/logout'" >로그아웃</button>
						<button class="btn" onclick="location.href='/member_delete'">회원탈퇴</button><br>
					</div>

</div>



</div>

</body>
</html>