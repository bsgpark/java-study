<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 에러처리 1 
<%@page errorPage="Exception.jsp"%> --%>
<%@ page import = "java.io.*" %>
<%@ include file="Header.jsp"%>

<%
	/* try{ */
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String content = request.getParameter("content");
		String[] favorite = request.getParameterValues("favorite");
		String gender = request.getParameter("gender");

		out.print(name + "<br/>");
		out.print(email + "<br/>");
		out.print(password + "<br/>");
		out.print(content + "<br/>");
		if (favorite != null) {
			for (String val : favorite) {
		out.print(val + "<br/>");
			}
		
		session.setAttribute("id", session.getId());
		session.setAttribute("name", name);
		session.setAttribute("gender", gender);
		
		String sid = (String)session.getAttribute("id");
		String sname = (String)session.getAttribute("name");
		String sgender = (String)session.getAttribute("gender");
		
		out.print(sid +"<br/>");
		out.print(sname +"<br/>");
		out.print(sgender +"<br/>");
		// 이메일 주소로 된 텍스트 파일 생성하기
		String root_path= "C:/work/java/webboard/WebContent/";
		String upload_path="/assets/upload/";
		
		File dir = new File(root_path + upload_path);
		if(dir.exists()){
			out.print(dir.getAbsolutePath());
		}else {
			dir.mkdirs();
			out.print("파일이 생성되었습니다.");
			
		}
		
		FileWriter filew = new FileWriter(root_path + upload_path + email + ".txt");
		String txt = "1234";
		filew.write(password);
		filew.close();
		
		
		
		
		
		}
	out.print(gender + "<br/>");
/* }catch(Exception e){
	e.printStackTrace(new java.io.PrintWriter(out)); */
//}
%>
<%@ include file="Footer.jsp"%>
