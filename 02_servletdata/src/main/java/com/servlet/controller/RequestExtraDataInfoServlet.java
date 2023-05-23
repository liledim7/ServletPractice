package com.servlet.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestExtraDataInfoServlet
 */
@WebServlet("/extraInfo.do")
public class RequestExtraDataInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestExtraDataInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. ContextRoot가져오기
		String contextPath=request.getContextPath();
		System.out.println(contextPath);
		//2. Httprequest의 header정보 가져오기
		String userAgent=request.getHeader("User-Agent");
		System.out.println(userAgent);
		String prevPage=request.getHeader("Referer");
		System.out.println(prevPage);
		//3. 요청한 주소에 대한 정보를 가져오기
		String uri=request.getRequestURI();
		System.out.println(uri);
		StringBuffer url=request.getRequestURL();
		System.out.println(url);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
