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
						<a href="<%=request.getContextPath()%>/views/myPage/myPageInfo.jsp" class="btn btn-dark">내 정보보기</a>
					</div>
				</div>

				<%@ include file="/views/common/asideNav.jsp"%>

			</div>
			<div class="mt-5 col-7 mx-auto">
				<span class="text-center text-black-100"><h4>리뷰</h4></span>
				<div class="tb">
					<table class="table table-hover text-center">
						<colgroup>
							<col width="10%">
							<col width="25%">
							<col width="15%">
							<col width="10%">
							<col width="10%">
							<col width="15%">
							<col width="15%">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>이미지</th>
								<th>제목</th>
								<th>작성자</th>
								<th>조회수</th>
								<th>작성일</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td><img alt=""
									src="<%=request.getContextPath()%>/images/22.jpg"
									class="img-fluid"></td>
								<td>후기1</td>
								<td>user1</td>
								<td>25</td>
								<td>2023-01-12</td>
								<td><button type="button"
										class="btn btn-outline-dark btn-sm">리뷰수정</button></td>
							</tr>

							<tr>
								<td>2</td>
								<td><img alt=""
									src="<%=request.getContextPath()%>/images/44.jpg"
									class="img-fluid"></td>
								<td>후기1</td>
								<td>user1</td>
								<td>25</td>
								<td>2023-01-12</td>
								<td><button type="button"
										class="btn btn-outline-dark btn-sm">리뷰수정</button></td>
							</tr>

							<tr>
								<td>3</td>
								<td><img alt=""
									src="<%=request.getContextPath()%>/images/33.jpg"
									class="img-fluid"></td>
								<td>후기1</td>
								<td>user1</td>
								<td>25</td>
								<td>2023-01-12</td>
								<td><button type="button"
										class="btn btn-outline-dark btn-sm">리뷰수정</button></td>
							</tr>

							<tr>
								<td>4</td>
								<td><img alt=""
									src="<%=request.getContextPath()%>/images/5.jpeg"
									class="img-fluid"></td>
								<td>후기1</td>
								<td>user1</td>
								<td>25</td>
								<td>2023-01-12</td>
								<td><button type="button"
										class="btn btn-outline-dark btn-sm">리뷰수정</button></td>
							</tr>


							<!-- 리뷰가 없을 때  -->
							<!-- <tr>
                              <td colspan="6" >
                                작성한 리뷰가 없습니다
                              </td>
                            </tr>
                            <tr>
                              <td colspan="6">
                                <button type="button" class="btn btn-outline-dark">리뷰작성</button>
                              </td>
                            </tr> -->
						
						</tbody>
					</table>
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