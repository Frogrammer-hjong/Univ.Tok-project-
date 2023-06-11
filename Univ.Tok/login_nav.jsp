<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
	<div class="container">
		<a class="navbar-brand" href="#login_logo">Univ. Tok!</a>
		<button
			class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
			type="button" data-bs-toggle="collapse"
			aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			Menu <i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item mx-0 mx-lg-1">
					<!-- 회원가입 클릭 시 홈페이지 내 회원가입 폼으로 포커스 이동 -->
					<a class="nav-link py-3 px-0 px-lg-3 rounded" href="main.jsp#sign">회원가입</a>
				</li>
				<li class="nav-item mx-0 mx-lg-1">
					<a class="nav-link py-3 px-0 px-lg-3 rounded" href="main.jsp">홈페이지</a>
				</li>
			</ul>
		</div>
	</div>
</nav>