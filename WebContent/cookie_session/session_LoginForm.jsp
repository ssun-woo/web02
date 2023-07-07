<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 로그인 폼</title>
<script src="../js/jquery.js"></script>
<script>

	function loginCheck(){
		if($.trim($("#login_id").val()) == ""){
			alert("아이디를 입력하세요");
			$("#login_id").val("").focus();
			return false;
		}
		
		$login_pwd = $.trim($("#login_pwd").val());
		if($login_pwd.length == 0){
			alert('비밀번호를 입력하세요');
			$("#login_pwd").val("").focus();
			return false;
		}	
	}
	
</script>
</head>
<body>
	<form method="post" action="session_Login_ok.jsp" onsubmit="return loginCheck();">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="login_id" id="login_id" tabindex="1"></td>
				<th rowspan="2">
					<input type="submit" value="로그인">
				</th>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="login_pwd" id="login_pwd" tabindex="2"></td>
			</tr>
		
		</table>
	
	
	</form>

</body>
</html>



























