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
	<jsp:include page="nav_loged_in.jsp" /> <!-- include header -->
	
	<!-- 메인페이지 구성 -->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="img/hi2.svg"
				alt="..." />
			<!-- Masthead Heading-->
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
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">
				Univ. Tok!에서 나누는 대학 생활 속 모든 이야기
			</p>
		</div>
	</header>

	<!-- 각종 게시판  -->
	<section class="page-section portfolio" id="board">
		<div class="container">
				<!-- 게시판 메인 타이틀 -->
				<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">
					Tok! Room
				</h2>
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
							<a href="free_board.jsp">
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
							<a href="study_board.jsp">
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
							<a href="tip_board.jsp">
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
							<a href="game_board.jsp">
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
							<a href="love_board.jsp">
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

	<jsp:include page="footer.jsp" /> <!-- include footer -->
	
	<!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

	<script src="js/session.js"></script>
</body>
</html>