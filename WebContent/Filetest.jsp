<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.io.*"%>
<%@ include file = "Header.jsp"%>
<% 
	String root_path = "C:/work/java/webboard/WebContent/";
	String upload_path="assets/upload/";

	File dir = new File(root_path + upload_path);
	if(dir.exists()) {
		out.print(dir.getAbsolutePath());
		}else {
			dir.mkdirs();
			out.print("디렉토리 생성 성공");}
	
	FileWriter filew = new FileWriter(root_path + upload_path + "password.txt");
	String txt ="비밀번호 XXXX";
	filew.write(txt);
	filew.close();
	
	FileReader filer = new FileReader(root_path+ upload_path + "password.txt");
	int ch = 0;
	String rtext = "";
	while ((ch = filer.read()) != -1 ) {
		rtext = rtext + (char)ch;
		
	}
	filer.close();
	out.print("<br/> 읽은 글자 : " + rtext);
	%>
	
	
			
<%@ include file = "Footer.jsp"%>
