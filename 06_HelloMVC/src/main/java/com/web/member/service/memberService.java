package com.web.member.service;

import static com.web.common.JDBCTemplate.close;
import static com.web.common.JDBCTemplate.commit;
import static com.web.common.JDBCTemplate.getConnection;
import static com.web.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.web.member.model.Dao.MemberDao;
import com.web.member.model.dto.MemberDto;

public class memberService {

	private MemberDao dao=new MemberDao(); 
	public MemberDto loginCheck(String userId, String password) {
		Connection conn=getConnection();
		MemberDto m=dao.loginCheck(conn,userId,password);
		close(conn);
		return m;
		}
	
	public int enrollMember(MemberDto m) {
		Connection conn=getConnection();
		int result=dao.enrollMember(conn, m);
		if(result>0)commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	public MemberDto selectByUserId(String userId) {
		Connection conn=getConnection();
		MemberDto m=dao.selectByUserId(conn,userId);
		close(conn);
		return m;
	}
}














