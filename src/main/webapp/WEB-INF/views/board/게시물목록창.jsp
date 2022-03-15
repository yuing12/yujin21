<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.stone.board.common.Paging"%>
<%@page import="com.stone.board.common.Board"%>
<%@page import="java.util.List"%>
 <% 
  String masterid = (String)request.getAttribute("masterid");
 List<Board> list = (List<Board>) request.getAttribute("boards");
 int 현재페이지번호 = (int)request.getAttribute("pageNo");
 int 마지막페이지번호=(int)request.getAttribute("lastPageNo");
 int 블럭당최대페이지수=5;
 int 블럭시작페이지번호=현재페이지번호-((현재페이지번호-1)%블럭당최대페이지수);
 int 예상블럭끝페이지번호 = 블럭시작페이지번호+(블럭당최대페이지수-1);
 int 블럭끝페이지번호= (예상블럭끝페이지번호<=마지막페이지번호)?예상블럭끝페이지번호:마지막페이지번호;
 %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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

ul li{
list-style: none;
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

.container a{
text-decoration-line: none;
color: black;
}
#qnalist{
	text-decoration-line: none;
	 color: inherit;
}


</style>
<body>

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
		<span class="SubhomeThemedItems_navItemName__1ZZhb SubhomeThemedItems_navItemActive__3ulAC"><a href="/boards/1" id="qnalist">Q&A</a>  </span>
		
		</div>
	</nav>
</section>
	

 <div class="container">
 
<div class="container" style="width: 100%;float: left; margin-left:3%; margin-bottom:1%;">
<input type="hidden" name="type" >
<form action="/titlesearch" style="width: 400px;">
<table>
<tr>
<td>
<select class="form-control" style="width: 100px;">
<option selected>제목</option>
<option>내용</option>
<option>작성자</option>
</select></td>
<td>
<input type="text" name="searchtitle" class="form-control search-input" style="width:150px;">
</td>
<td>
<button type="submit" class="btn btn-info">검색</button>
</td>
</table>
</form>
</div>


<table class="table table-hover" id="table">
<tr>
    <th class="tg-0pky">번호</th>
    <th class="tg-0lax">제목 </th>
     <th class="tg-0lax">작성자 </th>
    <th class="tg-0lax">작성일</th>
    <th class="tg-0lax">조회수 </th>
    <th class="tg-0lax"> </th>
     <th class="tg-0lax"> </th>
  </tr>
  
<%
     for(int i=0; i<list.size(); i++){
    	 Board boards = list.get(i); 
   %>

<tr>
 	<td><input type="hidden" id="no" name="no" value="<%=boards.getNo()%>"> <%=boards.getNo()%></td>  
	<td><a href="/boards/board/<%=boards.getNo()%>"> <%=boards.getTitle()%> </a></td>
	<td><%=boards.getWriter().getName() %> </td>
	<td><%=boards.getRdate()%></td>
	<td><%=boards.getViews() %></td>
 	<td><%=(boards.getQna()!=null)?"답변완료":"" %> </td> 
	<td><%if(masterid.equals("admin")){ %><button type="button" class="btn btn-outline-info" onclick="location.href='/qna?no=<%=boards.getNo()%>'" >답변하기 </button><%} %> </td>
 </tr>
<% } %>
</table>


   
<div class="container" style="margin-top:20px;margin-left: 10%;">

<div class="row">
  <div class="col-3"><button id="btn" class="btn btn-outline-info" onclick="location.href='/main3'" >메인</button>
 </div>

 <div class="col-3">
 <ul>
 <!-- 이전 -->
  <%if(블럭시작페이지번호>1){ %>
   <a href="boards/<%=블럭시작페이지번호-1%>"> << </a>
    <% } %>
  
   <!-- 페이지번호들 출력 -->
   <%
       for(int 페이지번호=블럭시작페이지번호; 페이지번호<=블럭끝페이지번호;페이지번호++){ 
          String 출력페이지번호=(페이지번호==현재페이지번호)?"["+페이지번호+"]":" "+페이지번호+" ";
       %>
         <a href="/boards/<%=페이지번호 %>">
             <%=출력페이지번호 %>
          </a>
          &nbsp;&nbsp; 
    <% } %>
    
    <!-- 다음 -->
    <%if(블럭끝페이지번호<마지막페이지번호){ %> 
    <a href="boards/<%=블럭끝페이지번호+1%>"> >> </a>
    <% } %> 
   </ul> 
</div>

 <div class="col-3">
 <button id="btn" class="btn btn-outline-info" onclick="location.href='/board'" style="margin-left:50%;" >작성</button>
 </div> 
 
 </div>
</div>

</div>
</body>
</html>