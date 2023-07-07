<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");	// post로 전달되는 한글을 안깨지게 한다
%>
<form method="post" action="EL_04.jsp">
	<label for="name">이름</label>	<%-- label for 이름인 name과 입력 필드 id속성명 name이 같으면 클릭시 같은곳으로 이동 --%>
	<input type="text" name="name" id="name" value="${param.name }">
	<input type="submit" value="전송">
	<hr>
	입력하신 이름은 <strong>${param.name }</strong>입니다
</form>