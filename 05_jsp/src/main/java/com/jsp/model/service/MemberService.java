package com.jsp.model.service;

import static com.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;



import com.jsp.model.dao.MemberDao;
import com.jsp.model.dto.MemberDTO;

public class MemberService {
	private MemberDao dao = new MemberDao();

	public List<MemberDTO> selectMemberAll(){
		Connection conn=getConection();
		List<MemberDTO> list=dao.selectMemberAll(conn);
		close(conn);
		return list;
	}
	
	public List<MemberDTO> searchMemberByName(String name){
		Connection conn=getConection();
		
		List<MemberDTO> list=dao.searchMemberByName(conn,name);
		close(conn);
		return list;
	}
}
