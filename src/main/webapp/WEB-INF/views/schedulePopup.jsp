<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 추가</title>
<style type="">

*{
      font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;

}

.calender-box{
    width: 700px;
    height: 450px;
    z-index: 2;
    background: white;
    margin: 10px auto;
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
    left: 20px;
    font-weight: bold;

}

.calender-body{
    height: 500px;
    width: 693px;
    border-left: 4px solid #abb2c7;
    border-right: 4px solid #abb2c7;
    border-bottom: 4px solid #abb2c7;
}

.calender-body-box{
    width: 100%;
    height: 60px;
    position: relative;
}

.calender-body-box-span{
    width: 100px;
    height: 100px;
    font-size: 23px;
    position: absolute;
    top: 40px;
    left: 60px;

}

.calender_input{
    position: absolute;
    top: 36px;
    right: 100px;
      width: 400px;
    height: 30px;
    border: 2.5px solid #dadce0;
    font-size: 16px;

}

.calender-tx {
  position: absolute;
    top: 36px;
    right: 100px;
      width: 400px;
    height: 200px;
    border: 2.5px solid #dadce0;
    font-size: 16px;
    resize: none; 


}

.calende_input_date{
    width: 170px;
    height: 35px;
    margin-left: 63px;
    margin-right: -20px;
    margin-top: 34px;
    border: 2.5px solid #dadce0;
    font-size: 14px;

}

.calende_date_small{
    position: absolute;
    top: 44px;
    right: 300px;
    font-weight: bolder;
}

.ok-button{
    width: 200px;
    height: 50px;
 background-color: #764ba2;
    color: white;
    border: none;
    border-radius: 7px;
    font-size: 20px;
    margin: 200px auto;
    cursor: pointer;
}

</style>





<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- custom -->

</head>
<body>
<div class ="calender-box" id="popupGroup">

  <!-- 플래너 팝업창 header 부분 -->
	<div class="calender-header">
		<h1> 일정 추가 </h1>
	</div>
	
	
	<div class="calender-body">
	<form id="scheduleData">
		<div class="calender-body-box">
			<span class="calender-body-box-span">일정제목</span>
			<input class="calender_input" id="subject" type="text" name="subject" placeholder="제목을 적어주세요">
		</div>
		
		<div class="calender-body-box">
	     	<span class="calender-body-box-span">일정기간</span>
			<input class="calende_input_date" id="startDate" type="text" name="startDate" id="startDate">
			<span class="calende_date_small">~</span>
		   <input class="calende_input_date" id="endDate" type="text" name="endDate" id="endDate">
		</div>


		<div class="calender-body-box">
			<span class="calender-body-box-span">설명</span><br>
			<textarea class="calender-tx" id="memo" name="memo"placeholder="100글자까지 입력 가능합니다."></textarea>
		</div>
		
	</form>
		<button class="ok-button" type="button" onclick="click_ok()">일정추가하기</button>

	</div>
</div>
<script type="text/javascript">
	$(function() {
		$.datepicker.setDefaults({
				dateFormat : "yy-mm-dd",
				showOtherMonths : true,
				showMonthAfterYear : true,
				changeYear : true,
				changeMonth : true,
			yearSuffix : "년",
			monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
			monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			dayNamesMin: ['일','월','화','수','목','금','토'],
			dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일']
		});
		$("#startDate").datepicker();
		$("#endDate").datepicker();
		
		$("#startDate").datepicker('setDate','today');
		$("#endDate").datepicker('setDate','today');
	});

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
	
		$.ajax({
				data : scheduleData,
				url : "addSchedule",
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