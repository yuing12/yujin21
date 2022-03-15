<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="member">
		<h2>로그인</h2>

		<div class="box">
			<h3>회원 로그인</h3>

			<form id="formLogin" method="post" action="/login" novalidate="novalidate">
		
				<input type="hidden" id="returnUrl" name="returnUrl" value="https%3A%2F%2Ftwins.lockerdium.co.kr%2F">
				<div class="login">
					<div class="input-info">
						<div>
							<input type="text" class="text" id="loginId" name="id" value="" placeholder="아이디">
						</div>
						<div>
							<input type="password" class="text" id="loginPwd" name="password" value="" placeholder="비밀번호" >
						</div>
					</div>
					<button type="submit" class="skinbtn point2 l-login"><em>로그인</em></button>
				</div>

				<div class="m2"></div>
				<div class="btn">
					<button type="button" class="skinbtn base3 l-join" id="btnJoinMember" onclick="window.open('member')"><em>회원가입</em></button>
					<button type="button" class="skinbtn default l-findid" id="btnFindId" onclick="window.open('findid')"><em>아이디 찾기</em></button>
					<button type="button" class="skinbtn default l-findpw" id="btnFindPwd" onclick="window.open('findpw')"><em>비밀번호 찾기</em></button>
				</div>
			</form>
			<form id="formOrderLogin" action="/login" method="post" novalidate="novalidate">
				<fieldset>
					
					<input type="hidden" name="mode" value="guestOrder">
					<input type="hidden" name="returnUrl" value="../mypage/order_view.php">

					<h3 class="tit-nonmember">비회원 주문조회</h3>

					<div class="login">
						<div class="input-info">
							<div>
								<input type="text" name="orderNm" class="text" placeholder="주문자명">
							</div>
							<div>
								<input type="text" name="orderNo" class="text" placeholder="주문번호">
							</div>
						</div>
						<button type="submit" class="skinbtn point1 l-confirm"><em>확인</em></button>
					</div>
				</fieldset>
			</form>
			<p class="js-caution caution-msg2">주문번호와 비밀번호를 잊으신 경우, 고객센터로 문의하여 주시기 바랍니다.</p>
		</div>
	</div>
</body>
</html>