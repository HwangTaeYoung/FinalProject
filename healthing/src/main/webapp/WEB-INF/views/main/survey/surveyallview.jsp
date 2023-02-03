<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<form action="/surveyallview" method="post">
	<div class="surveyAllView">
		<div class="container">
			<div class="surveyAllContens">
				<div class="surveyAllMain">
					<div class="itemViewProgram">
						<h4>헬싱플러스</h4>
						<div class="surveyAllPi">
							<p>헬싱<sup>+</sup></p>
							<p>다이어트</p>
						</div>
					</div>
					<div class="itemViewProgram surveyAllTitle">
						<h4>프로그램 제공</h4>
						<div class="surveyAllList">
							<!-- for문 시작점 -->
							<c:forEach var="list" items="${list}" varStatus="status" >
								<div class="itemOnTomMiSu">
									<div class="itemOnTomDi">
										<a href="/itemonlineview/${list.ino}">
											<div class="itemMy" style="background-image: url('${list.ithumbnail}')">
												<div class="itemLocal">온라인 이용권</div>
											</div>
											<div class="itemMym">
												<div class="itemMymCongal">
													<p class="itemCategory">${list.icategory}</p>
													<p class="itemPeriod">주${list.iweek} / 주${list.iweekcount}회 / ${list.iweektime}분</p>
													<div>
														<strong>${list.ititle}</strong>
													</div>
												</div>
												<div class="itemConGal">
													<div class="itemCo">
														<img class="itemImg" src="${list.icoachimg}">
														<p>${list.icoachname}</p>
													</div>
													<div class="itemPrice">
														<del>
															<i><fmt:formatNumber type="number" value="${list.iprice}"/></i>
															원
														</del>
														<b>${list.isale}% off</b>
														<strong>
															<i>
																<c:set var="price" value="${list.iprice-((list.isale/100)*list.iprice)}"/>
																<fmt:formatNumber type="number" value="${price+(1-(price%1))%1}"/>
															</i>원
														</strong>
														<div class="itemMeta">
															<span>
																남은자리
																<i>${list.ipeople}</i>
															</span>
														</div>
													</div>
												</div>
											</div>
										</a>
									</div>
								</div>
							</c:forEach>
							<!-- for문 끝나는점 -->
						</div>	
					</div>
					<div class="itemViewProgram">
						<h4>중요안내</h4>
						<div class="surveyAllSub">
							<p>진단 설문을 마치면 프로그램이 추천됩니다.</p>
							<p>처방된 프로그램을 결제하면, 결제한 이용권에 따른 기간 이용 가능합니다.</p>
							<p>진단 설문 분석 후, 맞춤 커리큘럼이 제공됩니다.</p>
							<div>설문 후 처방된 프로그램을 구매하세요.</div>
							<ul>
								<li>코치의 맞춤 커리큘럼이 확정된 후 운동을 시작할 수 있습니다.</li>
								<li>코칭기간은 설정된 운동 일정 시작일 부터, 운동 일정 종료일 + 1주일입니다.</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="surveyAllSide">
					<div class="surveyAllSidebar">
						<div class="surveyAllSideBox">
							<p><span class="itemViewSiedTag"><i class="xi-box"></i> 유형</span><span class="itemViewSidepic">헬싱플러스</span></p>
							<p><span class="itemViewSiedTag"><i class="xi-my-location"></i> 목적</span><span class="itemViewSidepic">다이어트</span></p>
						</div>
						<div class="surveyAllSideBox">
							<div class="surveyAlldiv">진단 설문 후 프로그램이 추천됩니다.</div>
							<a id="loginChk" href="javascript:;">
								<img src="/image/taeyoungimage/ic_survey.svg">
								진단 설문하기
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="itemQnA">
				<div class="container">
					<div class="itemQnATitle">
						<h4>자주 묻는 질문</h4>
						<ul>
							<li>
								<b>Q.</b>
								온&오프 이용권은 프로그램을 어떻게 구매할 수 있나요?
								<i class="xi-plus"></i>
							</li>
							<li>
								<b>Q.</b>
								운동 프로그램을 구매했어요. 운동을 시작하려면 어떻게 해야 하나요?
								<i class="xi-plus"></i>
							</li>
							<li>
								<b>Q.</b>
								결제한 운동 프로그램을 환불할 수 있나요?
								<i class="xi-plus"></i>
							</li>
							<li>
								<b>Q.</b>
								고객센터 운영 시간이 궁금해요.
								<i class="xi-plus"></i>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="itemRefund">
				<div class="container">
					<h4>환불정책</h4>
					<div class="itemRefundsub">
						<p>결제 후 커리큘럼을 제공 받는 등 강사의 용역 제공을 개시하기 전의 경우에만 환불이 가능합니다.</p>
						<p>취소 신청은 홈페이지 MY PAGE 결제 내역에서 직접 진행해 주시기 바랍니다. </p>
						<p>단, 전월에 결제한 이용권에 대해서는 취소가 불가능합니다.</p>
					</div>
					<a href="#">환불규정 자세히 보기<i class="xi-share"></i></a>
				</div>
			</div>
		</div>
	</div>
</form>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
<script>
$("#loginChk").click(function(){
	var idChk = "${id}";
	if(idChk!=""){
		console.log("ok");
		location.href="/surveywrite";
	}else{
		console.log("no");
		alert("로그인 해주세요");
		location.href="/login";
	}
});
</script>
</body>
</html>