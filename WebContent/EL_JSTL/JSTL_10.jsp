<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--데이터 베이스 연동을 하기 위해서 jstl sql 태그립 추가 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL SQL 사용</title>
</head>
<body>
	<sql:setDataSource var="con" driver="oracle.jdbc.driver.OracleDriver"
								 url = "jdbc:oracle:thin:@127.0.0.1:1521:xe"
								 user="java" password="1234"/>
	<%-- 오라클 연결 con --%>
	

<sql:update dataSource="${con }">	
	insert into test values(1, '홍길동')	<%-- ;은 생략가능 --%>
</sql:update>	<%-- sql:update JSTL은 insert, delete, update 문 수행할 때 사용  --%>
	
<sql:update dataSource="${con }">
	insert into test values(2, '이순신')
</sql:update>	

<sql:query var="rs" dataSource="${con }">
	select * from test
</sql:query> <%-- sql:query JSTL은 select 검색문 수행할 때 사용, 검색 결과 레코드는 rs에 저장 --%>

<c:forEach var="data" items="${rs.rows}">
	${data['num']} <%-- EL의 브라켓 연산자인 []를 사용해서 해당 컬럼으로부터 레코드를 가져온다 --%>
	${data['name']} <hr>
</c:forEach>
<%-- 새로 고침할때마다 데이터가 입력되니 조심할 것 --%>
</body>
</html>