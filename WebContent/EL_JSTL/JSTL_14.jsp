<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="price" value="10000" />
통화형 : <fmt:formatNumber value="${price }" type="currency" currencySymbol="\\" />
<%-- fmt:formatNumber는 숫자 형식에 맞춰서 출력됨 , currency는 통화형식, currencySymbol은 통화형식일때 표현하는 기호 --%>
<hr>

<c:set var="now" value="<%=new java.util.Date() %>" />
<fmt:formatDate value= "${now}" type="date" dateStyle="full" />
<%-- fmt:formatDate는 날짜 정보를 담고 있다. date 날짜를 풀 스타일로 표현--%>

<hr>
<fmt:formatDate value="${now}" type="time" />
<%-- time은 시간형태로 표현 --%>
