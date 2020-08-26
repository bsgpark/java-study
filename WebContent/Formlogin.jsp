<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file ="Header.jsp" %>
 <div class = "container">
 	<form name = "input" action = "Formlogin_ok.jsp" method ="get">
 		<div class = "form-input">
		<label class = "field" for="email">이메일</label>
		<input type ="email" id="email" name = "email" class = "form-control">
	</div>
	<div class = "form-input">
		<label class = "field" for="password">비밀번호</label>
		<input type ="password" id="password" name = "password" class = "form-control">
	</div>
	<div class = "buttons">
		<button class= "button">확인</button>
	</div>
 	</form>
 </div>
  <%@ include file ="Footer.jsp" %>
 