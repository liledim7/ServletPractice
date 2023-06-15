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
</head>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<body>
	<div class="container-fluid min-vh-100 justify-content-center">
		

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
			<div class="mt-5 col-5 mx-auto">
				<span class="text-center text-black-50"><h5>비밀번호변경</h5></span>
				<div class="p-5 bg-white border border-secondary rounded">
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