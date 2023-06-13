<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>


			<section id="content">
				<h2 align="center" style="margin-top:200px">안녕하세요, MVC입니다</h2>
				<button id="memberAll">전체회원조회</button>
				<input type="text" id="id"><button>아이디조회</button>
				<div id="memberList"></div>
			</section>
			
	<script>
	$("#memberAll").click(e=>{
		$.get("<%=request.getContextPath()%>/memberList.do",
			
			data=>{
				
				for(let i in data){
					console.log(data[i]);
					
					let table="<tr>";
					table+="<td>"+data[i].userId+"</td>";
					table+="<td>"+data[i].userName+"</td>";
					table+="<td>"+data[i].age+"</td>";
					table+="<td>"+data[i].email+"</td>";
					table+="</tr>";
					$("#memberList").append(table);
				}
				
			}		
		)
	})
	</script>
			
			
<%@ include file="/views/common/footer.jsp"%>
