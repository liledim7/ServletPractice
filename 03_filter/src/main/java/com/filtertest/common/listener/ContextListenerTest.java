package com.filtertest.common.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListenerTest implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		//톰캣의 servletContext객체가 소멸됐을때 실행
		//톰캣종료시
		System.out.println("서버 죽음");
	}
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//톰캣의 servletContext객체가 생성됐을때 실행
		//톰캣실행시
		System.out.println("서버실행");
	}

	
}
