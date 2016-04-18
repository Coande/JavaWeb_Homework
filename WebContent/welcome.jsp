<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><b><%=session.getAttribute("username") %></b>,欢迎你使用该系统。</p>
<hr>
<%!
	int total;
%>
<%
	total=(Integer)(application.getAttribute("total"));
	total++;
	application.setAttribute("total", total);
%>
服务器运行至今，这是第<font size="25" color="red"><%=total %></font>次访问该页面。<br>
</body>
</html>