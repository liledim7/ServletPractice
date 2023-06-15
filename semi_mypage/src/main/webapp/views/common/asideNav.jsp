<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- nav -->

<nav class="mt-5 nav flex-column col-10">
	<a href="<%=request.getContextPath() %>/views/myPage/myPage.jsp" class="nav-link link-dark" aria-current="true"> <i
		class="bi bi-house-fill"></i> 마이페이지홈
	</a> 
	
	<a class="nav-link link-dark"
		href="<%=request.getContextPath()%>/views/myPage/changeMyInfo.jsp"
		data-bs-toggle="modal" data-bs-target="#passwordcheckMyinfo"> <i
		class="bi bi-journal-text"></i> 내 정보수정
	</a>

	<!-- Modal -->
	<div class="modal fade" id="passwordcheckMyinfo"
		data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">비밀번호 확인</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<input type="text" class="form-control" placeholder="password">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-dark"
						onclick="location.href='<%=request.getContextPath()%>/views/myPage/changeMyInfo.jsp'">확인</button>
				</div>
			</div>
		</div>
	</div>

	<a class="nav-link link-dark"
		href="<%=request.getContextPath()%>/views/myPage/myPageRevervation.jsp">
		<i class="bi bi-calendar-check"></i> 예약내역
	</a> <a class="nav-link link-dark"
		href="<%=request.getContextPath()%>/views/myPage/myPageReview.jsp">
		<i class="bi bi-file-earmark-medical"></i> 후기
	</a>

</nav>