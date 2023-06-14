package com.ajax.controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.web.admin.service.AdminService;
import com.web.member.model.dto.MemberDto;

/**
 * Servlet implementation class GsonTestServlet
 */
@WebServlet("/gsontest.do")
public class GsonTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GsonTestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration<String> names=request.getParameterNames();
		while(names.hasMoreElements()) {
			System.out.println(names.nextElement());
		}
		
		List<MemberDto> list=new AdminService().selectMemberByKeyword("userId", "a", 1, 30);
		MemberDto m=list.get(0);
		//Gson라이브러리를 이용해서 json파싱하기
		//Gson클래스를 생성한다
		Gson gson=new Gson();
		//파싱해주는 메소드를 제공 -> toJson(json으로 변경할 객체[,outputSstream]);
		response.setContentType("application/json;charset=utf-8");
		gson.toJson(list,response.getWriter());
		
		String data=request.getParameter("data");
		MemberDto requestData=gson.fromJson(data, MemberDto.class);
		System.out.println(requestData);
		//gson.fromJson(); vo객체로 만들어줌 -> Json형태로 전송된 데이터
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
