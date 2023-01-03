<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="../include/head.jsp" %>
</head>
<body>
	<!-- header include -->
	<%@ include file="../include/header.jsp" %>
	<!-- header include End -->
	<div class="boardWrite">
		<div class="container">
			<div class="boardWriteDetail">
				<div class="loginLogo">
					<img src="/image/taeyoungimage/logo.png">
				</div>
				<div class="loginMent memberjoinMent">
					<h2>오늘부터,</h2>
					<h2>함께 헬싱!</h2>
				</div>
				<div class="memberjoinTitle">
					<h3>1:1문의 남기기</h3>
				</div>
				<table class="memberjoinTable">
					<tr>
						<th>카테고리</th>
						<td>
							<select>
								<option>선택하세요</option>
								<option>공지</option>
								<option>기타</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" class="boardIntile"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea class="boardTextarea"></textarea>
						</td>
					</tr>
					<tr>
						<th>파일선택</th>
						<td><input type="file" multiple></td>
					</tr>
				</table>
				<div class="boardWriteBtn">
					<input type="submit" value="저장">
					<input type="button" value="취소" onclick="location.href='/boardlist'">
				</div>	
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
</body>
</html>