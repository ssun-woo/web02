<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String[] cityName = {"서울시","부산시","인천시"};
	request.setAttribute("nameList", cityName);	// nameList문자열 속성이름에 Object 타입으로 업캐스팅한 cityName 저장
%>

<c:forTokens var="cityName" items="서울시,부산시,인천시" delims=",">	<%-- ',' 구분자를 기준으로 문자를 분리  --%>
	<c:out value="${cityName}" /><br>
</c:forTokens>
<%-- 여기서는 request에 저장된 값을 가져 올 수 없다 --%>

<hr>


<c:forEach var="name" items="${nameList }">
	<c:out value="${name }" /><br>
</c:forEach>
<%-- 여기서는 request에 저장된 값을 가져 올 수 있다 --%>