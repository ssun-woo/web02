<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<h3>EL(Expression Language : 표현언어 => 외부 라이브러리가 필요 없다)</h3>
	[1] 정수형 : ${10}<br>	<%-- ${출력할 값}형태로 출력한다 --%>
	[2] 실수형 : ${10.3}<br>
	[3] 문자열 형 : ${"이순신"}<br>
	[4] 논리형 : ${true}<br>
	[5] null : ${null}<hr>
	
	<%
		String input = null;
	%>
	
	<h3>표현언어 연산자</h3>
	\${10+10} = ${10+10}<br>
	\${5/2} = ${5/2}<br>
	\${5 div 2} = ${5 div 2}<br>	<%-- div는 표현식에서 나눗샘을 의미한다 --%>
	\${5 mod 2} = ${5 mod 2}<br>	<%-- mod는 나머지 연산 --%>
	\${2 gt 10} = ${2 gt 10}<br>	<%-- gt는 ~보다 크다 --%>
	\${empty input} = ${empty input}<hr>