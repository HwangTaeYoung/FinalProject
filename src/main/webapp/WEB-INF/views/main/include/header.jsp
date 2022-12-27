<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header">
	<div class="headerUtil">
		<div class="container">
			<div class="headerUtLi">
				<div class="header_linkLeft">
					<ul class="header_linkFirst">
						<li class="header_menuName">
							<a href="#">
								<i class="xi-star-o"></i>
								즐겨찾기
							</a>
						</li>
					</ul>
				</div>
				<div class="header_linkRight">
					<ul class="header_linkSecond">
						<li class="header_menuName">
							<a href="#">
								<i class="xi-users-plus"></i>
								헬싱 파트너 되기
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<nav class="headerNav">
		<div class="container">
			<button class="toggle">
				<span class="bar1"></span>
				<span class="bar2"></span>
				<span class="bar3"></span>
			</button>
			<div class="headerNavLi">
				<div class="headerNavLeft">
					<ul class="headernavL">
						<li class="header_nav-item">
							<a href="/">HEALTHING</a>
						</li>
						<li class="header_nav-ite">
							<a href="#">헬싱<sup><i class="xi-plus"></i></sup></a>
						</li>
						<li class="header_nav-ite">
							<a href="javascript:;" class="headerNavonoff">온&오프이용권<i class="xi-caret-down-min"></i></a>
							<ul class="headerMenu">
								<li><a href="/itemonline">온라인 이용권</a></li>
								<li><a href="/itemoffline">오프라인 이용권</a></li>
							</ul>
						</li>
						<li class="header_nav-ite">
							<a href="#">고객센터</a>
						</li>					
					</ul>
				</div>
				<div class="headerNavRight">
					<ul class="headernavR">
						<li class="header_nav-ite">
							<a href="/login" class="header_loginBtn">로그인</a>
						</li>
						<li class="header_nav-ite">
							<a href="#" class="header_loginBtn">회원가입</a>
						</li>					
					</ul>
				</div>
				<div class="clearBoth"></div>
			</div>
		</div>	
	</nav>
</header>
<script>
$(document).ready(function() {
    var jbOffset = $('.headerNav').offset();
	$(window).scroll(function() {
		if($(document).scrollTop()>jbOffset.top) {
			$('.headerNav').addClass('jbFixed');
		}else {
			$('.headerNav').removeClass('jbFixed');
		}
	});
});
$(".headerNavonoff").on("click",function(){
	$(".headerMenu").toggle();
})
</script>