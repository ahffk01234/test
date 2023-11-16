package ch12;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LogFileFilter implements Filter {

	private PrintWriter writer = null;
	
	@Override
	public void destroy() {
		System.out.println("LogFileFilter 해제...!");
		writer.close();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("LogFileFilter 수행...!");
		
		writer.printf("현재 일시 : %s %n", getCurrentTime());
		
		String clientAddr = request.getRemoteAddr();
		writer.printf("클라이언트 주소 : %s %n", clientAddr);
		
		chain.doFilter(request, response);
		
		String contentType = response.getContentType();
		writer.printf("문서의 콘텐츠 유형 : %s %n", contentType);
		writer.println("------------------------------------------------");
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("LogFileFilter 초기화...!");
		
		String filename = filterConfig.getInitParameter("filename");
		
		if(filename == null) {
			throw new ServletException("로그 파일의 이름을 찾을 수 없습니다!");
		}
		
		try{
			// PrintWriter
			// 두번째 매개변수 : autoFlush 여부(true/false)
			// FileWriter
			// 두번째 매개변수 : append 여부(true/false)
			writer = new PrintWriter(new FileWriter(filename, true), true);
		}catch(IOException e) {
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
	}

	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(cal.getTime());
	}
	
}















