package com.web.common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.web.member.model.dto.MemberDto;

/**
 * Servlet Filter implementation class CheckAthunticate
 */
@WebFilter(servletNames = {
		"memberView"
})
public class CheckAthunticate extends HttpFilter implements Filter {
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public CheckAthunticate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpSession session = ((HttpServletRequest)request).getSession();
		MemberDto loginMember=(MemberDto)session.getAttribute("loginMember");
		if(loginMember==null||!loginMember.getUserId().equals(request.getParameter("userId"))) {
//			request.setAttribute("msg", "잘못된 접근입니다");
//			request.setAttribute("loc", "/");
//			request.getRequestDispatcher("/views/common/msg.jsp");
			//throw을 이용해 나의 exception으로 처리할수도 있다
			throw new RuntimeException("잘못된 접근입니다.");
			//예외처리 등록하는것 공부
		}else {
			chain.doFilter(request, response);
		}
		// pass the request along the filter chain
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
