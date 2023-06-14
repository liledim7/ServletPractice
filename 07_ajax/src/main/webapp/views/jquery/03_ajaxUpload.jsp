<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax파일 업로드 시키기</title>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
	<h2>ajax를 이용해서 파일 업로드하기</h2>
	<input type="file" id="upFile" multiple>
	<button id="uploadBtn">업로드파일</button>
	<script>
		$("#uploadBtn").click(e=>{
			//js가 제공하는 formData클래스를 이용함
			const form=new FormData();
			//append로 서버에 전송할 데이터를 넣을 수 있음
			const fileInput=$("#upFile");
			console.log(fileInput);
			$.each(fileInput[0].files,(i,f)=>{
				form.append("upfile"+i,f);
			});
			form.append("name","유병승");
			$.ajax({url:"<%=request.getContextPath()%>/fileUpload",
					data:form, 
					type:"post",
					processData:false,
					contentType:false,
					success:data=>{
						console.log(data);
					},error:(r,m)=>{
						alert("업로드실패했습니다" +m);
					},complete:()=>{
						$("#upFile").val('');
					}
			})
		});
	</script>
	<h2>업로드 이미지 미리보기 기능</h2>
	<img src="https://imgfreepik.com/free-icon/user_318-804790.jps" width="100" height="100" id="profile">
	<input type="file" style="display:none" id="profileInput" accept="image/*">
	
	<script>
		$("#profile").click(e=>{
			$("#profileInput").click();
		});
		$("#profileInput").change(e=>{
			const reader=new FileReader();
			reader.onload=e=>{
				//e.target.result속성에 변경된 file이 나옴
				$("#profile").attr("src",e.target.result);
			}
			reader.readerAsDataURL(e.target.files[0]);
		});
	</script>
	<style>
		#profile{
			border-radius:100px;
		}
	</style>
</body>
</html>









