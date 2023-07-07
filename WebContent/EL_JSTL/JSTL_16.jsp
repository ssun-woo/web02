<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>JSTL 코어 태그 예제 : c:if, c:choose</h2>

<c:set var="nara" value="${'korea' }" />


<c:if test="${nara != null }">
국가명 : <c:out value="${nara } " />
</c:if>

<hr>

<c:if test="${!empty nara }">
국가명 : ${nara } 
</c:if>
<hr>

<c:choose>
	<c:when test="${nara == 'korea' }">
		<c:out value="${nara}" /> 겨울은 춥다
	</c:when>
	
	<c:when test="${nara == 'canada' }">
		${nara }의 겨울은 춥다
	</c:when>
	
	<c:otherwise>그외의 나라들의 겨울은 알 수가 없다</c:otherwise>
</c:choose>
<hr>
