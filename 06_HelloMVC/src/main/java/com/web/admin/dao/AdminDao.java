package com.web.admin.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import static com.web.common.JDBCTemplate.*;
import static com.web.member.model.Dao.MemberDao.getMember;

import com.web.member.model.dto.MemberDto;

public class AdminDao {

	private Properties sql=new Properties();
	{
		String path=AdminDao.class.getResource("/sql/admin/adminsql.properties").getPath();
		try {
			sql.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
		
	}
	public List<MemberDto> memberList(Connection conn,int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MemberDto> members=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(sql.getProperty("memberList"));
			pstmt.setInt(1, (cPage-1)*numPerpage+1);
			pstmt.setInt(2, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				members.add(getMember(rs));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return members;
	}
	
	public int selectMemberCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql.getProperty("selectMemberCount"));
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result=rs.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
	}
	
	public List<MemberDto> searchById(Connection conn, String id) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MemberDto> members=new ArrayList<>();
		try {
			pstmt=conn.prepareStatement(sql.getProperty("searchById"));
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				members.add(getMember(rs));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return members;
	}
	
	private MemberDto member(ResultSet rs) throws SQLException{
		MemberDto m=new MemberDto();
		m.setUserId(rs.getString("userId"));
		m.setUserName(rs.getString("userName"));
		m.setGender(rs.getString("gender").charAt(0));
		m.setAge(rs.getInt("age"));
		m.setEmail(rs.getString("email"));
		m.setPhone(rs.getString("phone"));
		m.setAddress(rs.getString("address"));
		m.setHobby(rs.getString("hobby")!=null?rs.getString("hobby").split(","):null);
		m.setEnrollDate(rs.getDate("enrolldate"));
		return m;
	}
}















