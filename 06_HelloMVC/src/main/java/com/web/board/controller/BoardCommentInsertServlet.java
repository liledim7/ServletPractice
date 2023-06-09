package com.web.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.board.model.dto.BoardComment;
import com.web.board.model.service.BoardService;

/**
 * Servlet implementation class BoardCommentInsertServlet
 */
@WebServlet("/board/insertComment.do")
public class BoardCommentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardCommentInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardComment bc=BoardComment.builder().boardRef(Integer.parseInt(request.getParameter("boardRef"))).level(Integer.parseInt(request.getParameter("level")))
						.boardCommentWriter(request.getParameter("boardCommentWriter")).boardCommentContent(request.getParameter("content")).boardcommentRef(Integer.parseInt(request.getParameter("boardCommentRef"))).build();
		System.out.println(bc);
		int result=new BoardService().insertBoardComment(bc);
		String view;
		if(result>0) {
			view=request.getContextPath()+"/board/boardView.do?no="+bc.getBoardRef();
			//redirect로 안 넘기고 dispatcher로 넘기면 댓글이 계속등록될 수 있다. sendredirect는 주소를 새로 요청하기에 데이터를 넘기지 않는다
			response.sendRedirect(view);
		}else {
			request.setAttribute("msg", "댓글등록실패");
			request.setAttribute("loc", "/board/boardView.do?no="+bc.getBoardRef());
			view="/views/common/msg.jsp";
			request.getRequestDispatcher(view).forward(request,response);
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
