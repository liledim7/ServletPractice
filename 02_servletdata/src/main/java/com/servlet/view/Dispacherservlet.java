package com.servlet.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Dispacherservlet
 */
@WebServlet("/dispatcherView.do")
public class Dispacherservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dispacherservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("DispatcherViewServlet 실행");
		
//		request.getParameterMap().entrySet().forEach(e->System.out.println(e));
		String name=request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		double height=Double.parseDouble(request.getParameter("height"));
		String color=request.getParameter("color");
		String animals=request.getParameter("animals");
		String[] animals2=request.getParameterValues("animals");
		String lunch=request.getParameter("lunch");
		String info=request.getParameter("info");
		//setAttribute로 저장된 데이터 가져오기
		//HttpServletRequest.getAttribute()메소드 이용
		String data=(String)request.getAttribute("testData");//Object
		
		
		response.setContentType("text/html;charset=utf-8");
		//2. 응답데이터 보내기
		// 1)문자열데이터: 문자열 스트림으로 전송 -> getWrite();
		// 2)바이너리데이터: 파일스트림으로 전송 -> getOutputStream();
		PrintWriter out=response.getWriter();
		//3. 원하는 데이터 전송하기
//		out.write("<h3>내가 만든 첫 응답페이지</h3>");
		String html="<html>";
		html+="<head>";
		html+="<title>개인취향테스트</title>";
		html+="</head>";
		html+="<body>";
		html+="<h1>getAttribute값: "+data+"</h3>";
		html+="<h3>개일취향결과</h3>";
		html+="<h4>"+name+"님의 개인취향 확인결과";
		html+="<h4>당신의 이름은 "+name+"이고 나이는 "+age+"살 이고, ";
		html+="키는 "+height+"cm입니다</h4>";
		html+="<h4>좋아하는 색은 <span style='color"+color+"'>"+color+"</span>";
		html+="입니다.</h4>";
		html+="<ul>좋아하는 동물";
		for(String animal:animals2) {
			String src="";
			switch(animals) {
				case "dog":src="https://images.mypetlife.co.kr/content/uploads/2021/10/19151330/corgi-g1a1774f95_1280-1024x682.jpg";break;
				case "cat":src="https://img.freepik.com/free-photo/adorable-kitty-looking-like-it-want-to-hunt_23-2149167099.jpg?w=2000";break;
				
			}
			html+="<li><img src='"+src+"' width=200 height=200></li>";
		}
		html+="</ul>";
		html+="<p>오늘의 점심은 "+lunch+"입니다.</p>";
		html+="<h3>당신은 "+info+"</h3>";
		html+="</body>";
		html+="</html>";
		out.write(html);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
