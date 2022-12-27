<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../include/head.jsp" %>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div id="loginMain">
	<div class="loginDetail">
		<div class="loginDetailleft">
			<div class="loginLogo">
				<img src="/image/taeyoungimage/logo.png">
			</div>
			<div class="loginInnerbox">
				<div class="loginMent">
					<h2>방문해 주셔서 기뻐요!</h2>
				</div>
				<form class="loginInput" action="" method="POST">
					<div class="loginId">
						<input type="text" class="loginValue" placeholder="아이디를 입력하세요">
					</div>
					<div class="loginPwd">
						<input type="password" class="loginValue" placeholder="패스워드를 입력하세요">
					</div>
					<div class="loginCheck">
						<label><input type="checkbox" id="loginCheckbox" value="login">로그인 기억하기</label>
					</div>
					<div class="loginButton">
						<input type="submit" id="loginBtn" class="loginBtn" value="로그인">
					</div>	
				</form>
				<div class="loginAtag">
					<a href="/loginfind">아이디/비밀번호를 잊으셨나요?</a>
				</div>
			</div>	
		</div>
		<div class="loginDetailright"></div>
	</div>	
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>