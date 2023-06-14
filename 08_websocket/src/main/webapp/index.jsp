<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹소켓테스트</title>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
	<div id="container">
		<input type="text" id="sender" placeholder="보내는사람"><br>
		<input type="text" id="sendMsg">
		
		<button id="sendBtn">전송</button>
	</div>
	<div id="msgcontainer"></div>
	
	
	<script>
		const socket=new WebSocket("ws://localhost:9090/<%=request.getContextPath() %>/chatting");
		socket.onopen=e=>{
			//websocket서버와 접속이 완료되면 실행되는 함수
			console.log(e);
			socket.send("안녕");
		}
		socket.onmessage=e=>{
			//접속된 websocket서버에서 sendText()||sendObject()메소드를 실행했을떄
			//실행되는 함수
			
			//서버에서 보낸데이터는 매개변수객체의 data속성에 저장되어있음
			const sendData=e.data.Pparse(e.get)
			switch(sendData.type)}
		case "채팅" : PrintData(sendData);break;
		
		const printData=(sendData)
= 			/* const textContainer=$("<div>").append(sup).append
			$("#msgcontainer").append($("<p>").text(e.data)); */
			
			$("#sendBtn").click(e=>{
				const msg=$("#sendMsg").val();
				let sender=$("#sender").val();
				const sendData=new Message("채팅",sender,"",msg,"");
				sendMsg(sender+","+msg);
			});
			
		}
		function sendMsg(msg){
				//if(msg.length>0){
				socket.send(JSON.stringify(msg));
				//}else throw new Error("메세지가 비어있습니다");
			}
		//type: 채팅, 사용현황, 알림
		//sender
		//receiver
		//msg
		//room
		class Message{
			constructor(type,sender,receiver,msg,room){
				this.type=type;
				this.sender=sendesr;
				this.receiver=receiver;
				this.msg=msg;
				this.room=room;
			}
			
		}
		
	</script>
</body>
</html>