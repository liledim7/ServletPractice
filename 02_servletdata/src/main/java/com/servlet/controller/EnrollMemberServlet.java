package com.servlet.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="enrollData",urlPatterns = {"/enrolltest.do"})
public class EnrollMemberServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8943647513626935483L;
	
	public EnrollMemberServlet() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//인코딩처리
		//HttpServletRequest.setCharacterEncoding()
		req.setCharacterEncoding("UTF-8");
		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
		String name=req.getParameter("name");
		String nickName=req.getParameter("nickName");
		String email=req.getParameter("email");
		String[] hobby=req.getParameterValues("hobby");
		
		String marry=req.getParameter("married");
		String info=req.getParameter("info");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(nickName);
		System.out.println(email);
		Arrays.asList(hobby).stream().forEach(e->System.out.println(e));
		System.out.println(marry!=null?"yes":"no");
		System.out.println(info);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
	

}
