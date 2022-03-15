<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.stone.board.common.Board"%>
<%@page import="com.stone.qnaboard.common.Qna"%>
<%
	Board board = (Board) request.getAttribute("board");
Boolean isWriter = (Boolean) request.getAttribute("isWriter");
%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function deleteclick(no) {
	$(function() {
		if(confirm("정말 삭제 하시겠습니까?")){
		alert("삭제되었습니다.");
		location.href = "/delete?no="+no;
		}
		else{
			return false;
		}
	})
}

</script>
<style type="text/css">
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

.table{

	border-color: rgba(51,51,51,.1);
    border-style: solid;
    border-width: 1px 0;
	text-align: center;
 	margin:auto; 
 	
}
#btn{
margin-right: 10px;
}
.container2{
margin: 20%;
padding-left: 15%;

}

input:focus{
outline none;
}
#qnalist{
	text-decoration-line: none;
	 color: inherit;
}
</style>
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
		<span class="SubhomeThemedItems_navItemName__1ZZhb SubhomeThemedItems_navItemActive__3ulAC"><a href="/boards/1" id="qnalist">Q&A</a> </span>
		
		</div>
	</nav>
</section>


<div class="container" style="width: 50%; height: 100%;">
<!--  게시물상세 -->
<div class="container mt-3">
 <div class="input-group mb-3">
  <input type="hidden" id="no" name="no" value="<%=board.getNo()%>">
    <span class="input-group-text">제목</span>
     <input type="text" class="form-control" value="<%=board.getTitle()%>" disabled style="background-color: white;" >
  
    <span class="input-group-text">작성자</span>
    <input type="text" class="form-control" value="<%=board.getWriter().getName() %>" disabled style="background-color: white;">
  </div>

   <div class="input-group mb-3" style="border: solid 1px #ced4da;border-radius:5px; ">
    <span class="input-group-text">내용</span>
    <textarea class="form-control"rows="10"  id="contents" name="contents" style="border: 0;resize: none;background-color: white;" disabled >
    <%=board.getContents() %></textarea>
  </div>
 
 </div>
 
  <!-- board의 qna가 있으면 답변 보여주기   -->
  
    <%if(board.getQna()!=null){ %>
    <div class="container">
 		 <input type="hidden" id="no" name="no" value="<%=board.getNo()%>"> 
 
   	 
 			 <span class="badge rounded-pill" style="background-color:#a7a9da;"> 담당자 답변 </span>

	
	<textarea class="form-control" id="contents_board" name="contents" style="border: 0;resize: none;" disabled>
	<%=board.getQna().getContents() %> </textarea>
  		
 	 </div>
 	 
 	  <br>
  <div class="btn-group btn-group-justified" style="margin: auto; padding-left: 350px;">
  <div class="btn-group" role="group">
   <button class="btn btn-outline-info" onclick="location.href='/boards/1'" style="border-radius:5px;">목록  </button> &nbsp; &nbsp;
  </div>
  
   <%-- 글쓴이와 로그인한 회원이 동일할때  --%>
    <%}else if(isWriter != null && isWriter == true) { %>

	 <div class="btn-group" role="group">
   <button class="btn btn-outline-info" onclick="location.href='/update/<%=board.getNo() %>'" style="border-radius:5px;" >수정</button> &nbsp; &nbsp;
  </div>
		<div class="btn-group" role="group">
   <button class="btn btn-outline-info" onclick="deleteclick(<%=board.getNo()%>)" style="border-radius:5px;" >삭제  </button> &nbsp; &nbsp;
  </div>
		<%
		}
	%>

</div>

</div>
<br><br>
<br><br>

 
  

</body>
</html>