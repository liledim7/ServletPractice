package com.web.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.admin.service.AdminService;
import com.web.member.model.dto.MemberDto;

/**
 * Servlet implementation class MemberListServlet
 */
@WebServlet( name="memberAdmin", urlPatterns =  "/admin/memberList.do")
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//페이징 처리하기
		
		int cPage;
		try {
			cPage=Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage=1;
		}
		int numPerpage=10;//한페이지에 가져올 데이터수
		
		List<MemberDto>members = new AdminService().memberList(cPage,numPerpage);
		request.setAttribute("members", members);
		//DB에 저장된 전체 데이터 수를 가져오기
		int totalData=new AdminService().selectMemberCount();
		//전체페이지수를 계산하기
		int totalPage=(int)Math.ceil((double)totalData/numPerpage);
		int pageBarSize=5;//페이지 바의 사이즈
		//페이지바 시작번호 계산
		int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;//시작번호
		int pageEnd=pageNo+pageBarSize-1;//끝번호
		//페이지바를 구성하는 html저장하기
		String pageBar="";
		//이전표시
		if(pageNo==1) {
			pageBar+="<span>[이전]</span>";
		}else {
			pageBar+="<a href='"+request.getRequestURI()+"?cPage="+(pageNo-1)+"'>[이전]</a>";
		}
		
		//선택할 페이지 번호 출력하기
		while(!(pageNo>pageEnd||pageNo>totalPage)) {
			if(pageNo==cPage) {
				pageBar+="<span>"+pageNo+"</span>";
			}else {
				pageBar+="<a href='"+request.getRequestURI()+"?cPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		//다음출력
		if(pageNo>totalPage) {
			pageBar+="<span>[다음]</span>";
		}else {
			pageBar+="<a href='"+request.getRequestURI()+"?cPage="+pageNo+"'>[다음]</a>";
		}request.setAttribute("pageBar", pageBar);
		
		request.getRequestDispatcher("/views/admin/adminMember.jsp").forward(request, response);
	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
