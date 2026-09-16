<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gender = request.getParameter("gender");

	// 아이디/암호가 틀리면 실패 페이지로 이동
	if (!"admin".equals(id) || !"1234".equals(pw)) {
		response.sendRedirect("loginFail.jsp");
		return;
	}

	session.setAttribute("id", id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%@ include file="top.jsp" %>

	<h1>로그인 성공</h1>
	아이디 : <%= id %><br>
	성별 : <%= gender == null ? "선택 안 함" : gender %><br>
	<a href="index.jsp">메인으로</a>
</body>
</html>