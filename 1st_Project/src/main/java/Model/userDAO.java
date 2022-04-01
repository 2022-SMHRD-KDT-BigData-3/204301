package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userDAO {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		int cnt = 0;
		
		public void db_conn() {
			try {
		
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_k_0325_4";
			String db_pw = "smhrd4";
			
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		 	if(conn != null) {
		 		System.out.println("DB연결성공");
			}else {
				System.out.println("DB연결실패");
		 		}
			}catch (Exception e) {
					e.printStackTrace();			
			}
			
		}
	
		// DB종료메소드
		public void db_close() {
				try {
					if(rs != null) rs.close();
					if(psmt != null) psmt.close();
					if(conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		
		public int user(userDTO dto) {
			int colcnt = countCol() + 1;
			
			String nick = "user_" + colcnt; 
			
			try {
		
			String sql = "insert into userdata(nickname, age, city, prevletter) values(?,?,?,?)";
				 
			psmt = conn.prepareStatement(sql);
		
			psmt.setString(1, nick);
			psmt.setString(2, dto.getAge());
			psmt.setString(3, dto.getCity());
			psmt.setString(4, dto.getPreletter());
			
			cnt = psmt.executeUpdate();
		
			}catch (Exception e) {
				e.printStackTrace();	
			}finally { 
				db_close();
			}return cnt;
		}
		
		public int updateUser(userDTO dto) {
			try {
				db_conn();
				
				String sql = "update userdata set nextletter=? where nickname=?";
				
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getNextletter());
				psmt.setString(2, dto.getNickname());
			
				cnt = psmt.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				db_close();
			}return cnt;
		}
							
		public int countCol() {
			db_conn();
			
			try {
				
				String sql = "select count(*) from userdata";
					 
				psmt = conn.prepareStatement(sql);
				
				cnt = psmt.executeUpdate();
			
				}catch (Exception e) {
					e.printStackTrace();	
				}return cnt;
		}
}
