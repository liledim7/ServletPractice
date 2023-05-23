package com.board.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertBoardViewServlet
 */
@WebServlet("/insertBoardView.do")
public class InsertBoardViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBoardViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int boardNo =(int)request.getAttribute("boardNo");
		String title=(String)request.getAttribute("title");
		String writer=(String)request.getAttribute("writer");
		String content=(String)request.getAttribute("content");
		
//		int boardNo=(int)Math.random()+1;
//		String title=request.getParameter("title");
//		String writer=request.getParameter("writer");
//		String content=request.getParameter("content");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String html="<html>";
		html+="<head>";
		html+="<title>게시글</title>";
		html+="</head>";
		html+="<body>";
		html+="<h4> No: "+boardNo+"</h4>";
		html+="<h4> title: "+title+"</h4>";
		html+="<h4> writer: "+writer+"</h4>";
		html+="<p> content: "+content+"</p>";
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
