<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="../js/jquery.js"></script>
<script>
	function login_check(){
		if($.trim($("#login_id").val()) == ""){
			alert('아이디를 입력하세요');
			$("#login_id").val("").focus();
			return false;
		}
		if($.trim($("#login_pwd").val()) == ""){
			alert('비밀번호를 입력하세요');
			$("#login_pwd").val("").focus();
			return false;
		}
	}
</script>
</head>
<body>
<h2>쿠기 로그인 폼</h2>
<form method="post" action="cookie_LoginOk.jsp" onsubmit="return login_check();">
	아이디 : <input type="text" name="login_id" id="login_id" size="14" tabindex="1"><br>
	<%-- tabindex="1"속성을 지정하면 탭키를 눌렀을 때 첫번째로 포커스를 가진다 --%>
	비밀번호 : <input type="password" name="login_pwd" id="login_pwd" size="14" tabindex="2"><br>
	<input type="submit" value="로그인">
</form>

</body>
</html>