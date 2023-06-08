package com.web.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.web.notice.model.dto.Notice;
import com.web.notice.model.service.NoticeService;

/**
 * Servlet implementation class NoticeInsertEndServlet
 */
@WebServlet("/notice/insertNotice.do")
public class NoticeInsertEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeInsertEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파일업로드 처리하기 -> cos.jar라이브러리가 제공하는 클래스 이용
		//1. multipart/form-data형식의 요청인지 확인
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("msg", "잘못된 접근입니다;");
			request.setAttribute("loc", "/");
			request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
			//2.데이터 업로드 처리하기
			
			//String으로 저장할 위치(절대경로) 가져오기
			//ServletContext객체를 이용해서 웹애플리케이션의 절대경로를 가져올 수 있다
			
			
		}else {
			String path=getServletContext().getRealPath("/upload/notice");
			System.out.println(path);
			//최대파일크기설정
			int maxSize=1024*1024*100;
			//인코딩설정
			String encode="UTF-8";
			//리네임클래스 설정
			DefaultFileRenamePolicy dfr=new DefaultFileRenamePolicy();
			//MultipartRequest클래스 생성하기 -> 지정된 위치에 업로드된 파일을 저장시킴
			MultipartRequest mr=new MultipartRequest(request,path,maxSize,encode,dfr);
			
			String noticeTitle=mr.getParameter("noticeTitle");
			String noticeWriter=mr.getParameter("noticeWriter");
			String noticeContent=mr.getParameter("noticeContent");
			
			String orifilename=mr.getOriginalFileName("upFile");
			String renamefilename=mr.getFilesystemName("upFile");
//			System.out.println(noticeTitle+" "+noticeWriter+" "+noticeContent+" "+orifilename+" "+renamefilename);
			Notice n=Notice.builder().noticeTitle(noticeTitle).noticeWriter(noticeWriter).noticeContent(noticeContent).filePath(renamefilename).build();
			int result=new NoticeService().insertNotice(n);
			String msg="공지사항등록 완료",loc="/views/notice/noticeList.jsp";
			if(result==0) {
				msg="공지사항등록 실패";
				loc="/notice/insertForm.do";
			}
			request.setAttribute("msg", msg);
			request.setAttribute("loc", loc);
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
