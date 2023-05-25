package com.web.member.service;

import java.sql.Connection;

import com.web.member.model.Dao.MemberDao;
import com.web.member.model.dto.MemberDto;

import static com.web.common.JDBCTemplate.*;

public class memberService {

	private MemberDao dao=new MemberDao(); 
	public MemberDto loginCheck(String userId, String password) {
		Connection conn=getConnection();
		MemberDto m=dao.loginCheck(conn,userId,password);
		close(conn);
		return m;
		}
}
