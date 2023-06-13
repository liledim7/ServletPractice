package com.web.admin.service;

import static com.web.common.JDBCTemplate.close;
import static com.web.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.web.admin.dao.AdminDao;
import com.web.member.model.dto.MemberDto;

public class AdminService {
	

	
	
	AdminDao dao=new AdminDao();
	public List<MemberDto> memberList(int cPage,int numPerpage){
		Connection conn=getConnection();
		List<MemberDto> members=dao.memberList(conn,cPage,numPerpage);
		close(conn);
		return members;
	}
	
	public int selectMemberCount() {
		Connection conn=getConnection();
		int result=dao.selectMemberCount(conn);
		close(conn);
		return result;
	}
	
	public List<MemberDto> searchById(String id){
		Connection conn=getConnection();
		List<MemberDto> members=dao.searchById(conn,id);
		close(conn);
		return members;
	}
	
	public List<MemberDto> selectMemberByKeyword(String type, String keyword, int cPage, int numPerpage){
		Connection conn=getConnection();
		List<MemberDto> members=dao.selectMemberByKeyword(conn,type,keyword,cPage,numPerpage);
		close(conn);
		return members;
	}
	
	public int selectMemberByKeywordCount(String type, String keyword) {
		Connection conn=getConnection();
		int count=dao.selectMemberByKeywordCount(conn,type,keyword);
		close(conn);
		return count;
	}
}















