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
<div id="memberjoinMain">
	<div class="memberjoinDetail">
		<div class="loginLogo">    
			<img src="/image/taeyoungimage/logo.png">
		</div>
		<div class="loginMent memberjoinMent">           
			<h2>오늘부터,</h2>
			<h2>함께 헬싱!</h2>
		</div>
		<div class="memberjoinTitle">
			<h3>회원정보 입력</h3>
			<p>이용약관과 개인정보처리방침에 대한 안내를 읽고 동의해주세요</p>
			<p><span>*</span> 표기된 항목은 필수입력 항목입니다.</p>			
		</div>
		<table class="memberjoinTable">
			<tr class="memberjoinId">
				<th>아이디<span>*</span></th>
				<td>
					<input type="text" placeholder="아이디를 입력해주세요" required>
					<button type="button">중복확인</button>
				</td>
			</tr>
			<tr class="memberjoinPwd">
				<th>비밀번호<span>*</span></th>
				<td>
					<input type="password" placeholder="비밀번호를 입력해주세요" required>
					<p># 영문 대소문자,숫자,특수문자 중 2가지 이상 조합하여 설정해주세요.</p>	
				</td>
			</tr>
			<tr class="memberjoinPwdcheck">
				<th>비밀번호 확인<span>*</span></th>
				<td><input type="text" placeholder="비밀번호를 재입력해주세요" required></td>
			</tr>
			<tr class="memberjoinName">
				<th>이름<span>*</span></th>
				<td><input type="text" required></td>
			</tr>
			<tr class="memberjoinPhone">
				<th>연락처<span>*</span></th>
				<td>
					<input type="text" maxlength="11" required>
					<p># 하이픈(-)을 포함하지 않고 입력해주세요. 입력 예) 01012341235, 021231234</p>
				</td>
			</tr>
			<tr class="memberjoinEmail">
				<th>이메일<span>*</span></th>
				<td>
					<input type="text" id="email_id" class="form_w200" value="" title="이메일 아이디" maxlength="20" required /> @ 
					<input type="text" id="email_domain" class="form_w200" value="" title="이메일 도메인" maxlength="20" required />
					<select class="memberjoinEmailselect" title="이메일 도메인 주소 선택" onclick="setEmailDomain(this.value);return false;">
					    <option value="">-선택-</option>
					    <option value="naver.com">naver.com</option>
					    <option value="gmail.com">gmail.com</option>
					    <option value="hanmail.net">hanmail.net</option>
					    <option value="hotmail.com">hotmail.com</option>
					    <option value="korea.com">korea.com</option>
					    <option value="nate.com">nate.com</option>
					    <option value="yahoo.com">yahoo.com</option>
					</select>
				</td>
			</tr>			
			<tr class="memberjoinBirth">
				<th>생년월일</th>
				<td>
					<select class="memberjoinBirthselect" name="yy" id="year"></select><span>년</span>
					<select class="memberjoinBirthselect" name="mm" id="month"></select><span>월</span>
					<select class="memberjoinBirthselect" name="dd" id="day"></select><span>일</span>
				</td>
			</tr>
			<tr class="memberjoinGender">
				<th>성별<span>*</span></th>
				<td>
				<input type="radio" name="gender" id="man" value="man" required>남자
				<input type="radio" name="gender" id="woman" value="woman" required>여자
				</td>
			</tr>
			<tr class="memberjoinheight">
				<th>키<span>*</span></th>
				<td><input type="text" maxlength="5" required> cm</td>
			</tr>					
			<tr class="memberjoinweight">
				<th>몸무게<span>*</span></th>
				<td colspan="2"><input type="text" maxlength="5" required> kg</td>
			</tr>
			<tr class="memberjoinZipcode">
				<th rowspan="4">주소</th>
				<td>
					<input type="text" class="memberjoinZipnum">
					<input type="button" value="우편번호">
				</td>
			</tr>
			<tr class="memberjoinAddressone">
				<td>
					<input type="text">								
				</td>
			</tr>
			<tr class="memberjoinAddresstwo">
				<td>
					<input type="text">								
				</td>
			</tr>
			<tr class="memberjoinAddressMent">
				<td>
					<p># 주소입력은 선택 사항입니다.</p>
					<p># 단, 주소가 없는 경우 지역 이벤트 발생시 안내에 대해 제약을 받을 수 있습니다.</p>					
				</td>
			</tr>
		</table>
		<div class="memberjoinBtn">
			<input type="submit" value="회원가입">
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
<script>
$(document).ready(function(){            
    var now = new Date();
    var year = now.getFullYear();
    var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
    var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
    //년도 selectbox만들기               
    for(var i = 1900 ; i <= year ; i++) {
        $('#year').append('<option value="' + i + '">' + i + '</option>');    
    }

    // 월별 selectbox 만들기            
    for(var i=1; i <= 12; i++) {
        var mm = i > 9 ? i : "0"+i ;            
        $('#month').append('<option value="' + mm + '">' + mm + '</option>');    
    }
    
    // 일별 selectbox 만들기
    for(var i=1; i <= 31; i++) {
        var dd = i > 9 ? i : "0"+i ;            
        $('#day').append('<option value="' + dd + '">' + dd+ '</option>');    
    }
    $("#year  > option[value="+year+"]").attr("selected", "true");        
    $("#month  > option[value="+mon+"]").attr("selected", "true");    
    $("#day  > option[value="+day+"]").attr("selected", "true");
})
</script>
</body>
</html>