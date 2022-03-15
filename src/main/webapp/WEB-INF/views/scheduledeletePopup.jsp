<%@page import="com.stone.simple.schedule.common.ScheduleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<ScheduleDTO> list = (ArrayList<ScheduleDTO>)request.getAttribute("showSchedule");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="">
*{
     font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;

}
.calender-box{
    z-index: 2;
    background: white;
    margin: 20px auto;
    margin-left: 20px;
    cursor: pointer;
    text-align: center;

}

.calender-header{
    width: 693px;
    height: 80px;
    border: 4px solid #abb2c7;
    position: relative;

}

.calender-header h1{
margin-top : 20px;
    left: 20px;
    font-weight: bold;

}

.calender-body{
    height: 360px;
    width: 693px;
    border-left: 4px solid #abb2c7;
    border-right: 4px solid #abb2c7;
    border-bottom: 4px solid #abb2c7;
}

.ok-button{
    width: 200px;
    height: 50px;
 background-color: #764ba2;
    color: white;
    border: none;
    border-radius: 7px;
    font-size: 20px;
    margin: 10px auto;
    cursor: pointer;
}

.calender-body-box{
    width: 100%;
    height: 60px;
    position: relative;
}

</style>
<title>일정 삭제</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- custom -->

</head>
<body>
<div class ="calender-box" id="popupGroup">
	<div class="calender-header">
		<h1 class="zTree-h1"> 일정 삭제 </h1>
	</div>
	<div class="calender-body">
	<form action="/deleteschedule" method="post" id="scheduleData">
		<br>
		<div class="top">삭제할 일정을 골라주세요
		</div>
		<div class="calender-body-box">
			
			<%for(int i=0; i<list.size(); i++){ %>
			<hr>
			<input type="radio" name="sno" id="cb<%=i%>" value="<%=list.get(i).getSno()%>">
   		    <label for="cb<%=i%>"><%=list.get(i).getSubject() %></label>
			<hr>
			<%} %>
		</div>
<!-- 		<input type="submit" id="core" value="확인"> -->
	</form>
	<button class="ok-button" type="button" onclick="click_ok()">확인</button>
	</div>
</div>
<script type="text/javascript">

	$.fn.serializeObject = function() {
		var o = {};
		var a =this.serializeArray();
		$.each(a, function() {
			var name = $.trim(this.name),
				value = $.trim(this.value);
			
			if(o[name]){
				if(!o[name].push){
					o[name] = [o[name]];
				}
				o[name].push(value || '');
			}else{
				o[name] = value || '';
			}
		});
	return o;	
	}
function click_ok() {
	var scheduleData = JSON.stringify($('form#scheduleData').serializeObject());
console.log(scheduleData);
	$.ajax({
			data : scheduleData,
			url : "deleteschedule",
			type : "POST",
			dataType : "JSON",
			contentType : "application/json; charset=UTF-8",
			success : function(data) {
				console.log(data);
				opener.parent.location.reload();
				window.close();
			}
	})
	



}
	
	
	
</script>
</body>
</html>