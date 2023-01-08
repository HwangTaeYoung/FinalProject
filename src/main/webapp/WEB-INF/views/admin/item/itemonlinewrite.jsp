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
	<div class="adminWrap">
		<%@ include file="../include/gnb.jsp" %>
		<div class="adminContent">
			<%@ include file="../include/header.jsp" %>
			<div class="adminContentBox">
				<div class="itemWriteDetail">
					<div class="adminitemTopTitle">
						<h1>온라인이용권 등록</h1>
					</div>
					<table class="adminitemwrite">
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
						<input type="button" value="취소" onclick="location.href='/adminitemonline'">
					</div>	
				</div>
			</div>
		</div>	
	</div>			
</body>
</html>