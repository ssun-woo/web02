<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul>
	<c:choose>	<%-- jstl 다중 조건문 형태 --%>
		<c:when test="${param.name == 'lee' }">	<%-- 표현언어 EL에서 '같다'연산은 'eq' or '=='를 사용한다 --%>
			<li>당신의 이름은 <strong style="font-size: 34px">${param.name }</strong>입니다
		</c:when>
		<c:otherwise>
			해당 사항 없음
		</c:otherwise>
	</c:choose>

</ul>