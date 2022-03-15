<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.stone.member.common.Member"%>
<%  Member member=(Member)request.getAttribute("member_update"); %>
<%@ page import="net.iharder.Base64" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">

<style>
*{font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;}
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
/*   */ 
.SubhomeThemedItems_container__2BOx- {
    padding-right: 2rem;
    padding-left: 2rem;
    margin-top: 1.2rem;
   
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
    color: #8c6f6b;
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

</style>

<script type="text/javascript">
function 회원정보수정하다() {
	let 성명=document.querySelector("#name").value;
	if(성명.trim()==""){
		alert("성명은 필수 입력입니다.");
		return false;
	}
	
	let tel=document.querySelector("#tel").value;
	if(tel.trim()==""){
		alert("전화번호는 필수 입력입니다.");
		return false;
	}
	let email=document.querySelector("#email").value;
	if(tel.trim()==""){
		alert("이메일은 필수 입력입니다.");
		return false;
	}

	return true;
}
</script>
<title>회원정보수정</title>
</head>
<body>
<header class="header">
<div class="container-fluid">
 	 <div class="title">
  		 <div class="title_left"> </div>
	</div>
   <!-- 로고  -->
   <div style="background: #F7F7FF;text-align: center; height: 70px;" >
   	<a href="/main" > <img id="logo" src="/img/logo/최종로고.png" alt="main_logo"/> </a>
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
		<span class="SubhomeThemedItems_navItemName__1ZZhb SubhomeThemedItems_navItemActive__3ulAC"> 내 정보 수정  </span>
		
		</div>
	</nav>
</section>
 <form action="/member_update" enctype="multipart/form-data" method="post" id="myForm"> 
	<div class="container" style="width:70%; margin-top:10px;">
        <div class="container"style="width:70%;" >
	<input type="hidden" name="id" value="<%=member.getId() %>"/>

  			<div class="card">
   			 <div class="card-header">프로필사진</div>
	   			<div class="card-body" style="padding-left: 40%;">
	   				<img id="profile" src="/img/no_image.jpg" width="30%" height="40%"/><br>
	   			</div> 
	   					 
    				<div class="card-footer">
   					
    				<input type="file" name="profileFile" id="profileFile"/>
    				</div>
  			</div>
		<br>
		<br>
<span class="badge rounded-pill" style="background-color:#a7a9da;width:95%;font-size:medium;margin-bottom: 10px;"> 변경 정보 입력  </span>
 
 
 <div class="form-group has-feedback">
            <label class="control-label" for="id">ID </label>
            <input class="form-control" type="text" name="id" id="id" style="width:95%;" value="<%=member.getId() %>" disabled="disabled"/>
    
        </div>
        <br>
  
   <div class="form-group has-feedback">
            <label class="control-label" for="name">이름</label>
            <input class="form-control" type="text" name="name" id="name" style="width:95%;" value="<%=member.getName()%>"/>
            <span id="nameErr" class="help-block" style="color:red;font-size: small;" > 올바른 이름 형식이 아닙니다. 다시 입력해 주세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
        <br>
        
    <div class="form-group has-feedback">
            <label class="control-label" for="tel">전화번호</label>
            <input class="form-control" type="text" name="tel" id="tel" style="width:95%;" value="<%=member.getTel()%>" />
            <span id="telErr" class="help-block" style="color: red;font-size: small;" >전화번호는 숫자만 입력이 가능합니다. 다시 입력해 주세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
        <br>
    
    
     <div class="form-group has-feedback">
            <label class="control-label" for="email">이메일</label>
            <input class="form-control" type="text" name="email" id="email" style="width:95%;" value="<%=member.getEmail()%>"/>
            <span id="emailErr" class="help-block" style="color: red;font-size: small;" >올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>


<br>
<br>

     <div class="input-group mb-3">
    <button type="submit" class="btn btn-primary" style="background-color: #a7a9da; border:1px solid #ced4da;border-radius:5px;margin-left: 35%">변경하기</button>
  &nbsp;&nbsp;&nbsp;
    <button type="reset" class="btn btn-primary" style="background-color:#a7a9da;border:1px solid #ced4da;border-radius:5px;" onclick="location.href='/main3'">취소</button>
</div>
  </div>
  
</form>
</body>
</html>

<script>
function 그림파일읽어출력하기(이벤트) {
	var fileInput=이벤트.target;
	//change이벤트.target(대상)은 <input type="file" name="profileFile" id="profileFile"/>
    var 선택된그림파일관리객체 = fileInput.files[0]; 
    var 선택된그림size = 선택된그림파일관리객체.size;
     /*
    if(선택된그림size > 1024*10){
    	alert("10K 요량초과!");
    	fileInput.value="";
    	return ;
    }
     */
    if (!선택된그림파일관리객체.type.match('image.*')) {
       alert("욱! 그림이 아니예요!");
       fileInput.value="";
       return ;
    }
    var 파일리더 = new FileReader();
         파일리더.onload = function(선택된그림파일관리객체) {
  	  var imgProfile=document.getElementById("profile");    	  
  	  imgProfile.src=선택된그림파일관리객체.currentTarget.result;
    };      
    파일리더.readAsDataURL(선택된그림파일관리객체);
    return ;
}
document.querySelector("#profileFile").addEventListener("change", 그림파일읽어출력하기, false);


	
$("#name").keyup(function(){
	  var name=$(this).val();
	  // 이메일 검증할 정규 표현식
	  var reg = /^[가-힣]{2,15}$/;
	  if(reg.test(name)){//정규표현식을 통과 한다면
	              $("#nameErr").hide();
	              successState("#name");
	  }else{//정규표현식을 통과하지 못하면
	              $("#nameErr").show();
	              errorState("#name");
	  }
	});
	
$("#tel").keyup(function(){
	  var tel=$(this).val();
	  // 이메일 검증할 정규 표현식
	  var reg = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	  if(reg.test(tel)||tel!=null){//정규표현식을 통과 한다면
	              $("#telErr").hide();
	              successState("#tel");
	  }else{//정규표현식을 통과하지 못하면
	              $("#telErr").show();
	              errorState("#tel");
	  }
	});

$("#email").keyup(function(){
	  var email=$(this).val();
	  // 이메일 검증할 정규 표현식
	  var reg=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	  if(reg.test(email)){//정규표현식을 통과 한다면
	              $("#emailErr").hide();
	              successState("#email");
	  }else{//정규표현식을 통과하지 못하면
	              $("#emailErr").show();
	              errorState("#email");
	  }
	});
	
//성공 상태로 바꾸는 함수
function successState(sel){
$(sel)
.parent()
.removeClass("has-error")
.addClass("has-success")
.find(".glyphicon")
.removeClass("glyphicon-remove")
.addClass("glyphicon-ok")
.show();

$("#myForm button[type=submit]")
  .removeAttr("disabled");
};

//에러 상태로 바꾸는 함수
function errorState(sel){
$(sel)
.parent()
.removeClass("has-success")
.addClass("has-error")
.find(".glyphicon")
.removeClass("glyphicon-ok")
.addClass("glyphicon-remove")
.show();

$("#myForm button[type=submit]")
     .attr("disabled","disabled");
};
	
	
	
</script>