<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>유니브 톡! - Study Room</title>
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

<body>
   <jsp:include page="nav_board.jsp" />

   <header class="masthead bg-primary">
		<div class="container d-flex align-items-center flex-column">
			<img class="masthead-avatar mb-5" src="img/study.svg"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0 text-white">Study Room</h1>
			<br>
			<h3 class="mastheadsub-heading text-uppercase mb-0 text-white">Univ. Tok!</h3>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="my_custum_line" style="margin-right: 16px;"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="my_custum_line" style="margin-left: 16px;"></div>
			</div>
			<jsp:include page="board/study_func.jsp" />
		</div>
	</header>

   <jsp:include page="footer.jsp" /> <!-- include footer -->

	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="js/login.js"></script>
	<script src="js/session.js"></script>
</body>