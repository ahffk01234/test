<%@page import="ch11.dao.BoardRepository"%>
<%@page import="ch11.vo.BoardFileVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="ch11.vo.BoardVO"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ch11_test_exceptionBoard_error.jsp"%>
<!-- 
   1. 게시글 등록을 처리해주세요.
      > 게시글 등록 성공 시, 상세보기 페이지(boardView.jsp)로 이동해주세요.
      > 게시글 등록 실패 시, 에러 페이지(exceptionBoard_error.jsp)로 이동해주세요.
 -->
 
 <%
 
   	request.setCharacterEncoding("UTF-8");

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
    
    String no = "0";
    String title = "";
    String content = "";
     String writer = "mem";
     String regDate = "";
     String hit = "0";
     
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
    
    BoardVO board = new BoardVO();
    
    
    board.setNo(Integer.parseInt(no));
    board.setTitle(title);
    board.setContent(content);
    board.setWriter(writer);
    board.setRegDate(regDate);
    board.setHit(Integer.parseInt(hit));
    board.setFileVO(boardFile);
    
    
    dao.addBoard(board);
    
    response.sendRedirect("ch11_test_boardList.jsp");
    
 
 %>