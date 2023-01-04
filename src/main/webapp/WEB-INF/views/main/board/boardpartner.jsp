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
	<div class="boardList">
		<div class="container">
			<div class="boardListTable">
				<div class="boardTopTitle">
					<h1>파트너 신청</h1>
				</div>
				<table>
					<tr>
						<th>No.</th>
						<th>작성자</th>
						<th>제목</th>
						<th>작성일자</th>
						<th>카테고리</th>
					</tr>
					<tr onclick="location.href='/boardview'">
						<td>1</td>
						<td>박미래</td>
						<td>오프라인 이용권문의요.</td>
						<td>2023.01.01</td>
						<td class="boradListCat">
							<span class="boardEtc">기타</span>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>박미래</td>
						<td>오프라인 이용권문의요.</td>
						<td>2023.01.01</td>
						<td class="boradListCat">
							<span class="boardRed">공지</span>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td>박미래</td>
						<td>오프라인 이용권문의요.</td>
						<td>2023.01.01</td>
						<td class="boradListCat">
							<span class="boardGreen">그린</span>
						</td>
					</tr>
					<tr>
						<td>4</td>
						<td>박미래</td>
						<td>오프라인 이용권문의요.</td>
						<td>2023.01.01</td>
						<td class="boradListCat">
							<span class="boardPurple">보라</span>
						</td>
					</tr>
					<tr>
						<td>5</td>
						<td>박미래</td>
						<td>오프라인 이용권문의요.</td>
						<td>2023.01.01</td>
						<td class="boradListCat">
							<span>기타</span>
						</td>
					</tr>
					<tr>
						<td>6</td>
						<td>박미래</td>
						<td>오프라인 이용권문의요.</td>
						<td>2023.01.01</td>
						<td class="boradListCat">
							<span>기타</span>
						</td>
					</tr>
					<tr>
						<td>7</td>
						<td>박미래</td>
						<td>오프라인 이용권문의요.</td>
						<td>2023.01.01</td>
						<td class="boradListCat">
							<span>기타</span>
						</td>
					</tr>
					<tr>
						<td>8</td>
						<td>박미래</td>
						<td>오프라인 이용권문의요.</td>
						<td>2023.01.01</td>
						<td class="boradListCat">
							<span>기타</span>
						</td>
					</tr>
					<tr>
						<td>9</td>
						<td>박미래</td>
						<td>오프라인 이용권문의요.</td>
						<td>2023.01.01</td>
						<td class="boradListCat">
							<span>기타</span>
						</td>
					</tr>
					<tr>
						<td>10</td>
						<td>박미래</td>
						<td>오프라인 이용권문의요.</td>
						<td>2023.01.01</td>
						<td class="boradListCat">
							<span>기타</span>
						</td>
					</tr>
				</table>
			</div>
			<div class="boardlistPage">
				<ul>
					<li><a href="#">〈</a></li>
					<li class="boardlistPageBtn"><a href="#" class="on">1</a></li>
					<li class="boardlistPageBtn"><a href="#">2</a></li>
					<li class="boardlistPageBtn"><a href="#">3</a></li>
					<li class="boardlistPageBtn"><a href="#">4</a></li>
					<li class="boardlistPageBtn"><a href="#">5</a></li>
					<li><a href="#">〉</a></li>
				</ul>
				<a href="/boardwrite" class="boardlistBtn">글쓰기</a>
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
</body>
</html>