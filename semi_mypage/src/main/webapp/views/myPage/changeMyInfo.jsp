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
	<div class="container-fluid min-vh-100 justify-content-center">

		<div class="row text-dark min-vh-100">
			<div class="mt-5 col-2 border-end">
				<div class="card" style="width: 15rem;">
					<div class="card-body">
						<h5 class="card-title">**님의 myPage입니다</h5>
						<p class="card-text"></p>
						<a
							href="<%=request.getContextPath()%>/views/myPage/myPageInfo.jsp"
							class="btn btn-dark">내 정보보기</a>

					</div>
				</div>

				<!-- nav -->

				<nav class="mt-5 nav flex-column col-10">
					<button class="btn btn-light text-start"
						onclick="location.href='<%=request.getContextPath()%>/views/myPage/myPage.jsp'">
						<i class="bi bi-house-fill"></i> 마이페이지홈
					</button>

					<button class="btn btn-light text-start"
						onclick="location.href='<%=request.getContextPath()%>/views/myPage/changeMyInfo.jsp'">
						<i class="bi bi-journal-text"></i> 내 정보수정
					</button>

					<button class="btn btn-light text-start"
						onclick="location.href='<%=request.getContextPath()%>/views/myPage/myPageRevervation.jsp'">
						<i class="bi bi-calendar-check"></i> 예약내역
					</button>
					<button class="btn btn-light text-start"
						onclick="location.href='<%=request.getContextPath()%>/views/myPage/myPageReview.jsp'">
						<i class="bi bi-file-earmark-medical"></i> 후기
					</button>

				</nav>

			</div>
			<div class="mt-5 col-5 mx-auto">
				<span class="text-center text-black-100"><h4>내 정보 수정</h4></span>
				<div class="p-5 mt-4 bg-white border border-secondary rounded text-center">

					<form action="" class="form-floating">

						<div class="input-group mb-3">
							<span class="input-group-text" id="nick">닉네임</span> <input
								type="text" class="form-control" id="password1"
								placeholder="기존닉네임">
						</div>

						<div class="input-group mb-3">

							<input type="text" class="form-control" id="email"
								placeholder="기존이메일" disabled>

						</div>

						<div class="input-group mb-3">
							<span class="input-group-text">전화번호</span> <input type="text"
								class="form-control" id="phone" placeholder="기존전화번호">
						</div>
						<div class="d-grid gap-2">
							<button class="btn btn-dark" type="button">확인</button>
							<button class="btn btn-secondary" type="button">취소</button>
						</div>

					</form>
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