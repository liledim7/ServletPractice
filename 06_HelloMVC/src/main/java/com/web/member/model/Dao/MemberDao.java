package com.web.member.model.Dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import static com.web.common.JDBCTemplate.*;

import com.web.member.model.dto.MemberDto;

public class MemberDao {
	private  Properties sql=new Properties();
	{
		String path=MemberDao.class.getResource("/sql/member/member_sql.properties").getPath();
		try {
			sql.load(new FileReader(path));
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	public MemberDto loginCheck(Connection conn,String userId, String password) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		MemberDto m=null;
		try {
			pstmt=conn.prepareStatement(sql.getProperty("login"));
			pstmt.setString(1, userId);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				m=getMember(rs);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return m;
	}
	
	public int enrollMember(Connection conn, MemberDto m) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql.getProperty("enroll"));
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getPassWord());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, String.valueOf(m.getGender()));
			pstmt.setInt(5, m.getAge());
			pstmt.setString(6, m.getEmail());
			pstmt.setString(7, m.getPhone());
			pstmt.setString(8, m.getAddress());
			pstmt.setString(9,String.join(",",m.getHobby()));
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public MemberDto selectByUserId(Connection conn, String userId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		MemberDto m=null;
		try {
			pstmt=conn.prepareStatement(sql.getProperty("selectByUserId"));
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				m=getMember(rs);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return m;
	}
	
	public int updateMember(Connection conn, MemberDto m) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql.getProperty("updateMember"));
			pstmt.setString(1, m.getUserName());
			pstmt.setInt(2, m.getAge());
			pstmt.setString(3, String.valueOf(m.getGender()));
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getPhone());
			pstmt.setString(6, m.getAddress());
			pstmt.setString(7, String.join(",", m.getHobby()));
			pstmt.setString(8, m.getUserId());
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
	}
	
	public int updatePassword(Connection conn, String userId, String password) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql.getProperty("updatePassword"));
			pstmt.setString(1, password);
			pstmt.setString(2, userId);
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
	}
	
	
	
	private MemberDto getMember(ResultSet rs) throws SQLException{
		return MemberDto.builder().userId(rs.getString("userid")).passWord(rs.getString("password")).userName(rs.getString("username"))
				.gender(rs.getString("gender").charAt(0)).age(rs.getInt("age")).email(rs.getString("email")).phone(rs.getString("phone"))
				.address(rs.getString("address")).hobby(rs.getString("hobby").split(",")).enrollDate(rs.getDate("enrolldate")).build();
		
	}
}












