<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>myPage</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>

<body>
  <div class="container-fluid min-vh-100">
 
    <div class="row bg-light text-dark min-vh-100">
      <div class="mt-5 col-3">
        <div class="card" style="width: 15rem;">
          <div class="card-body">
            <h5 class="card-title">**님의 myPage입니다</h5>
            <p class="card-text"></p>
            <a href="<%=request.getContextPath()%>/views/myPage/myPageInfo.jsp" class="btn btn-secondary">내 정보보기</a>

          </div>
        </div>
        <!-- nav -->
        <nav class="mt-5 nav flex-column">
          <a href="<%=request.getContextPath()%>/views/myPage/myPage.jsp" class="nav-link active link-dark" aria-current="page">
            <i class="bi bi-house-fill"></i>
            마이페이지홈
          </a>
          <a class="nav-link link-dark" href="<%=request.getContextPath()%>/views/myPage/changeMyInfo.jsp" aria-current="page">
            <i class="bi bi-journal-text"></i>
            내 정보수정</a>
          <a class="nav-link link-dark" href="<%=request.getContextPath()%>/views/myPage/myPageRevervation.jsp">
            <i class="bi bi-calendar-check"></i>
            예약내역</a>
          <a class="nav-link link-dark" href="<%=request.getContextPath()%>/views/myPage/myPageReview.jsp">
            <i class="bi bi-file-earmark-medical"></i>
            후기</a>

        </nav>
      </div>
      <div class="mt-5 col-6">
        <div class="tb">
          <table border="1" cellspacing="0" cellpadding="0" width="100%" class="table table-borderd text-center">
            <colgroup>
              <col width="15%">
              <col width="30%">
              <col width="15%">
              <col width="20%">
              <col width="20%">
            </colgroup>
            <thead>
              <tr>
                <th>예약번호</th>
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
                <td>room1</td>
                <td>결제완료</td>
                <td>2023-05-13</td>
                <td><button type="button" class="btn btn-outline-danger btn-sm">결제취소</button></td>
              </tr>
              <tr>
                <td>2</td>
                <td>room2</td>
                <td>결제대기</td>
                <td>2023-05-13</td>
                <td><button type="button" class="btn btn-outline-success btn-sm">결제하기</button></td>
              </tr>
              <tr>
                <td>3</td>
                <td>room2</td>
                <td>결제완료</td>
                <td>2023-05-13</td>
                <td><button type="button" class="btn btn-outline-danger btn-sm">결제취소</button></td>
              </tr>
              <tr>
                <td>4</td>
                <td>room2</td>
                <td>결제대기</td>
                <td>2023-05-13</td>
                <td><button type="button" class="btn btn-outline-success btn-sm">결제하기</button></td>
              </tr>
              <tr>
                <td>5</td>
                <td>room2</td>
                <td>결제대기</td>
                <td>2023-05-13</td>
                <td><button type="button" class="btn btn-outline-success btn-sm">결제하기</button></td>
              </tr>
            </tbody>
          </table>
        </div>
        <nav aria-label="revervation paging">
          <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
          </ul>
        </nav>
      </div>

    </div>

  </div>






  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">

<%@ include file="/views/common/footer.jsp"%>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous"></script>
</body>

</html>