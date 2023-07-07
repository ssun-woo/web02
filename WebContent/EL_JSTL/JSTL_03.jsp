<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="msg" value="${'안녕하세요'}" />	<%-- JSTL 변수 msg 선언 --%>

<c:set var="age" scope="page" >	<%-- scope 속성은 jstl 변수가 적용될 범위를 지정한다. 기본값은 page이다 --%>
	${30}
</c:set>

<c:out value="${msg }" />	<%-- jstl 문으로 msg 변수값 출력 --%>
<br>
나이 : ${age}
<br>

<c:remove var="age" scope="page" />	<%-- age 변수 제거 --%>
나이 : <c:out value="${age }" />

<hr>


<c:catch var="errorMsg">	<%-- c:catch 문은 JSTL 예외 처리문 --%>
	예외 발생 전
	
	<%= 10/0 %>			<%-- 정수 숫자를 0으로 나누면 예외가 발생 --%>
	
	예외 발생 후
</c:catch>
 :<c:out value="${errorMsg }" />