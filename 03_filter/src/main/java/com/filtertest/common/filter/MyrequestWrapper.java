package com.filtertest.common.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class MyrequestWrapper extends HttpServletRequestWrapper{

	public MyrequestWrapper(HttpServletRequest request) {
		super(request);
	}
	
	@Override
	public String getParameter(String name) {
		String oriData=super.getParameter(name);
		return oriData+"-bs-";
	}
}
