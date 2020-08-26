<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% Random r = new Random(); int i = r.nextInt(1000000); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./assets/css/style.css?ver=<%=i%>" rel="stylesheet" type="text/css">
</head>
<body>
	<div class = "container">
		<div class = "menu">
		<div>회원가입</div>
		<div>로그인</div>
	</div>
	</div>
