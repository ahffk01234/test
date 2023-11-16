package system;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// nextLine 과 Integer.parseInt(nextLine) 을 쉽게 사용하는 메서드 제작
public class ScanUtil {
	private static Scanner sc = new Scanner(System.in);
	public static String nextLine() {
		return sc.nextLine();
	}
	
	public static int nextInt() {
		int input = 0;
		
		while(true) {
			try {
				input = Integer.parseInt(sc.nextLine());
				break;
			}catch(NumberFormatException e) {
				System.err.println("숫자를 입력해 주세요!");
			}
		}
		return input;
	}
	
	public static double nextDouble() {
		double input = 0;
		
		while(true) {
			try {
				input = Double.parseDouble(sc.nextLine());
				break;
			}catch(NumberFormatException e) {
				System.err.println("숫자를 입력해 주세요!");
			}
		}
		
		return input;
	}
	
	public static int singleInt() {
		String input = "";
		int parse = 0;
		
		while(true) {
			input = sc.nextLine();
			String number = "[0-9]+";
	        Pattern p1 = Pattern.compile(number);
	        Matcher m1 = p1.matcher(input);
	        if(!m1.matches()) {
	        	System.out.println("숫자를 입력해 주세요!\n");
	        }else {
	        	parse = Integer.parseInt(input);
	        	break;
	        }
		}
		return parse;
	}
}
