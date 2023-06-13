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
</head>
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
            <div class="mt-5 col-5">
                <div class="tb">
                    <table border="1" width="100%" class="table table-borderd table-hover">
                        <colgroup>
                            <col width="30%">
                            <col width="40%">
                            <col width="30%">
                        </colgroup>
                        <tbody>
                            <tr>
                                <td>성명</td>
                                <td>***</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>닉네임</td>
                                <td>곰돌이</td>
                                <td><button type="button" class="btn btn-outline-dark btn-sm"
                                        onclick="location.href='<%=request.getContextPath()%>/views/myPage/changeMyInfo.jsp'">수정</button></td>
                            </tr>
                            <tr>
                                <td>이메일</td>
                                <td>asdf@gmail.com</td>
                                <td><button type="button" class="btn btn-outline-dark btn-sm"
                                        onclick="location.href='<%=request.getContextPath()%>/views/myPage/changeMyInfo.jsp'">수정</button></td>
                            </tr>
                            <tr>
                                <td>비밀번호 변경</td>
                                <td></td>
                                <td>
                                    <button type="button" class="btn btn-outline-dark btn-sm" data-bs-toggle="modal"
                                        data-bs-target="#staticBackdrop">변경</button>
                                </td>
                                <!-- Modal -->
                                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
                                    data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
                                    aria-hidden="true">
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
                                                <button type="button" class="btn btn-dark" onclick="location.href='<%=request.getContextPath()%>/views/myPage/changePassword.jsp'">확인</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </tr>
                            <tr>
                                <td>전화번호</td>
                                <td>010-1234-5678</td>
                                <td><button type="button" class="btn btn-outline-dark btn-sm"
                                        onclick="location.href='<%=request.getContextPath()%>/views/myPage/changeMyInfo.jsp'">수정</button></td>
                            </tr>
                            <tr>
                                <td>회원탈퇴</td>
                                <td></td>
                                <td><button type="button" class="btn btn-outline-danger btn-sm"
                                        onclick="location.href='<%=request.getContextPath()%>/views/myPage/memberOut.jsp'">탈퇴</button></td>

                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>

    </div>






    <link rel="stylesheet" href="style.css">

<%@ include file="/views/common/footer.jsp"%>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>

</html>