<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>대학생을 위한 커뮤니티 - 유니브 톡!</title>
        <!-- Favicon-->
        <link rel="shortcut icon" type="image/x-icon" href="favicon-16x16.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
		  <link href="css/my_style.css" rel="stylesheet" />
    </head>
<body id="page-top">
	<jsp:include page="nav.jsp" /> <!-- include header -->

	<!-- 메인페이지 구성 -->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- 대표 이미지 -->
			<img class="masthead-avatar mb-5" src="img/hi2.svg"
				alt="..." />
			<!-- 메인 제목 -->
			<h1 class="masthead-heading text-uppercase mb-0">대학생을 위한 커뮤니티</h1>
			<br>
			<h3 class="masthead-heading text-uppercase mb-0">Univ. Tok!</h3>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- 메인_부제목 -->
			<p class="masthead-subheading font-weight-light mb-0">
				Univ. Tok!에서 나누는 대학 생활 속 모든 이야기
			</p>
		</div>
	</header>
	
	<!-- 각종 게시판  -->
	<section class="page-section portfolio" id="board">
		<div class="container">
				<!-- 게시판 메인 타이틀 -->
				<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Tok! Room</h2>
				<!-- Icon Divider-->
				<div class="divider-custom">
					<div class="divider-custom-line"></div>
					<div class="divider-custom-icon"><i class="fas fa-star"></i></div>
					<div class="divider-custom-line"></div>
				</div>
				<!-- 게시판 아이템 그리드 -->
				<div class="row justify-content-center">
				
					<!-- 자유 게시판 -->
					<div class="col-md-6 col-lg-4 mb-5">
						<div class="portfolio-item mx-auto">
							<a href="#!" onclick="javascript:alert_btn('회원가입/로그인 후 이용 가능합니다!')">
								<div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
									<div class="portfolio-item-caption-content text-center text-white">
										<h4>자유 게시판</h4>
										<h6>자유로운 주제로 이용 가능한 게시판!</h6>
									</div>
								</div>
								<img class="img-fluid" src="img/talk.png"alt="..." />
							</a>
						</div>
					</div>
					
					<!-- 학업관련 게시판 -->
					<div class="col-md-6 col-lg-4 mb-5">
						<div class="portfolio-item mx-auto">
							<a href="#!" onclick="javascript:alert_btn('회원가입/로그인 후 이용 가능합니다!')">
								<div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
									<div class="portfolio-item-caption-content text-center text-white">
										<h4>Study Room</h4>
										<h6>학업과 관련된 모든 이야기는 이곳에서!</h6>
									</div>
								</div>
								<img class="img-fluid" src="img/study.png" alt="..."/>
							</a>
						</div>
					</div>
					
					<!-- 꿀팁 공유 게시판 -->
					<div class="col-md-6 col-lg-4 mb-5">
						<div class="portfolio-item mx-auto">
							<a href="#!" onclick="javascript:alert_btn('회원가입/로그인 후 이용 가능합니다!')">
								<div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
									<div class="portfolio-item-caption-content text-center text-white">
										<h4>꿀팁 공유</h4>
										<h6>나만 알고있는 생활 속 꿀팁! <br>세상의 모든 꿀팁은 이곳에서!</h6>
									</div>
								</div>
								<img class="img-fluid" src="img/tip.png" alt="..." />
							</a>
						</div>
					</div>
					
					<!-- 게임 게시판 -->
					<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
						<div class="portfolio-item mx-auto">
							<a href="#!" onclick="javascript:alert_btn('회원가입/로그인 후 이용 가능합니다!')">
								<div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
									<div class="portfolio-item-caption-content text-center text-white">
										<h4>게임방</h4>
										<h6>같이 게임 할 사람이 필요하다면?<br>게임 친구는 이곳에서!</h6>
									</div>
								</div>
								<img class="img-fluid" src="img/game.png" alt="..." />
							</a>
						</div>
					</div>

					<!-- 연애상담 게시판 -->
					<div class="col-md-6 col-lg-4">
						<div class="portfolio-item mx-auto">
							<a href="#!" onclick="javascript:alert_btn('회원가입/로그인 후 이용 가능합니다!')">
								<div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
									<div class="portfolio-item-caption-content text-center text-white">
										<h4>연애 상담소</h4>
										<h6>썸/연애/이별<br>이성과 관련된 고민은 이곳에서!</h6>
									</div>
								</div>
								<img class="img-fluid" src="img/love.png" alt="..." />
							</a>
						</div>
					</div>
				</div>
		</div>
	</section>

	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
				<!-- About Section Heading-->
				<h2 class="page-section-heading text-center text-uppercase text-white">About</h2>
				<!-- Icon Divider-->
				<div class="divider-custom divider-light">
					<div class="divider-custom-line"></div>
					<div class="divider-custom-icon"><i class="fas fa-star"></i></div>
					<div class="divider-custom-line"></div>
				</div>
				<!-- About Section Content-->
				<div class="row">
					<div class="col-lg-4 ms-auto">
						<p class="lead">UNIV. TOK!은 대학생을 위한 자유로운 커뮤니티 공간으로 별명 사용을 통한 익명성 보장을 통해 자유롭게 커뮤니티를 이용할 수 있습니다. 하지만, 익명이라는 그늘에 숨어서 다른 이용자에게 피해를 주면 안되겠죠? :)</p>
					</div>
					<div class="col-lg-4 me-auto">
						<p class="lead">자유, 공유, 공감 세가지 원칙으로 운영되는 UNIV. TOK!에서 많은 친구들과 함께 반복되는 일상 속 지루함을 달래보세요!<br> </p>
					</div>
				</div>
				<!-- About Section Button-->
				<!--
					<div class="text-center mt-4">
						<a class="btn btn-xl btn-outline-light" href="login.jsp">
							로그인 이동             ->
						</a>
					</div>
				-->
				
		</div>
	</section>


	<!-- 회원가입 section -->
	<section class="page-section" id="sign">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">회 원 가 입</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<!-- 회원가입 폼 -->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<form id="sign_form">
					
						<!-- 이름 입력 -->
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text" placeholder="이름을 입력하세요." required/>
							<label for="name">이름</label>
							<div id="nameError"></div>
						</div>
						
						<!-- 아이디 입력  -->
						<div class="form-floating mb-3">
							<input class="form-control" id="userid" type="text" placeholder="ID를 입력하세요." required/>
							<label for="userid">아이디</label>
							<div id="idError"></div>
						</div>
						<input class="btn btn-primary" id="checkid" type="button" value="ID 중복확인"/>

						<!-- 별명 입력 -->
						<div class="form-floating mb-3">
							<input class="form-control" id="nickname" type="text" placeholder="별명을 입력하세요." required/>
							<label for="nickname">별명</label>
							<div id="idError"></div>
						</div>
						<input class="btn btn-primary" id="checknick" type="button" value="별명 중복확인"/>
						
						<!-- 비밀번호 입력  -->
						<div class="form-floating mb-3">
							<input class="form-control" id="userPW" type="password" placeholder="사용할 비밀번호를 입력하세요." required/>
							<label for="userPW">비밀번호</label>
							<div id="passError"></div>
						</div>
						
						<!-- 학과 입력 -->
						<div class="form-floating mb-3">
							<input class="form-control" id="dept" type="text" placeholder="학과를 입력하세요." required/>
							<label for="dept">학과</label>
							<div id="deptError"></div>
						</div>
						
						<!-- Email 입력 -->
						<div class="form-floating mb-3">
							<input class="form-control" id="email" type="email" placeholder="name@example.com" required/>
							<label for="email">Email</label>
							<div id="emailError"></div>
						</div>
						
						<!-- 연락처 입력 -->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="tel" placeholder="010-0000-0000" required/>
							<label for="phone">연락처</label>
							<div id="telError"></div>
						</div>
					
						<!-- 가입 버튼-->
						<input class="btn btn-primary btn-xl" id="submitButton" type="submit" value="가입"/>

					</form>
				</div>
			</div>
		</div>
	</section>

	<script> // 폼 입력 검사
		const form_element = document.querySelectorAll("#name, #userid, #userPW, #dept, #email, #phone");

		form_element[0].onblur = function() { // 이름 입력 확인
			if(form_element[0].value === "") { 
				form_element[0].classList.add('my-form-ivalid');
				nameError.innerHTML = "이름을 입력해주세요.";
			}
		};

		form_element[0].onfocus = function() { // 이름 입력란 선택 시 경고문구 제거 및 적색 밑줄 제거
			if(this.classList.contains('my-form-ivalid')) {
				this.classList.remove('my-form-ivalid');
				nameError.innerHTML = "";
			}
		};

		form_element[1].onblur = function() { // 아이디 입력 확인
			if(form_element[1].value === "") { 
				form_element[1].classList.add('my-form-ivalid');
				idError.innerHTML = "아이디를 입력해주세요.";
			}
		};

		form_element[1].onfocus = function() { // 아이디 입력란 선택 시 경고문구 제거 및 적색 밑줄 제거
			if(this.classList.contains('my-form-ivalid')) {
				this.classList.remove('my-form-ivalid');
				idError.innerHTML = "";
			}
		};

		form_element[2].onblur = function() { // 비밀번호 입력 확인
			if(form_element[2].value === "") { 
				form_element[2].classList.add('my-form-ivalid');
				passError.innerHTML = "비밀번호를 입력해주세요.";
			}
		};

		form_element[2].onfocus = function() { // 패스워드 입력란 선택 시 경고문구 제거 및 적색 밑줄 제거
			if(this.classList.contains('my-form-ivalid')) {
				this.classList.remove('my-form-ivalid');
				passError.innerHTML = "";
			}
		};

		form_element[3].onblur = function() { // 학과 입력 확인
			if(form_element[3].value === "") { 
				form_element[3].classList.add('my-form-ivalid');
				deptError.innerHTML = "학과를 입력해주세요.";
			}
		};

		form_element[3].onfocus = function() { // 학과 입력란 선택 시 경고문구 제거 및 적색 밑줄 제거
			if(this.classList.contains('my-form-ivalid')) {
				this.classList.remove('my-form-ivalid');
				deptError.innerHTML = "";
			}
		};

		form_element[4].onblur = function() { // 이메일 입력 확인
			if(form_element[4].value === "") { 
				form_element[4].classList.add('my-form-ivalid');
				emailError.innerHTML = "이메일을 입력해주세요.";
			} else if(!form_element[4].value.includes('@')) {
				form_element[4].classList.add('my-form-ivalid');
				emailError.innerHTML = "올바른 이메일 형식이 아닙니다. name@example.com 형식으로 입력해주세요.";
			}
		};

		form_element[4].onfocus = function() { // 이메일 입력란 선택 시 경고문구 제거 및 적색 밑줄 제거
			if(this.classList.contains('my-form-ivalid')) {
				this.classList.remove('my-form-ivalid');
				emailError.innerHTML = "";
			}
		};
	
		form_element[5].onblur = function() { // 연락처 입력 확인
			if(form_element[5].value === "") { 
				form_element[5].classList.add('my-form-ivalid');
				telError.innerHTML = "연락처를 입력해주세요.";
			}
		};

		form_element[5].onfocus = function() { // 연락처 입력란 선택 시 경고문구 제거 및 적색 밑줄 제거
			if(this.classList.contains('my-form-ivalid')) {
				this.classList.remove('my-form-ivalid');
				telError.innerHTML = "";
			}
		};
	</script>

	<jsp:include page="footer.jsp" /> <!-- include footer -->
	
	<!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script src="js/sign_form.js"></script> <!-- 회원가입 폼 관련 스크립트 -->
	<script src="js/login.js"></script> <!-- 로그인 폼 관련 스크립트-->
</body>
</html>