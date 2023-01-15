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
				<form>
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
								<textarea rows="10" class="boardTextarea" name="bcontents" id="shopping_content" style="width: 100%;"></textarea>
							</td>
						</tr>
						<tr>
							<th>파일선택</th>
							<td><input type="file" multiple></td>
						</tr>
					</table>
					<div class="boardWriteBtn">
						<input type="button" value="저장" onclick="submitContents();">
						<input type="button" value="취소" onclick="location.href='/boardlist'">
					</div>	
				</form>
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
	<script>
    	var oEditors = [];
    	nhn.husky.EZCreator.createInIFrame({
    		oAppRef : oEditors,
    		elPlaceHolder : "shopping_content",
    		sSkinURI : "/smarteditor2/SmartEditor2Skin.html",
    		fCreator : "createSEditor2",
    		htParams : { 
    	    	// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
    	        bUseToolbar : true, 
	    		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
	    		bUseVerticalResizer : false, 
	    		// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
	    		bUseModeChanger : false 
	    	    }
    	});/* 

    	// ‘작성완료’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
    	function submitContents(elClickedObj) {
    		// 에디터의 내용이 textarea에 적용된다.
    		oEditors.getById["textarea ID값 작성"].exec("UPDATE_CONTENTS_FIELD", []);
    		var submitBtn = document.getElementById("스크립트 onclick을 호출한 버튼 ID값 작성");
    		var value = document.getElementById("textarea ID값 작성").value;
    		console.log(value);
    		submitBtn.form.submit();
    	} */
    </script>
</body>
</html>