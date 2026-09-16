<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%@ include file="top.jsp" %>

<% 
	String lo = (String) application.getAttribute("login.jsp")
	if(lo==null){
		//로그인 안함
	
%>
	<h1>로그인</h1>

	<form action="loginOk.jsp" method="post">
		아이디 : <input type="text" name="id"><br>
		암호 : <input type="password" name="pw"><br>
		<input type="submit" value="제출">
		<input type="reset" value="초기화"><br>
		성별 :
		<input type="radio" name="gender" value="남">남
		<input type="radio" name="gender" value="여">여
	</form>
<%
	}else {
		//성공
%>
	<h1> 님, 환영합니다.
		<form action="" method="">
			<input type="submit" value="로그아웃">
		</form>
	</h1>
<%
	}
%>

</body>
</html>