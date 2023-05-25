<%@page import="com.web.member.model.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HellowMvc</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css">
<script src="<%=request.getContextPath()%>/js/jquery-3.7.0.min.js"></script>
<% MemberDto loginMember= (MemberDto)session.getAttribute("loginMember"); %>
</head>
	<div id="container">
		<header>
			<h1>HellowMVC</h1>
			<div class="login-container">
			<%if(loginMember==null){ %>
			<form id="loginform" action="loginCheck.do" method="post">
				<table>
					<tr>
						<td>
							<input type="text" name="userId" id="userId" placeholder="아이디">
							<input type="text" name="password" id="password" placeholder="패스워드">
						</td>
						<td>
							<input type="submit" value="로그인">
						</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" name="saveId" id="saveId">
							<label for="saveId">아이디저장</label>
					
							<input type="button" value="회원가입">
						</td>
						
					</tr>
					
					
				</table>
			</form>
			<%}else{ %>
				<table id="logged-in">
					<tr>
						<td colspan="2">
							<%=loginMember.getUserName() %>님, 환영합니다
						</td>
					</tr>
					<tr>
						<td>
							<input type="button" value="내 정보보기">
							
						</td>
						<td>
							<input type="button" value="로그아웃">
						</td>
					</tr>
				</table>
			<%} %>
			</div>
			<nav>
				<ul class="main-nav">
					<li class="home"><a href="">Home</a></li>
					<li id="notice"><a href="">공지사항</a></li>
					<li id="board"><a href="">게시판</a></li>
				</ul>
			</nav>
			
		</header>