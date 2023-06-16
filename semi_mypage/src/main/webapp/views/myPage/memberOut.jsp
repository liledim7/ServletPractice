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
				<%@ include file="/views/common/asideNav.jsp"%>
			</div>
			<div class="mt-5 col-7 mx-auto">
				<div class="p-3 border border-secondary rounded">
					<div>
						<h5>
							<i class="bi bi-exclamation-circle"></i> 탈퇴 안내
						</h5>
						<p>회원탈퇴를 신청하기 전에 안내 사항을 확인해주세요.</p>
					</div>
					<div class="mt-5">
						<h5>
							<i class="bi bi-file-check-fill"></i> 사용하고 계신 아이디는 탈퇴할 경우 재사용 및
							복구가 불가능 합니다.
						</h5>
						<p>탈퇴한 아이디는 복구가 불가능하오니 신중하게 선택하시기 바랍니다.</p>
					</div>
					<div class="mt-5">
						<h5>
							<i class="bi bi-file-check-fill"></i> 탈퇴 후에도 게시판에 등록한 게시물은 그대로 남아
							있습니다.
						</h5>
					</div>
					<div>
						<div class="border text-center mt-5 my-3">
							회원탈퇴하려는 계정 : asdf@btc.com
						</div>
						
						
						<form action="">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckDefault"> <label class="form-check-label"
								for="flexCheckDefault"> 안내 사항을 모두 확인하였으며, 이에 동의합니다. </label>
								
						
							<div id="outCheck">
								<button type="button" class="btn btn-dark">확인</button>
							</div>

						</form>
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