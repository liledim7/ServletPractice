package com.websocket.controller;

import java.io.IOException;
import java.util.Set;

import javax.websocket.EndpointConfig;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.google.gson.Gson;
import com.websocket.vo.Message;

@ServerEndpoint("/chatting")
public class ChattingServer {

	@OnOpen
	public void open(Session session, EndpointConfig config) {
		//클라이언트가 접속요청을하면 실행되는 메소드
		System.out.println(session.getId());
		System.out.println("서버접속");
	}
	
	@OnMessage
	public void message(Session session, String msg) {
		//js에서 socket.send("메세지")함수를 실행했을떄 실행되는 메소드
		//send()함수의 인자값이 두번째 매개변수에 저장이 된다
		//클라이언트가 보낸데이터가 두번쨰 매개변수에 저장된다
		Message m=new Gson().fromJson(msg, Message.class);
		//접속한 session을 가져올 수 있는 메소드제공
		Set<Session>clients= session.getOpenSessions();
		System.out.println(clients.size());
		
		
		//접속한 사용자에게 받은메시지를 전달
		try {
			session.getBasicRemote().sendText(msg);
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		
	}
}
