<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "Header.jsp" %>
<div class = "container">
<form name = "form" action ="Forminput_ok.jsp" method = "get">
	<div class = "form-input">
		<label class = "field" for ="name">이름</label>
		<input type = "text" id = "name" class ="form-control">
	</div>
	<div class = "form-input">
		<label class = "field" for="email">이메일</label>
		<input type ="email" id="email" name = "email" class = "form-control">
	</div>
	<div class = "form-input">
		<label class = "field" for="password">비밀번호</label>
		<input type ="password" id="password" name = "password" class = "form-control">
	</div>
	<div class = "form-input">
		<label class = "field" for="content">내용</label>
		<textarea id="content" name = "content" rows="5" cols="50" maxlength="200" >
		</textarea>
	</div>
	<div class ="form-input">
		<label class="field">선호 언어</label>
		<input type="checkbox" name = "favorite" class ="form-control" value ="1">java
		<input type="checkbox" name = "favorite" class ="form-control" value ="2">c++
		<input type="checkbox" name = "favorite" class ="form-control" value ="3">Python
		<input type="checkbox" name = "favorite" class ="form-control" value ="4">Php
	</div>
	<div  class ="form-input">
		<label class="field">성별</label>
		<input type="radio" name = "gender" class ="form-control" value ="M">남
		<input type="radio" name = "gender" class ="form-control" value ="W">여
		
	</div>
	<div class = "buttons">
		<button class= "button">확인</button>
	</div>
</form>
</div>

<%@ include file = "Footer.jsp" %>