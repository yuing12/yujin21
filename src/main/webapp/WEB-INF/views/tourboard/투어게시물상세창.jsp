<%@page import="com.stone.tour.common.TourBoard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.stone.board.common.Board"%>
<%@page import="com.stone.qnaboard.common.Qna"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	TourBoard tourboard = (TourBoard) request.getAttribute("tourboard");
	Boolean isWriter = (Boolean) request.getAttribute("isWriter");
	String user_id = (String)request.getAttribute("user_id");
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
		location.href = "/tourdelete?no="+no;
		}
		else{
			return false;
		}
	})
}
$(document).ready(function(){
	showReplyList();
});

function showReplyList(){

	var paramData = {"tno" : "${tourboard.no}"};
	console.log(paramData);
	
	$.ajax({
        type: 'POST',
        url: "/getReplyList",
        data: paramData,
        dataType: 'json',
        success: function(result) {
           	var htmls = "";
           	console.log(result.length);
          	let user_id = "<%=user_id%>";
        	$('#replyallcount').html('댓글 ('+result.length+')');
			
		if(result.length < 1){
			htmls.push("등록된 댓글이 없습니다.");
		} else {
                    $(result).each(function(){
                     htmls += '<div class="media text-muted pt-3" id="no' + this.no + '">';
                     htmls += '<title>Placeholder</title>';
                     htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';
                     htmls += '<span class="d-block">';
                     htmls += '<strong class="text-gray-dark">' + this.writername + '</strong>';
                     htmls += '<span style="padding-left: 7px; font-size: 9pt">';
                       	 if(this.writername === user_id){
                     htmls += '<a href="javascript:void(0)" onclick="fn_editReply(' + this.no + ', \'' + this.writername + '\', \'' + this.content + '\' )" style="padding-right:5px">수정</a><a href="javascript:void(0)" onclick="fn_deleteReply(' + this.no + ')" >삭제</a>';
                     }
                     htmls += '</span>';
                     htmls += '</span>';
                     htmls += this.content;
                     htmls += '</p>';
                     htmls += '</div>';
                });	//each end
		}
		$("#replyList").html(htmls);
        }	   // Ajax success end
	});	// Ajax end
}

$(document).on('click', '#btnReplySave', function(){
	var replyContent = $('#content').val();
	var replyReg_id = $('#writername').val();

	var paramData = JSON.stringify({"content": replyContent
			, "writername": replyReg_id
			, "tno": '${tourboard.no}'
	});
	console.log(replyContent);
	console.log(replyReg_id);
	var headers = {"Content-Type" : "application/json"
			, "X-HTTP-Method-Override" : "POST"};

	$.ajax({
		url: "/saveReply"
		, headers : headers
		, data : paramData
		, type : 'POST'
		, dataType : 'text'
		, success: function(result){
			console.log(result);
			showReplyList();
			$('#content').val('');
		}
		, error: function(error){
			console.log("에러 : " + error);
		}
	});

});

//   edit

function fn_editReply(no, writername, content){
	var htmls = "";
	htmls += '<div class="media text-muted pt-3" id="no' + no + '">';
	htmls += '<title>Placeholder</title>';
	htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';
	htmls += '<span class="d-block">';
	htmls += '<strong class="text-gray-dark">' + writername + '</strong>';
	htmls += '<span style="padding-left: 7px; font-size: 9pt">';
	htmls += '<a href="javascript:void(0)" onclick="fn_updateReply(' + no + ', \'' + writername + '\')" style="padding-right:5px">저장</a>';
	htmls += '<a href="javascript:void(0)" onClick="showReplyList()">취소<a>';
	htmls += '</span>';
	htmls += '</span>';		
	htmls += '<textarea name="editContent" id="editContent" class="form-control" rows="3">';
	htmls += content;
	htmls += '</textarea>';

	htmls += '</p>';
	htmls += '</div>';

	$('#no' + no).replaceWith(htmls);
	$('#no' + no + ' #editContent').focus();
}


function fn_updateReply(no, writername){
	var replyEditContent = $('#editContent').val();
	var paramData = JSON.stringify({"content": replyEditContent
			, "no": no
	});
	var headers = {"Content-Type" : "application/json"
			, "X-HTTP-Method-Override" : "POST"};
	$.ajax({
		url: "/updateReply"
		, headers : headers
		, data : paramData
		, type : 'POST'
		, dataType : 'text'
		, success: function(result){
                            console.log(result);
			showReplyList();
		}
		, error: function(error){
			console.log("에러 : " + error);
		}
	});
}

function fn_deleteReply(no){
	console.log(no)
	var paramData = JSON.stringify({"no": no});
	var headers = {"Content-Type" : "application/json"
		, "X-HTTP-Method-Override" : "POST"};
	$.ajax({
		url: "/deleteReply"
		, headers : headers
		, data : paramData
		, type : 'POST'
		, dataType : 'text'
		, success: function(result){
			showReplyList();
		}
		, error: function(error){
			console.log("에러 : " + error);
		}
	});
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
#tourlist{
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
		<span class="SubhomeThemedItems_navItemName__1ZZhb SubhomeThemedItems_navItemActive__3ulAC"> <a href="/tourboards/1" id="tourlist">랜선투어</a> </span>
		
		</div>
	</nav>
</section>


<div class="container" style="width: 50%; height: 100%;">
<!--  게시물상세 -->
<div class="container mt-3">
 <div class="input-group mb-3">
  <input type="hidden" id="no" name="no" value="<%=tourboard.getNo()%>">
    <span class="input-group-text">제목</span>
     <input type="text" class="form-control" value="<%=tourboard.getTitle()%>" disabled style="background-color: white;" >
  
    <span class="input-group-text">작성자</span>
    <input type="text" class="form-control" value="<%=tourboard.getWriter().getName() %>" disabled style="background-color: white;">
  </div>

   <div class="input-group mb-3" style="border: solid 1px #ced4da;border-radius:5px; ">
    <span class="input-group-text">내용</span>
    <textarea class="form-control"rows="10"  id="contents" name="contents" style="border: 0;resize: none;background-color: white;" disabled >
    <%=tourboard.getContents() %></textarea>
  </div>
 <%if(isWriter != null && isWriter == true) { %>

	 <div class="btn-group" role="group">
   <button class="btn btn-outline-info" onclick="location.href='/update/<%=tourboard.getNo() %>'" style="border-radius:5px;" >수정</button> &nbsp; &nbsp;
  </div>
		<div class="btn-group" role="group">
   <button class="btn btn-outline-info" onclick="deleteclick(<%=tourboard.getNo()%>)" style="border-radius:5px;" >삭제  </button> &nbsp; &nbsp;
  </div>
		
		<%}%>
	
 </div>

</div>

<!-- Reply Form {s} -->

			<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px; ">
				<form:form name="form" id="form" role="form" modelAttribute="replyVO" method="post">
				<form:hidden path="tno" id="tno"/>
				<div class="row" style="margin-left: 25%">
					<div class="col-sm-10">
						<form:textarea path="content" id="content" class="form-control" rows="3" style="resize:none; width:60%" placeholder="댓글을 입력해 주세요"></form:textarea>
					</div>
					<div class="col-sm-2">
						<form:input type="hidden" path="writername" class="form-control" id="writername" placeholder="댓글 작성자" value="<%=user_id%>"></form:input>
						<button type="button" class="btn btn-sm btn-primary" id="btnReplySave" style="width: 50%; margin-top: 10px"> 저 장 </button>
					</div>
				</div>
				</form:form>
			</div>
			<!-- Reply Form {e} -->

			<!-- Reply List {s}-->
			<div class="my-3 p-3 bg-white rounded shadow-sm" style="margin-left: 400px; margin-right:200px; width:800px; padding-top: 10px">
				<h6 class="border-bottom pb-2 mb-0" id="replyallcount">댓글</h6>
				<div id="replyList"></div>
			</div> 
			<!-- Reply List {e}-->

<br><br>
<br><br>

 
  

</body>
</html>