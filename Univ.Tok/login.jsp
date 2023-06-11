<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>Univ. Tok! 로그인 페이지</title>
	<!-- Favicon-->
	<link rel="shortcut icon" type="image/x-icon" href="favicon-16x16.png" />
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
		crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
		rel="stylesheet" type="text/css" />
	<link
		href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
		rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="css/styles.css" rel="stylesheet" />
</head>

<body>
	<jsp:include page="login_nav.jsp" /> <!-- include header -->
	
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- 로고 이미지 -->
			<img src="img/hi2.svg" alt="mainlogo" id="login_logo" width="180px" height="180px"/> <br>
			
			<!-- main 안내 -->
			<h2 class="masthead-heading text-uppercase mb-0">Univ. Tok! 로그인</h2>
			<br>

			<!-- 분할 선 -->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<!-- 로그인 박스 -->
			<div class="login_box">
				<form id="login-form" action="main_loged_in.jsp" method="post"> <!-- 로그인 한 사용자 정보를 활용하기 위한 액션태그 지정 -->
					<div class="login_id">
						<h4>아 이 디</h4>
						<input type="text" id="loginId" name="loginId" placeholder="ID">
					</div>
					<br>
					<div class="login_pw">
						<h4>비 밀 번 호</h4>
						<input type="password" id="loginPW" name="loginPW" placeholder="Password">
					</div>
					<div style="display: none;"> <!-- POST를 통해 별명값을 넘겨주기 위함 -->
						<h4>별 명</h4>
						<input type="text" id="loginNick" name="loginNick" placeholder="별명">
					</div>
					<div class="login_submit">
						<input type="submit" id="login" value="로 그 인">
					</div>
				</form>
			</div>

			<!-- 분할 선 -->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<!-- 메인 슬로건 -->
			<p class="masthead-subheading font-weight-light mb-0">
				Univ. Tok!에서 나누는 대학 생활 속 모든 이야기
			</p>
		</div>
	</header>
	
	<jsp:include page="footer.jsp" /> <!-- include footer -->
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	 <script src="js/login.js"></script>
</body>
</html>