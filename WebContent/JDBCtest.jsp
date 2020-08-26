<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file ="JDBCConnector.jsp" %>
      <%    
    	try{
    	if(conn==null){
    					out.print("데이터베이스에 연결할 수 없습니다.<br/>");
    	} else{
    		out.print("데이터베이스에 연결되었습니다.<br/>");
    		
    		state = conn.prepareStatement("select * from member where idx >? AND email like ?  ");
    		state.setInt(1,2); //1첫번째 파라미터에 2를 넣는다.
    		state.setString(2, "%f%");
    		rs = state.executeQuery();
    		
    		while(rs.next()){
    			out.print("번호 :" + rs.getInt("idx") + "&nbsp;&nbsp;&nbsp;&nbsp;");
    			out.print("이름 :" + rs.getString("name") + "&nbsp;&nbsp;&nbsp;&nbsp;");
    			out.print("이메일:" + rs.getString("email") + "<br/>");
    		}
    	}
    }finally{
    }
    %>
    
  
