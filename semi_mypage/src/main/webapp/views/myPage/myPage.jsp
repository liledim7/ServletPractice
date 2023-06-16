<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>
<head>
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
	<meta name="format-detection" content="telephone=yes">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<title>마이페이지</title>
	<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<!-- <link rel="stylesheet" href="./css/bootstrap.min.css" /> -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/custom.css" />
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/common.css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap.bundle.min.js"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>


<body>
	<div class="container-fluid">

		<div class="row">
			<div class="col text-center mx-auto"><h2>마이페이지</h2></div>
			
		</div>
		<div class="row min-vh-100">
			<div class="mt-5 col-2 border-end">

				<div class="card" style="width: 15rem;">
					<div class="card-body">
						<h5 class="card-title">**님의 myPage입니다</h5>
						<p class="card-text"></p>
						<a
							href="<%=request.getContextPath()%>/views/myPage/myPageInfo.jsp"
							class="btn btn-primary">내 정보보기</a>

					</div>

				</div>
				<%@ include file="/views/common/asideNav.jsp"%>

			</div>
			<div class="mt-5 col">
				
				<div class="mx-auto mt-5 card shadow"
					style="width: 60rem; height: 15rem;">
					<div class="row">
						<div class="col-md-4">
							<img src="./images/room.png" class="rounded-start m-4"
								style="width: 15rem; height: 12rem">
						</div>

						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">Room1</h5>
								<p class="card-text">
									예약자:*** <br>옵션: 바베큐, 조식
								</p>
								<a
									href="<%=request.getContextPath()%>/views/myPage/myPageRevervation.jsp"
									class="btn btn-primary">예약내역보기</a>
							</div>

						</div>
						
<!-- 예약내역이 없을때
				<div class="mx-auto mt-5 card shadow"
					style="width: 60rem; height: 15rem;">
					<div class="">
							<div class="card-body">
								<div class="text-center">
								<i class="bi bi-info-circle-fill fs-2 align-middle"></i>
								</div>
								<h5 class="card-title text-center mt-5">예약내역이 없습니다</h5>
								<div class="text-center mt-5">
								<a
									href=""
									class="btn btn-dark">예약하기</a>
								</div>
						</div>



					</div>
				</div> -->
				
				<div class="mx-auto mt-5 card shadow"
					style="width: 60rem; height: 15rem;">
					<div class="row">
						<div class="col-md-4">
							<img src="./images/5.jpeg" class="rounded-start m-4"
								style="width: 15rem; height: 12rem">
						</div>

						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">Room1</h5>
								<p class="card-text">
									제목: <br>내용:
								</p>
								<a
									href="<%=request.getContextPath()%>/views/myPage/myPageReview.jsp"
									class="btn btn-dark">리뷰내역보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	</div>
</div>
	<%@ include file="/views/common/footer.jsp"%>






	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>

</html>