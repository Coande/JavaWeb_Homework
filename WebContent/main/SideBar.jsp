<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="utf-8">
<style>
* {
	padding: 0px;
	margin: 0px;
	font-family: 'Open Sans', sans-serif;
	color: #999;
}

body {
	background: #34495e;
}

a {
	text-decoration: none;
}

ul {
	list-style: none;
}

ul li {
	background: #34495e;
	display: block;
	height: 35px;
	border-bottom: 1px solid #6C506E;
}

ul li a {
	display: block;
	line-height: 35px;
	padding-left: 15px;
}

.selected {
	background: #2c3e50;
}
</style>

<script>
	window.onload = function() {
		var lis = document.getElementsByTagName("li");
		for ( var i in lis) {
			lis[i].onclick = function() {
				resetClassName();
				this.className = "selected";
			}
		}
	}

    //清空类名
	function resetClassName() {
		var lis = document.getElementsByTagName("li");
		for ( var i in lis) {
			lis[i].className = "";
		}
	}
</script>
</head>

<body>
	<ul>
		<li class="selected"><a href="welcome.jsp" target="content">系统首页</a>
		</li>
		<li><a href="searchinfo.html" target="content">信息查询</a></li>
		<li><a href="modify_password.jsp" target="content">密码修改</a></li>
		<li><a href="jspwritten.html" target="content">JSP笔试</a></li>
		<li><a href="studentInfoManage.jsp" target="content">JSP机试</a></li>
		<li><a href="readme.jsp" target="content">说明文档</a></li>
	</ul>
</body>

</html>