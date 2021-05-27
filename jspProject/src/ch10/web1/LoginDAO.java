package ch10.web1;

import java.sql.*;
import java.util.ArrayList;

//DB와 연동하기 위한 기능을 구현한 객체
public class LoginDAO {

	// DB 연동 커넥션 얻기
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		// 연결 정보와 SQL
		String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
		String user = "YEOL as sysdba";
		String passwd = "1111";

		// 1. DB 연동 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");

		// 2. 연결 객체 생성
		Connection con = DriverManager.getConnection(url, user, passwd);

		return con;
	}

	public void insertLogin(LoginDTO loginDTO) throws SQLException, ClassNotFoundException {
		Connection con = getConnection();
		PreparedStatement pstmt = null;

		// 3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
		String sql = "INSERT INTO LOGIN VALUES(?,?,?)";

		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, loginDTO.getId());
		pstmt.setString(2, loginDTO.getName());
		pstmt.setString(3, loginDTO.getPwd());

		// 4. SQL 실행
		int i = pstmt.executeUpdate();
		// 5. 객체 해제
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();

	}

	public ArrayList<LoginDTO> listLogin() throws ClassNotFoundException, SQLException {
		ArrayList<LoginDTO> dtos = new ArrayList<LoginDTO>();

		Connection con = getConnection();

		String sql = "SELECT * FROM LOGIN";
		Statement st = con.createStatement();

		ResultSet rs = st.executeQuery(sql);

		while (rs.next()) {
			LoginDTO item = new LoginDTO(rs.getString("ID"), rs.getString("NAME"), rs.getString("PWD"));

			dtos.add(item);
		}
		if (st != null)
			st.close();
		if (con != null)
			con.close();

		return dtos;
	}

	public void updateLogin(LoginDTO dto) throws SQLException, ClassNotFoundException {
		Connection con = getConnection();
		//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
		String sql = "UPDATE LOGIN SET NAME=?, PWD=? WHERE ID=?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, dto.getName());
		pstmt.setString(2, dto.getPwd());
		pstmt.setString(3, dto.getId());
		
		//4. SQL 실행
		pstmt.executeUpdate();
		
		//5. 객체 해제
		pstmt.close();
		con.close();
		
	}

	public void deleteLogin(LoginDTO dto) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
		String sql = "DELETE FROM LOGIN WHERE ID=?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, dto.getId());
		
		//5. SQL 실행
		int i = pstmt.executeUpdate();
		
		//6. 객체 해제
		pstmt.close();
		con.close();
	}
	
	
}
