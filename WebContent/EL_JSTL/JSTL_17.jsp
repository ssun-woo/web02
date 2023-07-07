<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="UTF-8" /> <%-- post방식으로 전달되는 한글을 안깨지게 한다 --%>

<h3>JSTL 태그 예제</h3>
파라미터 name 값 : <c:out value="${param.name }" />

<form method="post" action="JSTL_17.jsp">
	<label for="name">이름</label>
	<input type="text" name="name" id="name" size="14">
	<%-- label for속성명 'name'과 input 입력박스 id속성명 'name'이 같으면 label사이 글자 클릭시 input 박스 안으로 커서가 이동한다 --%>

</form>