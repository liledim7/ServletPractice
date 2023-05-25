<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="views/error/500error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 첫 jsp페이지</title>
</head>
<body>
	<h2>나의 첫 jsp 페이지</h2>
	<h3>jsp가 제공하는 태그에 대해 알아보자</h3>
	<ul>
		<li>
			지시자 : <%-- <%@ 태그명 속성설정(속성명="속성값") %> --%><br>
			page:페이지에 대한 설정을 하는 태그, 응답contentype,impoprt정보, 언어정보 등을 설정<br>
			include: 페이지(jsp)내에 다른 페이지(jsp)를 불러올떄 사용하는 태그<br>
			taglib: jsp에 적용할 외부라이브러리 등록(JSTL, springform)<br>
		</li>
		<li>
			선언문: <%-- <%! 자바코드 %> --%> <br>
			자바클래스 구현부에 작성하는 코드 클래스 중괄호부분에 들어갈 코드를 작성할때 사용<br>
			메소드 선언, 멤버변수선언 이용할때 사용 거의 사용안함<br>
			*조건문, 반복문 등은 사용이 불가능함<br>
			
		</li>
		<li>
			스크립트릿: <%-- <% 자바코드 %> --%>
			자바의 메소드내부에 들어갈 코드 작성할때 사용<br>
			많이사용한다<br>
			지역변수, 반복문, 조건문사용<br>
		</li>
		<li>
			표현식: <%-- <%= 출력할문구||변수명||메소드호출 %> --%> <br>
			html 화면에 변수, 메소드 실행결과를 출력할때 사용 <br>
		</li>
	</ul>
	<h3>선언문 활용하기</h3>
	<%!
		//멤버변수, 멤버메소드 선언할때
		String testData;
		public int age=19;
		public String getMsg(){
			return "안녕하세요";
		};
		//조건문, 반복문은 사용할 수 없다
		
	%>
	<h3>선언문에서 작성한 내용 이용하기</h3>
	<ol>
		<li>testData: <%=testData %> </li>
		<li>age: <%=age %></li>
		<li>getMsg():<%=getMsg() %></li>
	</ol>
	<h3>스크립트릿이용하기</h3>
	<%
		//자바코드를 작성하는 부분
		//_jspservice()내부에 작성됨
		String msg="이제 곧 점심시간";
		//public double height=108.5
		int rndNum=(int)(Math.random()*10+1);
		if(rndNum>3){
			out.print("3보다 크다");
		}
		for(int i=0;i<10;i++){
			out.print("출력"+i+"<br>");
		}
	%>
	<h3><%=msg %></h3>
	<h3>랜덤수: <%=rndNum %></h3>
	<%
		String[] names={"유병승","최주영","이은지","김현영","허성현","김잔은"};
		
	%>
	<ul>
		<%for(String name:names){%>
			<li><%=name %></li>
			<%} %>
	</ul>
		<ul>
		<%if(msg.contains("점심")){%>
			<h1>점심</h1>
		<% }%>
		</ul>
		<%
			String[] hobby={"코딩","독서","게임","등산","취침"};
			
		%>
		
	<div>
		<%for(String hb:hobby){ %>
			<input type="checkbox" value="<%=hb%>"><%=hb %>
		<%}%>
	</div>
		
	<h3>jsp내장객체에 대해 알아보자</h3>
	<p>
		서블릿에서 데이터를 저장하거나 정보를 가져왔던 객체를 지역변수로 가지고 있음<br>
		HttpServletRequest : request<br>
		HttpServletResponse :response<br>
		HttpSession: session<br>
		ServletContext: application<br>
		Cookie : request.getCookies()<br>
		Header: request.getHeader()<br>
		PrintWriter: out<br>
	</p>
	<h3>request: <%=request %></h3>
	<h3>response: <%=response %></h3>
	<h3>session: <%=session %></h3>
	<h3>sevletContext: <%=application %></h3>
	<h3>jspOut: <%=out %></h3>
	
	<h3>contextRoot는 <%=request.getContextPath() %></h3>
	<h3>요청주소 :<%=request.getRequestURI() %></h3>
	
	<h3>내장객체에 저장된 데이터 활용하기</h3>
	<a href="<%=request.getContextPath()%>/views/datasave.jsp">데이터저장</a>
	
	<h3>지시자태그 이용하기</h3>
	<h4>include태그 이용하기</h4>
	<p>
		include태그는 다른 jsp내용을 합쳐서 출력하는것<br>
		공통페이지를 반영할때 사용(header, footer, aside)<br>
	</p>
	
	<h3>
		<a href="<%=request.getContextPath() %>/views/main.jsp">메인화면</a>
	</h3>
	<h4>page태그 속성 알아보기</h4>
	<p>
	 	import: 외부패키지에 있는 클래스를 이용할때 import해줘야한다. ""안에 작성, 여러클래스를 이용할때 import해줘야한다. ""안에 작성, 여러클래스를 호출할때 ,로 구분한다<br>
	 	errorPage: 페이지에서 에러가 발생했을때(500) 연결될 페이지 지정할때 사용<br>
	 	isErrorPage: 에러를 출력하는 페이지에 설정, 설정하면 exception객체를 이용할 수 있다<br>
	 	session: 세션객체를 자동생성할지 생성하지 않을지 결정<br>
	</p>
	<h3>에러페이지 설정하기</h3>
	<h3>
		<a href="<%=request.getContextPath() %>/views/errortest.jsp">에러발생페이지이동</a>
	</h3>
	
	<h3>
		<a href="<%=request.getContextPath()%>/errorServlet.do">서블릿에러</a>
	</h3>
	
	<h3>
		<a href="<%=request.getContextPath() %>/memberAll.do">회원정보조회</a>
	</h3>
</body>
</html>







