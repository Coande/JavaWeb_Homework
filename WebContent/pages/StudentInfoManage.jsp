<%@page import="com.e12e.bean.StudentInfo2"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
* {
	text-align: center;
	font-family: "MicroSoft Yahei";
	color: #555;
}

table {
	border: 1px solid #eee;
	margin: 15px auto;
	width: 600px;
}

table thead {
	background: #bbb;
}

table tbody tr td {
	border-top: 1px solid #ccc;
}

.hidden {
	display: none;
}
</style>

<script type="text/javascript">
	function modify(obj) {

		var tr = obj.parentNode.parentNode.parentNode;
		var shows = tr.getElementsByClassName("show");
		var hiddens = tr.getElementsByClassName("hidden");
		for ( var i in shows) {
			shows[i].className = "hidden";
		}
		for ( var j in hiddens) {
			hiddens[j].className = "show";
		}
	}

	function del() {

	}

	function save() {

	}

	function cancel() {

	}
</script>
</head>
<body>

	<caption>学生信息管理系统</caption>
	<table>
		<thead>
			<tr>
				<th>姓名</th>
				<th>年龄</th>
				<th>性别</th>
				<th>民族</th>
				<th>出生地</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<%
				ArrayList<StudentInfo2> studentList = (ArrayList<StudentInfo2>) application.getAttribute("studentList");
				for (StudentInfo2 stu : studentList) {
			%>

			<input type="hidden" value="<%=stu.getId()%>" name="id">
			<tr>
				<td><%=stu.getName()%><input name="name" type="text"
					value="<%=stu.getName()%>"></td>
				<td><%=stu.getAge()%><input name="age" type="text"
					value="<%=stu.getAge()%>"></td>
				<td><%=stu.getSex()%><input name="sex" type="text"
					value="<%=stu.getSex()%>"></td>
				<td><%=stu.getMinzu()%><input name="Minzu" type="text"
					value="<%=stu.getMinzu()%>"></td>
				<td><%=stu.getBornPlace()%><input name="bornPlace" type="text"
					value="<%=stu.getBornPlace()%>"></td>
				<td><input type="button" onclick="modify(this)" value="修改"><input
					type="submit" onclick="del(this);" value="删除" name="type">



					<input type="submit" onclick="save(this);" value="保存" name="type"><input
					type="button" onclick="cancel(this);" value="取消"></td>

			</tr>
			
			
			<%
				}
			%>
		</tbody>
	</table>
</body>
</html>