<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- images 폴더 생성 후  여름바다 이미지 하나 다운받아서 저장 --%>
<c:url var = "title_img" value="../images/summer_sea.jpeg"/>

<h2><c:out value="${title_img}" /></h2>
<img src="<c:out value="${title_img}" />" width="300" height="250" alt="여름바다">