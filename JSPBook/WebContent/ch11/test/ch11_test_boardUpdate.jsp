<%@page import="ch11.vo.BoardFileVO"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="ch11.vo.BoardVO"%>
<%@page import="ch11.dao.BoardRepository"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!-- 
	1. 게시글 수정을 처리해주세요.
		> 수정 성공 후, 상세보기 페이지(boardView.jsp)로 이동해주세요.
		> 수정 실패 후, 에러 페이지(exceptionBoard_error.jsp)로 이동해주세요.
 -->
 <%
 
 request.setCharacterEncoding("UTF-8");
 
 String no = "";
 
 
 BoardRepository dao = BoardRepository.getInstance();
 
 
 String realFolder = request.getServletContext().getRealPath("/resources/images"); // 웹 어플리케이션 상의 절대경로로 이미지를 업로드할때 사용할 경로
 
 String encType = "utf-8";

 int maxSize = 5 * 1024 * 1024;

 File file = new File(realFolder);

 if (file.exists()) {
    file.mkdirs();
 }

 DiskFileUpload upload = new DiskFileUpload();
 upload.setSizeMax(10000000);
 upload.setSizeThreshold(maxSize);
 upload.setRepositoryPath(realFolder);

 List items = upload.parseRequest(request);
 Iterator params = items.iterator(); 
 
 String title = "";
 String content = "";
  String regDate = "";
  
  String contentType = "";
  long fileSize = 0;
  String fileName = "";
      
  
 regDate = dao.getCurrentTime();
  
 while (params.hasNext()) {
    FileItem item = (FileItem) params.next();
    if (item.isFormField()) { // 폼페이지에서 전송된 요청 파라미터가 일반 데이터라면 여기서 처리
       String fieldName = item.getFieldName();
       if (fieldName.equals("title")) {
       title = item.getString(encType);
          } else if (fieldName.equals("content")) {
       content = item.getString(encType);
          }
          else if(fieldName.equals("no")){
        	  no = item.getString(encType);
          }

    } else { // 폼페이지에서 전송된 요청 파라미터가 파일이라면 여기서 처리
       String fileFieldName = item.getFieldName(); // 요청 파라미터 이름
       fileName = item.getName(); // 저장 파일이름
       contentType = item.getContentType(); // 파일 MimeType
       // 서버로 넘어온 파일명이 경로를 포함한 파일명으로 받아졌을 때 처리하기 위한 필터
       fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);

       fileSize = item.getSize(); // 파일크기정보
       File uploadFile = new File(realFolder + "/" + fileName);
       item.write(uploadFile); // 파일 복사

    }

 }
 
 
 
 BoardFileVO boardFile = new BoardFileVO();
 
 boardFile.setNo(Integer.parseInt(no));
 boardFile.setContentType(contentType);
 boardFile.setFileSize(fileSize);
 boardFile.setFileName(fileName);
 
 BoardVO board = dao.getBoardById(Integer.parseInt(no));
 
 
 board.setTitle(title);
 board.setContent(content);
 board.setRegDate(regDate);
 board.setFileVO(boardFile);
 
 dao.updateBoard(board);
 
 response.sendRedirect("ch11_test_boardList.jsp");
 
 %>