<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="partnerWrap">
	<div class="container">
		<div class="mypageTitle">
			<h3>라커룸</h3>
		</div>
		<div class="mypageProfileIcon">
			<i class="xi-user-o"></i>
			<p>프로필</p>
		</div>
		<div class="mypageFlex">
			<div class="mypageFlexLeft">
				<div class="mypageProfileDetail">
					<h4>프로필</h4>
					<a href="/memberupdate/${member.uno}" class="mypageMyProfile">
						<span class="mypageName">${member.uname}
						<c:choose>
							<c:when test="${member.ugender=='man'}">
								<img src="./image/taeyoungimage/ic_gender_male.svg">
							</c:when>
							<c:otherwise>
								<img src="./image/taeyoungimage/ic_gender_female.svg">
							</c:otherwise>
						</c:choose>
						</span>
						<span>${member.ubirth}</span>
						<span>${member.ucm}cm / ${member.ukg}kg</span>
						<span class="mypageImage"><img src="image/taeyoungimage/ic_chev_right.svg"></span>
					</a>
				</div>
				<div class="mypageHealthing">
					<h4>헬싱+</h4>
					<div class="itemOnViewProBottom itemViewProgram mypageProgram">
						<div class="itemOnViewProBottomimg">
							<img src="/image/seondooimage/viman.svg">
							<div class="itemOnViewProBottomKg">${bmiSet.bmiResult}</div>
						</div>
						<h3 class="itemOnViewProfirst">🙋‍♀️🙋🏻‍♂️<b>${bmiSet.bmiResult}</b>이 할 수 있는 프로그램입니다.</h3>
						<h3>
							<span>헬싱이 알려드려요!</span>
							<span>
								<b>${bmiSet.bmiResult}</b>은?
							</span>
						</h3>
						<div class="itemOnViewYoga mypageYoga">
							<p>
								${bmiSet.health}
							</p>
							<h3>
								<span>
									<b>${bmiSet.bmiResult}</b>을 위한
								</span>
								<span>추천 식단!</span>
							</h3>
							<p>
								${bmiSet.food}
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="mypageFlexRight">
				<div class="mypageRightBasic">
					<h4>기본 지표</h4>
					<a href="#">
						<span class="mypageBasicTitle">성별</span>
						<span class="mypageRightImg"><img src="image/taeyoungimage/ic_chev_right.svg"></span>
						<span class="mypageRightInfo"><strong>${member.ugender}</strong></span>
					</a>
					<a href="#">
						<span class="mypageBasicTitle">생년월일</span>
						<span class="mypageRightImg"><img src="image/taeyoungimage/ic_chev_right.svg"></span>
						<span class="mypageRightInfo"><strong>${member.ubirth}</strong></span>
					</a>
					<a href="#">	
						<span class="mypageBasicTitle">키</span>
						<span class="mypageRightImg"><img src="image/taeyoungimage/ic_chev_right.svg"></span>
						<span class="mypageRightInfo"><strong>${member.ucm}cm</strong></span>
					</a>
					<a href="#">
						<span class="mypageBasicTitle">몸무게</span>
						<span class="mypageRightImg"><img src="image/taeyoungimage/ic_chev_right.svg"></span>
						<span class="mypageRightInfo"><strong>${member.ukg}kg</strong></span>
					</a>
				</div>
				<div class="mypageItem">
					<h4>추천 아이템</h4>
					<!-- for문 시작점 -->
					<c:if test="${empty list}">
					비었음
					</c:if>
					<c:if test="${not empty list}">
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
					</c:if>
					<!-- for문 끝나는점 -->
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>