<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage ="true" %>
<%@ include file = "Header.jsp"%>
<div class = "container">

	<%
	out.print("에러메세지 : " + exception.getMessage() + "<br/>");
	%>
</div>
<%@ include file = "Footer.jsp"%>