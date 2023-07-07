<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>

<h2>1~100까지의 자연수 중에서 홀수들의 누적 합</h2>

<c:set var="sum" value="${0}" />
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="sum" value="${sum+i }" />
</c:forEach>

총 합 : <strong style="font-size:38px; color:red; font-family:궁서체; ">${sum}</strong>


<hr>

<h2>7단 구구단</h2>
<ul>
	<c:forEach var="a" begin="1" end="9" step="1">
		<li>7 x <c:out value="${a}" /> = ${7*a } </li>
	</c:forEach>
</ul>

<hr>

<%
	HashMap<String, Object> hm = new HashMap<>();
	// 키, 값 쌍으로 전달되는 사전적인 자료구조인 컬렉션 HashMap
	hm.put("name", "홍길동");	// 문자열 속성 키이름 name, 값으로 홍길동 저장
	hm.put("today", new Date());
%>
<h2>키, 값 쌍으로 출력</h2>
<c:set var="map" value="<%=hm%>" />
<c:forEach var="i" items="${map }">
	${i.key } : ${i.value }<br>
</c:forEach>

