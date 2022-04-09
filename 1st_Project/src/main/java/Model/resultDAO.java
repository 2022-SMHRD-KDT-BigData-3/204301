package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class resultDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	int cnt = 0;
	resultDTO dto = null;
	
	public void db_conn() {
		try {
	
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_k_0325_4";
			String db_pw = "smhrd4";
			
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		 	if(conn != null) {
		 		System.out.println("DB 연결성공");
			}else {
				System.out.println("DB 연결실패");
		 	}
		}catch (Exception e) {
				e.printStackTrace();			
		}
		
	}

	public void db_close() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
			
			System.out.println("DB CLOSE");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int insertData(resultDTO dto) {
		db_conn();
		
		try {
			
			String sql ="insert into result values(?,?,?,?,?,sysdate)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getNickname());
			psmt.setString(2, dto.getPlaceid());
			psmt.setString(3, dto.getQuiz());
			psmt.setString(4, dto.getQuiz_set());
			psmt.setInt(5, dto.getScore());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}
		
		return cnt;
	}
	
	public ArrayList<resultDTO> resultinfo() {
		ArrayList<resultDTO> list = new ArrayList<resultDTO>();
		db_conn();
		
		try {
			
			String sql = "select * from result";
			
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String nickname = rs.getString(1);
				String placeid = rs.getString(2);
				String quiz = rs.getString(3);
				String quiz_set = rs.getString(4);
				int score = rs.getInt(5);
				
				resultDTO dto = new resultDTO(nickname, placeid, quiz, quiz_set, score);
				
				list.add(dto);
			}
			
			}catch (Exception e) {
				e.printStackTrace();	
			}finally {
				db_close();
			}return list;
	
	}

	public int updateData(String nickname,int score) {
		db_conn();
		
		try {
			
			String sql ="UPDATE result SET score = ? WHERE nickname=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, score);
			
			psmt.setString(2, nickname);
			
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}
		
	return cnt;
	}

}
