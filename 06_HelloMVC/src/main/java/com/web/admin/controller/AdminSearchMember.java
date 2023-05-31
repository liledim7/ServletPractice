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
 * Servlet implementation class AdminSearchMember
 */
@WebServlet("/admin/searchMember")
public class AdminSearchMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSearchMember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("searchType");
		String keyword=request.getParameter("searchKeyword");
		System.out.println(type);
		System.out.println(keyword);
		if(type.equals("userId")) {
			List<MemberDto> members=new AdminService().searchById(keyword);
			request.setAttribute("search", members);
			request.getRequestDispatcher("/views/admin/adminMember.jsp").forward(request, response);
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
