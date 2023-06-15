<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>myPage</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

</head>

<body>
	<div class="container-fluid">


		<div class="row bg-light text-dark min-vh-100">
			<div class="mt-5 col-2 border-end">

				<div class="card" style="width: 15rem;">
					<div class="card-body">
						<h5 class="card-title">**님의 myPage입니다</h5>
						<p class="card-text"></p>
						<a
							href="<%=request.getContextPath()%>/views/myPage/myPageInfo.jsp"
							class="btn btn-secondary">내 정보보기</a>

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
									class="btn btn-dark">예약내역보기</a>
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

	<%@ include file="/views/common/footer.jsp"%>






	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>

</html>