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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<body>
	<div class="container-fluid min-vh-100 justify-content-center">
		<div class="row mt-3 mx-1 border-primary border-bottom border-2"  style="height:5rem">
			<div class="col  text-center "><h2>비밀번호변경</h2></div>
			
		</div>

		<div class="row text-dark min-vh-100">
			<div class="mt-5 col-2 border-end">
				<div class="card" style="width: 15rem;">
					<div class="card-body">
						<h5 class="card-title">**님의 myPage입니다</h5>
						<p class="card-text"></p>
						<a
							data-bs-toggle="modal" data-bs-target="#passwordcheckMyinfo"
							class="btn btn-primary">회원정보변경</a>

					</div>
				</div>
				<%@ include file="/views/common/asideNav.jsp"%>
			</div>
			<div class="mt-5 col-5 mx-auto">
				<span class="text-center text-black-10"><h4>비밀번호변경</h4></span>
				<div class="mt-4 p-5 bg-white border border-secondary rounded">
					<form action="">
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">현재
								비밀번호</label> <input type="password" class="form-control" id="">
						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">새
								비밀번호</label> <input type="password" class="form-control" id="">
						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">비밀번호
								확인</label> <input type="password" class="form-control" id="">
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