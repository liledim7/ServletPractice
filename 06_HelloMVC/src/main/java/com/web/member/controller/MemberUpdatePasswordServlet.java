package com.web.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.member.model.dto.MemberDto;
import com.web.member.service.MemberService;


/**
 * Servlet implementation class MemberUpdatePasswordServlet
 */
@WebServlet("/updatePasswordEnd")
public class MemberUpdatePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdatePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String oriPw=request.getParameter("password");
		String newPw=request.getParameter("password_new");
		System.out.println(userId);
		MemberDto m=new MemberService().loginCheck(userId,oriPw);
		String msg="",loc="/member/updatePassword.do?userId="+userId;
		if(m==null) {
			msg="비밀번호가 일치하지 않습니다";
			
		}else {
			int result=new MemberService().updatePassword(userId,newPw);
			if(result>0) {
				msg="비밀번호 수정완료";
				loc="/";
				request.setAttribute("script", "opner.location.replace('"+request.getContextPath()+"/logout.do'");
				
			}else {
				msg="비밀번호 수정실패";
			}
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
