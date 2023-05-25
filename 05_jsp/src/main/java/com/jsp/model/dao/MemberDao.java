package com.jsp.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import static com.jsp.common.JDBCTemplate.*;

import com.jsp.model.dto.MemberDTO;

public class MemberDao {

	public List<MemberDTO> selectMemberAll(Connection conn){
		String sql="SELECT * FROM MEMBER";
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MemberDTO> list=new ArrayList<>();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemberDTO m=MemberDTO.builder().memberId(rs.getString("member_id"))
						.memberPwd(rs.getString("member_PWD")).memberName(rs.getNString("member_name"))
						.age(rs.getInt("age")).gender(rs.getString("gender")).email(rs.getString("email")).phone(rs.getString("phone")).address(rs.getString("address"))
						.hobby(rs.getString("hobby")).enrollDate(rs.getDate("enroll_date")).build();
				list.add(m);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}
	
	public List<MemberDTO> searchMemberByName(Connection conn, String name){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MemberDTO> list=new ArrayList<>();
		String sql="SELECT * FROM MEMBER WHERE MEMBER_NAME LIKE '%'||?||'%'";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemberDTO m=MemberDTO.builder().memberId(rs.getString("member_id"))
						.memberPwd(rs.getString("member_PWD")).memberName(rs.getNString("member_name"))
						.age(rs.getInt("age")).gender(rs.getString("gender")).email(rs.getString("email")).phone(rs.getString("phone")).address(rs.getString("address"))
						.hobby(rs.getString("hobby")).enrollDate(rs.getDate("enroll_date")).build();
				list.add(m);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return list;
	}
}







