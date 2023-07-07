<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- JSTL 코어 태그립 추가 --%>

<h2>기존의 JSP 유즈빈 액션태그, 스크립트 요소인 스크립트 릿과 표현식 그리고 EL, JSTL의 차이점</h2>
<jsp:useBean id="user" class="com.naver.vo.UserVO" />
<jsp:setProperty property="firstName" name="user" value="홍" />
<jsp:setProperty property="firstName" name="user" value="홍" />
<jsp:setProperty property="lastName" name="user" value="길동" />


<form>
	성 : 
	<% if(user.getFirstName() != null){ %>
		<input type="text" name="firstName" size="5" value="<%=user.getFirstName()%>">
	<%} %>
	<% if(user.getLastName() != null){ %>
		<input type="text" name="lastName" size="10" value="<%=user.getLastName() %>">
	<%} %>
</form>

<hr>

<form>

성 : 
	<c:if test="${!empty user.firstName}">	<%-- JSTL c:if 조건문 --%>
		${user.firstName}
	</c:if>
	
	<c:if test="${!empty user.lastName }">
		${user.lastName }
	</c:if>

</form>