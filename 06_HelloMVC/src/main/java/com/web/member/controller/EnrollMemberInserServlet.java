package com.web.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.web.common.AESEncryptor;
import com.web.member.model.dto.MemberDto;
import com.web.member.service.MemberService;

/**
 * Servlet implementation class EnrollMemberInserServlet
 */
@WebServlet("/member/enrollMemberEnd.do")
public class EnrollMemberInserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnrollMemberInserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDto m=new MemberDto();
		
		String id=request.getParameter("userId");
		String pw=request.getParameter("password");
		String name=request.getParameter("userName");
		int age=Integer.parseInt(request.getParameter("age"));
		String email=request.getParameter("email");
//		try {
//			email=AESEncryptor.encryptData(email);
//		}catch(Exception e) {
//			System.out.println("email암호화 실패");
//		}
//		String phone=request.getParameter("phone");
//		try {
//			phone=AESEncryptor.encryptData(phone);
//		}catch(Exception e) {
//			System.out.println("phone암호화 실패");
//		}
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		char gender=request.getParameter("gender").charAt(0);
		String hobby[]=request.getParameterValues("hobby");
		
		m.setUserId(id);
		m.setPassWord(pw);
		m.setUserName(name);
		m.setAge(age);
		m.setEmail(email);
		m.setPhone(phone);
		m.setAddress(address);
		m.setGender(gender);
		m.setHobby(hobby);
		MemberService service=new MemberService();
		int result=service.enrollMember(m);
		String msg="",loc="";
		if(result>0) {
			msg="회원가입을 축하드립니다";
			loc="/";
		}else {
			msg="회원가입에 실패하였습니다. 다시 시도해주세요";
			loc="/member/enrollMember.do";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
