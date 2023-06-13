<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>myPage</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"></head>
    <script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<body>
    <div class="container-fluid min-vh-100 justify-content-center">
    
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
          <a class="nav-link link-dark" href="#" aria-current="page">
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
            <div class="mt-5 col-5" >
                <div class="p-5 bg-white border border-secondary rounded">
                    <form action="" class="form-floating">
                      
                        <div class="input-group mb-3">
                          <span class="input-group-text" id="">닉네임</span>
                            <input type="password" class="form-control" id="password1" placeholder="기존닉네임">
                        </div>
                        
                        <div class="input-group mb-3">
                            
                            <input type="text" class="form-control" id="email">
                            <span class="input-group-text" id="">@example.com</span>
                        </div>
                        
                        <div class="input-group mb-3">
                          <span class="input-group-text" id="">전화번호</span>
                            <input type="text" class="form-control" id="phone">
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






    <link rel="stylesheet" href="style.css">

    <%@ include file="/views/common/footer.jsp"%>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>