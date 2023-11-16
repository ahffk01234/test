package system;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class JDBCUtil {
	// 싱글톤 패턴 : 인스턴스의 생성을 제한하여 하나의 인스턴스만 사용하는 디자인 패턴
	private static JDBCUtil instance = null;
	// 인스턴스를 보관할 변수
	private JDBCUtil() {}
	// JDBCUtil 객체를 만들 수 없게(인스턴스화 할 수 없게) private로 제한함
	public static JDBCUtil getInstance() {
		if(instance == null) instance = new JDBCUtil();
		return instance;
	}
	
//	private final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
//	private final String USER = "joe";
//	private final String PASSWORD = "java";

	private final String URL = "jdbc:oracle:thin:@112.220.114.130:1521:xe";
	private final String USER = "TEAM1_202209S";
	private final String PASSWORD = "java";

	
	private Connection conn = null;
	private ResultSet rs = null;
	private PreparedStatement ps = null;
	private CallableStatement cs = null;
	
	public Map<String, Object> selectOne(String sql) {
		// sql => "SELECT * FROM MEMBER WHERE MEM_ID='a001' AND MEM_PASS='123'"
		Map<String, Object> row = null;
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int columnCount = rsmd.getColumnCount();
			while(rs.next()) {
				row = new HashMap<>();
				for(int i = 1; i <= columnCount; i++) {
					String key = rsmd.getColumnName(i);
					Object value = rs.getObject(i);
					row.put(key, value);
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) try { conn.close(); } catch (Exception e) {}
			if(rs != null) try { rs.close(); } catch (Exception e) {}
			if(ps != null) try { ps.close(); } catch (Exception e) {}
		}
		return row;
	}
	
	public Map<String, Object> selectOne(String sql, List<Object> param) {
		// sql => "SELECT * FROM MEMBER WHERE MEM_ID=?"
		// param => ["a001"]
		//
		// sql => "SELECT * FROM MEMBER WHERE MEM_JOB=? AND MEM_LIKE=?"
		// param => ["주부", "낚시"]
		Map<String, Object> row = null;
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			ps = conn.prepareStatement(sql);
			
			// param에서 하나씩 꺼내 ps의 '?'를 채워준다.
			for(int i = 0; i < param.size(); i++) {
				ps.setObject(i + 1, param.get(i));
			}
			
			rs = ps.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int columnCount = rsmd.getColumnCount();
			while(rs.next()) {
				row = new HashMap<>();
				for(int i = 1; i <= columnCount; i++) {
					String key = rsmd.getColumnName(i);
					Object value = rs.getObject(i);
					row.put(key, value);
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) try { conn.close(); } catch (Exception e) {}
			if(rs != null) try { rs.close(); } catch (Exception e) {}
			if(ps != null) try { ps.close(); } catch (Exception e) {}
		}
		return row;
	}
	
	public List<Map<String, Object>> selectList(String sql) {
		// sql => "SELECT * FROM MEMBER"
		// sql => "SELECT * FROM JAVA_BOARD"
		// sql => "SELECT * FROM JAVA_BOARD WHERE NUM > 10"
		List<Map<String, Object>> rowList = null;
		
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int columnCount = rsmd.getColumnCount();
			// select된 행들이 저장될 빈 목록을 만든다.
			rowList = new ArrayList<>();
			while(rs.next()) {
				// 한 행을 담을 Map을 만들어준다.
				Map<String, Object> row = new HashMap<>();
				for(int i = 1; i <= columnCount; i++) {
					String key = rsmd.getColumnName(i);
					Object value = rs.getObject(i);
					// 행 정보를 담는다 => key에는 컬럼명, value는 값(튜플)을 담는다.
					row.put(key, value);
				}
				// 목록 맨 뒤에 직전에 담아놓은 행 정보를 추가한다.
				rowList.add(row);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) try { conn.close(); } catch (Exception e) {}
			if(rs != null) try { rs.close(); } catch (Exception e) {}
			if(ps != null) try { ps.close(); } catch (Exception e) {}
		}
		return rowList;
	}
	
	public List<Map<String, Object>> selectList(String sql, List<Object> param) {
		// sql => "SELECT * FROM MEMBER WHERE MEM_ADD1 LIKE '%'||?||'%'"
		// sql => "SELECT * FROM JAVA_BOARD WHERE WRITER=?"
		List<Map<String, Object>> rowList = null;
		
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			ps = conn.prepareStatement(sql);
			for(int i = 0; i < param.size(); i++) {
				ps.setObject(i + 1, param.get(i));
			}
			rs = ps.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int columnCount = rsmd.getColumnCount();
			// select된 행들이 저장될 빈 목록을 만든다.
			rowList = new ArrayList<>();
			while(rs.next()) {
				// 한 행을 담을 Map을 만들어준다.
				Map<String, Object> row = new HashMap<>();
				for(int i = 1; i <= columnCount; i++) {
					String key = rsmd.getColumnName(i);
					Object value = rs.getObject(i);
					// 행 정보를 담는다 => key에는 컬럼명, value는 값(튜플)을 담는다.
					row.put(key, value);
				}
				// 목록 맨 뒤에 직전에 담아놓은 행 정보를 추가한다.
				rowList.add(row);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) try { conn.close(); } catch (Exception e) {}
			if(rs != null) try { rs.close(); } catch (Exception e) {}
			if(ps != null) try { ps.close(); } catch (Exception e) {}
		}
		return rowList;
	}
	
	public int update(String sql) {
		// sql => "DELETE FROM JAVA_BOARD"
		// sql => "INSERT INTO JAVA__MEMBER (MEM_ID, MEM_PASS, MEM_NAME) 
		// 							 VALUES ('a001', '1234', '홍길동')
		int result = 0;
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			ps = conn.prepareStatement(sql);
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) try { conn.close(); } catch(Exception e) {}
			if(ps != null) try { ps.close(); } catch(Exception e) {}
			if(rs != null) try { rs.close(); } catch(Exception e) {}
		}
		return result;
	}
	
	public int update(String sql, List<Object> param) {
		// sql => "DELETE FROM JAVA_BOARD WHERE WRITER=?"
		// sql => "INSERT INTO JAVA_MEMBER (MEM_ID, MEM_PASS, MEM_NAME) 
		// 								 VALUES (?, ?, ?)
		int result = 0;
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			ps = conn.prepareStatement(sql);
			for(int i = 0; i < param.size(); i++) {
				ps.setObject(i + 1, param.get(i));
				// List의 index는 0부터, PrepareStatement의 index(물음표의 index)는 1부터
			}
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) try { conn.close(); } catch(Exception e) {}
			if(ps != null) try { ps.close(); } catch(Exception e) {}
			if(rs != null) try { rs.close(); } catch(Exception e) {}
		}
		return result;
	}
	
	public int function(String sql, List<Object> param) {
		int result = 0;
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			cs = conn.prepareCall(sql);
			cs.registerOutParameter(1,Types.INTEGER);
			for(int i = 0; i < param.size(); i++) {
				cs.setObject(i + 2, param.get(i));
			}
			cs.execute();
			result = cs.getInt(1);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) try { conn.close(); } catch(Exception e) {}
			if(ps != null) try { ps.close(); } catch(Exception e) {}
			if(rs != null) try { rs.close(); } catch(Exception e) {}
		}
		return result;
	}
}
