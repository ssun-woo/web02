<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate(); // 세션 만료 (로그아웃)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>로그아웃 됐습니다</h3>
	<a href="session_LoginCheck.jsp">session_LoginCheck.jsp로 이동</a>

</body>
</html>