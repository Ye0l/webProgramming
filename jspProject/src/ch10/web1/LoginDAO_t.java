package ch10.web1;

import java.sql.*;
import java.util.ArrayList;

//DB와 연동하기 위한 기능을 구현한 객체
public class LoginDAO_t {

	// DB 연동 커넥션 얻기
	private Connection getConnection() throws ClassNotFoundException, SQLException {
		// 연결 정보와 SQL
		String url = "jdbc:mysql://localhost:3306/codingtest";
		String user = "root";
		String passwd = "apmsetup";
		
		// 1. DB 연동 드라이버 로드
//		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2. 연결 객체 생성
		Connection con = DriverManager.getConnection(url, user, passwd);

		return con;
	}

	public void insertLogin(LoginDTO_t LoginDTO_t) throws SQLException, ClassNotFoundException {
		Connection con = getConnection();
		PreparedStatement pstmt = null;

		// 3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
		String sql = "INSERT INTO rent(rentId, memberName, videoName, fee, rentDate) VALUES(?,?,?,?,sysdate)";

		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, LoginDTO_t.getRentid());
		pstmt.setString(2, LoginDTO_t.getMemberName());
		pstmt.setString(3, LoginDTO_t.getVideoName());
		pstmt.setString(4, LoginDTO_t.getFee());

		// 4. SQL 실행
		pstmt.executeUpdate();
		// 5. 객체 해제
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();

	}

	public ArrayList<LoginDTO_t> listLogin() throws ClassNotFoundException, SQLException {
		ArrayList<LoginDTO_t> dtos = new ArrayList<LoginDTO_t>();

		Connection con = getConnection();

		String sql = "SELECT * FROM rent";
		Statement st = con.createStatement();

		ResultSet rs = st.executeQuery(sql);

		while (rs.next()) {
			LoginDTO_t item = new LoginDTO_t(rs.getString("rentid"), rs.getString("memberName"), rs.getString("videoName"), rs.getString("fee"), rs.getString("rentDate"));

			dtos.add(item);
		}
		if (st != null)
			st.close();
		if (con != null)
			con.close();

		return dtos;
	}
}
