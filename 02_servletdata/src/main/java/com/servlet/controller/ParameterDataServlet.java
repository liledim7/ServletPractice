package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//어노테이션 방식으로 servlet을 등록할 수 있음
//클래스 선언부에 @WebServlet어노테이션을 선언함
//@WebServlet어노테이션의 속성설정으로 urlpattern, name을 설정할 수 있다
@WebServlet(name = "paramdata",urlPatterns= {"/testperson.do"})
public class ParameterDataServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -59252889944216907L;

	public ParameterDataServlet() {
	// TODO Auto-generated constructor stub
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String name=req.getParameter("name");
		int age=Integer.parseInt(req.getParameter("age"));
		double height=Double.parseDouble(req.getParameter("height"));
		String color=req.getParameter("color");
		String animals=req.getParameter("animals");
		//클라이언트가 동일한 key로 다수의 값을 보낸데이터는 HttpServletRequest.getParameterValues()메소드를 이용한다
		//getParameterValues는 다수의 값을 String배열로 반환한다
		String[] animals2=req.getParameterValues("animals");
		String lunch=req.getParameter("lunch");
		String info=req.getParameter("info");
		
		System.out.println("이름: "+name);
		System.out.println("나이: "+age);
		System.out.println("키: "+height);
		System.out.println("컬러: "+color);
		System.out.println("동물: "+animals);
		System.out.println("동물들");
		Arrays.asList(animals2).stream().forEach(System.out::print);
		System.out.println();
		System.out.println("점심: "+lunch);
		System.out.println("소개: "+info);
		
		//클라이언트가 보낸 데이터의 key를 모를때
		Enumeration<String> paramName=req.getParameterNames();
		while(paramName.hasMoreElements()) {
			String key=paramName.nextElement();
			System.out.println(key);
			String[] value=req.getParameterValues(key);
			System.out.println(Arrays.toString(value));
		}
		//클라이언트가 보낸 데이터 Map방식으로 가져오기
		Map<String, String[]> param=req.getParameterMap();
		for(String key: param.keySet()) {
			System.out.println(key+" "+Arrays.toString(param.get(key)));
		}
		//클라이언트의 응답데이터 작성하기
		//HttpServletResponse객체가 제공하는 메소드를 이용
		//1. 응답데이터를 작성하기 위해 contentType을 설정
		//MIMETYPE설정
		//setContentType("MIMETYPE설정")
		resp.setContentType("text/html;charset=utf-8");
		//2. 응답데이터 보내기
		// 1)문자열데이터: 문자열 스트림으로 전송 -> getWrite();
		// 2)바이너리데이터: 파일스트림으로 전송 -> getOutputStream();
		PrintWriter out=resp.getWriter();
		//3. 원하는 데이터 전송하기
//		out.write("<h3>내가 만든 첫 응답페이지</h3>");
		String html="<html>";
		html+="<head>";
		html+="<title>개인취향테스트</title>";
		html+="</head>";
		html+="<body>";
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

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

	
	
}
