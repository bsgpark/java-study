<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="Header.jsp"%>
<%@ page import = "java.io.*" %>
<div class ="container">
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	String root_path= "C:/work/java/webboard/WebContent/";
	String upload_path="/assets/upload/";
	String filepath = root_path + upload_path + email +".txt";
	File filename = new File(filepath);
	if(filename.exists()){
		FileReader filer = new FileReader(filepath);
		int ch = 0;
		String rtext ="";
		while((ch = filer.read())!= -1){
			rtext = rtext + (char)ch;
		}
		filer.close();
		if(rtext.equals(password)){
			out.print("로그인에 성공했습니다");
			session.setAttribute("email",email);
			
		}
		else
			out.print("비밀번호가 틀렸습니다.");
		
		
		
	}
	else{
		out.print("가입이 되지 않았습니다.");
	}

	%>
	</div>
<%@ include file ="Footer.jsp"%>
