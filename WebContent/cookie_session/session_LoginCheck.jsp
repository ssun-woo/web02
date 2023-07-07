<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");	// 세션 아이디 값을 Object 타입으로 구해서 명시적인 다운 캐스팅해서 변수에 저장
	boolean result = (id == null)? false : true;	// 3항 연산자
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h2>로그인 여부 검사</h2>
<%
	if(result){
		out.println("아이디 " + id + "로 로그인 된 상태");
	}else{
		out.println("로그인 하지 않은 상태");
	}
%>

</body>
</html>