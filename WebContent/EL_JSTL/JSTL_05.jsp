<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="score" value="<%= new int[]{90, 100, 80, 85, 95, 75} %>" />
<%-- score 변수에는 int배열이 들어감 --%>

<c:set var="total" value="${0}" />	<%-- JSTL 변수 total 선언하고 0으로 초기화 --%>

** 점수 출력 **<br>
<c:forEach var="s" items="${score}" begin="0" end="5" step="1">
									<%-- begin, end, step은 생략 가능 --%>
	<%-- begin 속성은 시작, end 속성은 끝, step속성은 증가값 --%>
	${s}&nbsp;	<%-- &nbsp;은 한칸의 빈 공백 처리 --%>
	<c:set var="total" value="${total+s }" />	<%-- 배열원소 누적합 --%>
</c:forEach>
<hr>

배열원소 점수의 총 합  = <c:out value="${total }" />
<hr>

<%-- 
	문제) JSTL c:forEach문 등을 활용해서 1부터 10까지의 자연수 중에서 짝수값을 출력하고 짝수들의 누적합을 구해서 출력
 --%>
 
<c:set var="num" value="<%= new int[]{1,2,3,4,5,6,7,8,9,10} %>" />
<c:set var="sum" value="${0 }" />

<c:forEach var="n" items="${num}">
	<c:if test="${n%2 == 0}">
		${n}&nbsp;
		<c:set var="sum" value="${sum+n }" />
	</c:if>
</c:forEach>
<br>
짝수의 합 : <c:out value="${sum }" />

<hr>

*짝수 출력*<br>
<c:forEach var="i" begin="2" end="10" step="2">
	${i}&nbsp;&nbsp;
	<c:set var="sum2" value="${sum+i }" />
</c:forEach>
<br>
짝수 누적 합 : ${sum}
<hr>





`























