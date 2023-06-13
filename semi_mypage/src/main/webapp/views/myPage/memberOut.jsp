<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>myPage</title>
    <script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
    <div class="container-fluid">
      
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
                <div class="p-3 border border-secondary rounded">
                <div>
                    <h4><i class="bi bi-exclamation-circle"></i> 탈퇴 안내</h4>
                    <p>회원탈퇴를 신청하기 전에 안내 사항을 확인해주세요.</p>
                </div>
               <div class="out">
                    <h4><i class="bi bi-file-check-fill"></i> 사용하고 계신 아이디는 탈퇴할 경우 재사용 및 복구가 불가능 합니다.</h4>
                    <p>탈퇴한 아이디는 복구가 불가능하오니 신중하게 선택하시기 바랍니다.</p>
                </div>
                <div class="out">
                    <h4> <i class="bi bi-file-check-fill"></i> 탈퇴 후에도 게시판에 등록한 게시물은 그대로 남아 있습니다.</h4>
                </div>
                <div class="out">
                    <form action="">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                            안내 사항을 모두 확인하였으며, 이에 동의합니다.
                          </label>
                          <div id="outCheck">
                            <button type="button" class="btn btn-secondary">확인</button>
                          </div>
                          
                    </form>
                </div>
                </div>
            </div>

        </div>
        
    </div>






    <link rel="stylesheet" href="style.css">

<%@ include file="/views/common/footer.jsp"%>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>