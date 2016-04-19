<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<style>
	#nomatch{
		color:red;
		visibility: hidden;
	}
</style>
<script>
var nomatch;
function checkInfo(){
	var password_new1=document.getElementById("password_new1").value;
	var password_new2=document.getElementById("password_new2").value;
	nomatch=document.getElementById("nomatch");
	if(password_new1==password_new2){
		nomatch.style.visibility="hidden";
		return true;
	}else{

		nomatch.style.visibility="visible";
		return false;
	}
}

</script>
</head>
<body>
<form action="<%=request.getContextPath() %>/Servlet/PasswordModify" method="post">
	<table>
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="username" /></td>
		</tr>
		<tr>
			<td>旧密码：</td>
			<td><input type="password" name="password_old" /></td>
		</tr>
		<tr>
			<td>新密码：</td>
			<td><input type="password" id="password_new1" name="password_new" /></td>
		</tr>
		<tr>
			<td>确认新密码：</td>
			<td><input type="password" id="password_new2"  onblur="checkInfo();"/><span id="nomatch">两次输入的密码不一致！</span></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="修改" onclick="return checkInfo();" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>