package system;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class RandomPerson {
	public static void main(String[] args) {
		while(true) {
			print();
			System.out.println();
			workList();
			System.out.println("\n");
			List<Map<String, Object>> waitList = waitList();
			
			System.out.println();
			System.out.println();
			System.out.println("===== MENU ======");
			System.out.println("1.시작  2.종료");
			System.out.println("메뉴를 선택해주세요 >>> ");
			int num = ScanUtil.nextInt();
			
			switch (num) {
			case 1:
				start(waitList);
				break;
			case 2:
				System.out.println("연습문제 종료!");
				System.exit(0);
				break;
			default:
				break;
			}
		}
	}
	
	private static void print() {
		System.out.println(LocalDate.now() + " 연습문제 풀이");
		System.out.println("────────────────────────────");
	}
	
	private static void workList() {
		SearchDAO dao = SearchDAO.getInstance();
		List<Map<String, Object>> workList = dao.getWorkList();
		System.out.println("[연습문제 출전 완료자_______]");
		for (int i = 1; i <= workList.size(); i++) {
			System.out.print(workList.get(i-1).get("M_NAME") + "[" + workList.get(i-1).get("M_STATUS") + "] ");
			if(i % 6 == 0) {
				System.out.println();
			}
		}
	}
	
	private static List<Map<String, Object>> waitList() {
		SearchDAO dao = SearchDAO.getInstance();
		List<Map<String, Object>> waitList = dao.getWaitList();
		System.out.println("[연습문제 출전 대기자_______]");
		for (int i = 1; i <= waitList.size(); i++) {
			System.out.print(waitList.get(i-1).get("M_NAME") + "[" + waitList.get(i-1).get("M_STATUS") + "] ");
			if(i % 6 == 0) {
				System.out.println();
			}
		}
		return waitList;
	}
	
	private static void start(List<Map<String, Object>> waitList) {
		int pnum = 0;
		SearchDAO dao = SearchDAO.getInstance();
		
		if(waitList.size() == 0) {
			String stat = dao.init();
			if(stat.equals("success")) {
				System.out.println("학생들의 문제 풀이 상태를 업데이트하였습니다!");
			}else {
				System.out.println("업데이트 실패! 관리자에게 문의해주새요!");
			}
			return;
		}
		
		System.out.println("연습문제 풀이를 진행할 사람을 선정중입니다...!");
		for (int i = 0; i < 5; i++) {
			pnum = new Random().nextInt(waitList.size());
			try {
				Thread.sleep(1000);
				System.out.print("■■");
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		System.out.println();
		System.out.println();
		
		String name = waitList.get(pnum).get("M_NAME").toString();
		System.err.println("연습문제 풀이자 : " + name);
		
		System.out.println("현재 교실에 있습니까?");
		System.out.println("1.네     2.아니오");
		System.out.println("");
		System.out.println("메뉴를 선택해주세요 >> ");
		int num = ScanUtil.nextInt();
		if(num == 1) {
			int status = dao.updateWork(name);
			if(status > 0) {
				System.out.println(name + "님! 상태 업데이트 완료!");
				System.out.println();
			}
		}else {
			System.out.println("다시 진행합니다 ■□■□■□■□■□■□■□■□■□");
		}
		
	}
}
