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
	
	private MemberDto getMember(ResultSet rs) throws SQLException{
		return MemberDto.builder().userId(rs.getString("userid")).passWord(rs.getString("password")).userName(rs.getString("username"))
				.gender(rs.getString("gender").charAt(0)).age(rs.getInt("age")).email(rs.getString("email")).phone(rs.getString("phone"))
				.address(rs.getString("address")).hobby(rs.getString("hobby").split(",")).enrollDate(rs.getDate("enrolldate")).build();
		
	}
}












