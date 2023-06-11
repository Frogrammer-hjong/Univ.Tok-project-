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
	<title>Univ. Tok! - 내정보</title>
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
	<link href="css/my_style.css" rel="stylesheet">
</head>

<body>
	<jsp:include page="mypro_nav.jsp" /> <!-- include header -->
	
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			
			<!-- main 안내 -->
			<h2 class="masthead-heading text-uppercase mb-0">Univ. Tok!</h2>
			<br>
			<h2 class="page-section-heading text-uppercase mb-0">내 정 보</h2>

			<!-- 분할 선 -->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<!-- 로그인 박스 -->	
			<div class="login_box" id="mypro" style="width: 49em; height: 43em; padding:20px 0 0 0;">
				<table class="my_table">
					<tr> <!-- 현재 아이디 출력 -->
						<td class="my_vertical my_td">
							<h4 class="nomar">현재 아이디 : </h4>
						</td>
						<td class="my_vertical my_td">
							<h4 id="my_id" class="nomar my_h4"></h4>
						</td>
					</tr>

					<tr> <!-- 비밀번호 변경 -->
						<td class="my_vertical my_td">
							<h4 class="nomar">비밀번호 변경 : </h4>
						</td>
						<td class="my_vertical my_td">
							<div class="login_id my_vertical nomar" style="margin-right: 0;">
								<input class="my_display" id="newpw" type="password" placeholder="새로운 PW">
							</div>
						</td>
						<td class="my_vertical my_td">
							<button class="my_button" id="changepw">PW 변경</button>
						</td>
					</tr>

					<tr> <!-- 현재 별명 출력 -->
						<td class="my_vertical my_td">
							<h4 class="nomar">현재 별명 : </h4>
						</td>
						<td class="my_vertical my_td">
							<h4 id="mynick" class="nomar my_h4"></h4>
						</td>
					</tr>

					<tr> <!-- 별명 변경 -->
						<td class="my_vertical my_td">
							<h4 class="nomar">별명 변경 : </h4>
						</td>
						<td class="my_vertical my_td">
							<div class="login_id my_vertical nomar">
								<input class="my_display" id="newnick" type="text" placeholder="새로운 별명">
							</div>
						</td>
						<td class="my_vertical my_td">
							<button class="my_button" id="changenick">별명 변경</button>
						</td>
					</tr>

					<tr> <!-- 현재 학과 출력 -->
						<td class="my_vertical my_td">
							<h4 class="nomar">현재 학과 : </h4>
						</td>
						<td class="my_vertical my_td">
							<h4 id="mydept" class="nomar my_h4"></h4>
						</td>
					</tr>

					<tr> <!-- 학과 변경 -->
						<td class="my_vertical my_td">
							<h4 class="nomar">학과 변경 : </h4>
						</td>
						<td class="my_vertical my_td">
							<div class="login_id my_vertical nomar">
								<input class="my_display" id="newdept" type="text" placeholder="새로운 학과">
							</div>
						</td>
						<td class="my_vertical my_td">
							<button class="my_button" id="changedept">학과 변경</button>
						</td>
					</tr>

					<tr> <!-- 현재 email 출력 -->
						<td class="my_vertical my_td">
							<h4 class="nomar">현재 email : </h4>
						</td>
						<td class="my_vertical my_td">
							<h4 id="myemail" class="nomar my_h4"></h4>
						</td>
					</tr>

					<tr> <!-- email 변경 -->
						<td class="my_vertical my_td">
							<h4 class="nomar">email 변경 : </h4>
						</td>
						<td class="my_vertical my_td">
							<div class="login_id my_vertical nomar">
								<input class="my_display" id="newemail" type="email" placeholder="새로운 email">
							</div>
						</td>
						<td class="my_vertical my_td">
							<button class="my_button" id="changeemail">email 변경</button>
						</td>
					</tr>

					<tr> <!-- 현재 연락처 출력 -->
						<td class="my_vertical my_td">
							<h4 class="nomar">현재 연락처 : </h4>
						</td>
						<td class="my_vertical my_td">
							<h4 id="myphone" class="nomar my_h4"></h4>
						</td>
					</tr>

					<tr> <!-- phone 변경 -->
						<td class="my_vertical my_td">
							<h4 class="nomar">연락처 변경 : </h4>
						</td>
						<td class="my_vertical my_td">
							<div class="login_id my_vertical nomar">
								<input class="my_display" id="newphone" type="phone" placeholder="새로운 phone">
							</div>
						</td>
						<td class="my_vertical my_td">
							<button class="my_button" id="changephone">연락처 변경</button>
						</td>
					</tr>

				</table>
				<br>
				<div>
					<a id="changefin" href="login.jsp"><button class="my_button">정보 수정 완료</button></a>
				</div>
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
	
	<script src="js/myProfile.js"></script>
</body>
</html>