<%@page import="com.stone.simple.schedule.common.ScheduleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<ScheduleDTO> list = (ArrayList<ScheduleDTO>)request.getAttribute("showSchedule");
	Boolean 회원있는가 = (Boolean)request.getAttribute("isuser");
	Boolean isLogin = (Boolean)request.getAttribute("isLogin");
%>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
	  
	  var Draggable = FullCalendar.Draggable;

	  
	  
	  var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {

      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'addEventButton,myCustomButton,dayGridMonth,listYear'
      },
      editable: true, 
      customButtons: {
          addEventButton: {
            text: '일정추가',
            click: function() {
              var url = "/schedulePopup";
              var name = "schedulePopup";
              var option = "width = 800, height = 600 left = 200, top=50, location=no";
              window.open(url,name,option);
            }
          },
          myCustomButton: {
              text: '일정삭제',
              click: function() {
            	  var url = "/deletepopup";
                  var name = "scheduledeletePopup";
                  var option = "width = 800, height = 500 left = 200, top=50, location=no";
                  window.open(url,name,option);
              }
            }
        },
      locale : "ko",
      displayEventTime: false, // don't show the time column in list view
	
      googleCalendarApiKey: 'AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE',

     events: [
    	 <%
    	 	if(회원있는가 != null && 회원있는가 == true){
    	 		
    	 	for(int i=0; i < list.size(); i++){
    	 		ScheduleDTO dto = (ScheduleDTO)list.get(i);
    	 		System.out.println(list.get(i).getMemo());
    	 %>
    	
    	 	{
			title : '<%=dto.getSubject() %>', 
			memo : `<%=dto.getMemo()%>`,
    	 	start : '<%= dto.getStartDate()%>',
    	 	end : '<%= dto.getEndDate()%>'
    	 	},
		<%}}%>
			
     ],
     eventClick: function(info) {
    	 console.log(info)
    	 console.log(info.el.fcSeg.eventRange.def.extendedProps.memo)
    	 console.log(info.el.fcSeg.eventRange.range.start)
    	 let start = info.el.fcSeg.eventRange.range.start;
     	 let end = info.el.fcSeg.eventRange.range.end;
    	 let memo = info.el.fcSeg.eventRange.def.extendedProps.memo;
    	 $("#memo").val(memo);
    	 $("#start").text(start);
    	 $("#end").text(end);
         var modal = $("#schedule-edit");
         modal.modal('show');
     },
     
    	  
    });

    calendar.render();
  });

  function 페이지이동(istrue) { 
	 if(istrue){
		 location.href = "/checklist";
	 }else{
		 alert("로그인을 해주세요");
	 }
	
}
</script>
<style>
.fc-event {
    border: 1px solid #ff6600;
    background-color: #ff6600;
}
  body {
    
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
    color: black;
  }
	#calendar-container{
	margin: 30px 10px;
	}	

  #calendar {
    max-width: 950px;
    max-height: 800px;
    margin: 0 auto;
  }
  .add-button{
  	position: absolute;
  	top: 1px;
  	right: 230px;
  	background:  #2C3E50;
  	border: 0;
  	color: white;
  	height: 35px;
  	border-radius: 3px;
  	width: 157px;
  }
  .fc{
     color: black;
}
  
	.sec{
margin-top: 20px;
}

section{
	left: 20px;
	position: relative;
	height: 24px;
	width: 1024px;
	    background: none;
	    margin: 0 auto;

}

.btn{
background-color :  #2c3e50;
  color: #fff;
}

.header{
/* background-color : #ECECFB; */
background-color : #F7F7FF;
 
  text-align: center;
}
</style>
</head>
<body>
<!--    1111헤더 영역 -->
   <header >
   <div class="header">
<a href="/main3"><img  src="img/logo/최종로고.png"  width="20%"; height="10%;"/></a>
</div>
   </header>
 
<div class="sec">
<section class="section">
<div class="container" id="ck"style="text-align: left;" ><button type="button" onclick="페이지이동(<%=isLogin%>)" class="btn btn-outline-primary">체크리스트 확인하기</button></div>	
</section> 	
</div>

 <div id="calendar-container" >
  	<div id='calendar'>
  	</div>
  	</div>

	
<!-- Edit Modal -->
<div class="modal fade" id="schedule-edit">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">일정</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
                <form>
                    <div class="form-group">
                    
                    <label>출발 날짜</label>
                    <span id="start" class="form-control"></span>
                    <label>끝 날짜</label>
                     <span id="end" class="form-control"></span>
                        <label>일정</label>
                        <textarea id="memo" class="form-control" readonly="readonly" rows="6" style="resize: none;"></textarea> 
                    </div>
                </form>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>