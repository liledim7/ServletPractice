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
	<div class="container-fluid min-vh-100">

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

			<div class="mt-5 col-7 mx-auto">
				<span class="text-center text-black-50"><h5>예약정보</h5></span>
				<div class="tb">
					<table border="1" cellspacing="0" cellpadding="0" width="100%"
						class="table table-borderd text-center align-middle">
						<colgroup>
							<col width="10%">
							<col width="30%">
							<col width="15%">
							<col width="15%">
							<col width="15%">
							<col width="15%">
						</colgroup>
						<thead>
							<tr>
								<th>예약번호</th>
								<th>이미지</th>
								<th>예약객실</th>
								<th>예약상태</th>
								<th>예약날짜</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<!-- 
                            결제내역이 없을떄
                            <tr>
                              <td colspan="5" class="text-center">예약내역이 없습니다</td>
                            </tr>
                           -->
							<tr>
								<td>1</td>
								<td><img alt=""
									src="<%=request.getContextPath()%>/images/22.jpg"
									class="img-fluid"></td>
								<td>room1</td>
								<td>결제완료</td>
								<td>2023-05-13</td>
								<td><button type="button"
										class="btn btn-outline-danger btn-sm">결제취소</button></td>
							</tr>
							<tr>
								<td>2</td>
								<td><img alt=""
									src="<%=request.getContextPath()%>/images/33.jpg"
									class="img-fluid"></td>
								<td>room2</td>
								<td>결제대기</td>
								<td>2023-05-13</td>
								<td><button type="button"
										class="btn btn-outline-success btn-sm">결제하기</button></td>
							</tr>
							<tr>
								<td>3</td>
								<td><img alt=""
									src="<%=request.getContextPath()%>/images/44.jpg"
									class="img-fluid"></td>
								<td>room2</td>
								<td>결제완료</td>
								<td>2023-05-13</td>
								<td><button type="button"
										class="btn btn-outline-danger btn-sm">결제취소</button></td>
							</tr>
							<tr>
								<td>4</td>
								<td><img alt="" src="<%=request.getContextPath()%>/images/2.jpeg" class="img-fluid"></td>
								<td>room2</td>
								<td>결제대기</td>
								<td>2023-05-13</td>
								<td><button type="button"
										class="btn btn-outline-success btn-sm">결제하기</button></td>
							</tr>

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