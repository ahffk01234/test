package system;

import java.util.List;
import java.util.Map;

public class SearchDAO {
	private static SearchDAO instance = null;
	private SearchDAO() {}
	public static SearchDAO getInstance() {
		if(instance == null) instance = new SearchDAO();
		return instance;
	}
	
	JDBCUtil jdbc = JDBCUtil.getInstance();
	
	public String init() {
		String sql = "UPDATE MEMBER1 SET M_STATUS = 'N'";
		int status = jdbc.update(sql);
		return status > 0 ? "success" : "failed";
	}
	
	public List<Map<String, Object>> getWorkList(){
		String sql = "SELECT * FROM MEMBER1 WHERE M_STATUS = 'Y'";
		return jdbc.selectList(sql);
	}
	
	public List<Map<String, Object>> getWaitList(){
		String sql = "SELECT * FROM MEMBER1 WHERE M_STATUS = 'N'";
		return jdbc.selectList(sql);
	}
	
	public int updateWork(String name) {
		String sql = "UPDATE MEMBER1 SET M_STATUS = 'Y' WHERE M_NAME = '" + name + "'";
		return jdbc.update(sql);
	}
}
