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
			<div class="boardWriteDetail boardViewDetail">
				<div class="loginLogo">
					<img src="/image/taeyoungimage/logo.png">
				</div>
				<div class="loginMent memberjoinMent">
					<h2>오늘부터,</h2>
					<h2>함께 헬싱!</h2>
				</div>
				<div class="memberjoinTitle">
					<h3>1:1문의 상세보기</h3>
				</div>
				<table class="memberjoinTable">
					<tr>
						<th>카테고리</th>
						<td>공지</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>박미래</td>
					</tr>
					<tr>
						<th>작성일자</th>
						<td>2023.01.01</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>오프라인 이용원 문의요.</td>
					</tr>
					<tr>
						<th>내용</th>
						<td class="boardViewsub">
							<p>
							안녕하세요 오프라인 관련으로 문의드립니다.
							해당 이용권 구매 시 상세 이용기간은 어떻게 될까요?
							</p>
						</td>
					</tr>
					<tr>
						<th>파일받기</th>
						<td><a href="" class="boardViewLink">다운로드</a></td>
					</tr>
				</table>
				<div class="boardWriteBtn">
					<input type="button" value="수정">
					<input type="button" value="삭제">
					<input type="button" onclick="location.href='/boardlist'" value="목록">
				</div>	
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
</body>
</html>