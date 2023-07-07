<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="http://localhost:8026/web02/EL_JSTL/name.jsp" var="result" />
<%-- 외부 자원 url의 출력 결과물을 result 변수에 저장 --%>
${result}