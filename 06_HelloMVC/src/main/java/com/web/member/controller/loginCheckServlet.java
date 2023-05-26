package com.web.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.member.model.dto.MemberDto;
import com.web.member.service.memberService;

/**
 * Servlet implementation class loginCheck
 */
@WebServlet("/loginCheck.do")
public class loginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    memberService service=new memberService();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String password=request.getParameter("password");
		MemberDto loginMember=service.loginCheck(userId,password);
		
		//아이디저장 로직처리
		String saveId=request.getParameter("saveId");
		System.out.println(saveId);
		
		if(saveId!=null) {
			Cookie c=new Cookie("saveId", userId);
			c.setMaxAge(60*60*24*7);
			response.addCookie(c);
		}else {
			Cookie c=new Cookie("saveId", "");
			c.setMaxAge(0);
			response.addCookie(c);
		}
		
		if(loginMember!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("loginMember", loginMember);
			response.sendRedirect(request.getContextPath());
			
		}else {
			request.setAttribute("msg", "아이디 혹은 패스워드가 일치하지 않습니다.");
			request.setAttribute("loc", "/");
			request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
