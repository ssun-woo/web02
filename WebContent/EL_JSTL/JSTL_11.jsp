<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="true">
	무조건 실행<hr>
</c:if>

<c:if test="${param.name == 'hong' }">
	name 파라미터 값이 <strong style="font-size: 36px;">${param.name}</strong> 입니다
</c:if>
<hr>
<%-- *.jsp?name=hong&age=20 웹 주소창에 노출되는 get방식(쿼리스트링 방식)으로 &기호로 구분해서 name파라미터 이름에 'hong'을 담고, age 파라미터이름에 20을 담아서 각각 전달한다 --%>
<c:if test="${param.age >= 20 }">
	당신의 나이는 20세 이상입니다
</c:if>