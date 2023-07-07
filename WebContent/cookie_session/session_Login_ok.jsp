<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("login_id");
	String pwd = request.getParameter("login_pwd");
	
	if(id.equals(pwd)){
		session.setAttribute("id", id);	//세션 id 속성 키이름에 아이디값 저장

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>로그인에 성공했습니다</h3>
	아이디 : <%=session.getAttribute("id") %>

</body>
</html>

<% }else{
		out.println("<script>");
		out.println("alert('로그인에 실패 했습니다');");
		out.println("history.back();");
		out.println("</script>");
	}%>