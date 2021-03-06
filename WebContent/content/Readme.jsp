<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>说明文档</title>
<style>
	*{
		text-align: center;
		font-family:"MicroSoft Yahei";
		color:#555;
	}
	table{
	border:1px solid #eee;
		margin:15px auto;
		width: 600px;
	}
	
	table thead{
		background:#bbb;
	}
	table tbody tr td{
		border-top: 1px solid #ccc;
	}
</style>
</head>
<body>

	<caption>说明文档</caption>
	<table>
		<thead>
			<tr>
				<th>文件</th>
				<th>说明</th>
				<th>路径</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>login.html</td>
				<td>系统登录页面</td>
				<td>/login.html</td>
			</tr>
			<tr>
				<td>iframeIndex.jsp</td>
				<td>系统后台页面</td>
				<td>/iframeIndex.jsp</td>
			</tr>
			<tr>
				<td>searchinfo.html</td>
				<td>学生信息查询页面</td>
				<td>/searchinfo.html</td>
			</tr>
			<tr>
				<td>modify_password.jsp</td>
				<td>修改密码页面</td>
				<td>/modify_password.jsp</td>
			</tr>
			<tr>
				<td>DoLogin</td>
				<td>登录验证Servlet</td>
				<td>com.e12e.servlet.DoLogin</td>
			</tr>
			<tr>
				<td>doLogout</td>
				<td>退出登录Servlet</td>
				<td>com.e12e.servlet.DoLogout</td>
			</tr>
			<tr>
				<td>ModifyPassword</td>
				<td>修改密码Servlet</td>
				<td>com.e12e.servlet.ModifyPassword</td>
			</tr>
		</tbody>
	</table>

</body>
</html>