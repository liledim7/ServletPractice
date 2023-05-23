package com.filtertest.common.listener;


import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

public class RequestListenerTest implements ServletRequestListener,ServletRequestAttributeListener{

	@Override
	public void attributeAdded(ServletRequestAttributeEvent srae) {
		System.out.println("setAttribute()메소드로 데이터 추가");
		String key=srae.getName();
		Object value=srae.getValue();
		System.out.println(key+" "+value);
	}

	@Override
	public void attributeRemoved(ServletRequestAttributeEvent srae) {
		
	}

	@Override
	public void attributeReplaced(ServletRequestAttributeEvent srae) {
		
	}

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
	
	}

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println("요청이 왔다");
		String uri=((HttpServletRequest)sre.getServletRequest()).getRequestURI();
		System.out.println(uri);
	}
	
	
}
