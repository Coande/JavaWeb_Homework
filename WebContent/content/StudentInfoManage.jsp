<%@page import="com.e12e.bean.*"%>
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
}

table thead {
	background: #bbb;
}

table tbody tr td {
	border-top: 1px solid #ccc;
}
td{
	width: 150px;
}
</style>

<script type="text/javascript">
	var lastModifyLineId=-1;

	function modifyLine(id) {
		if(lastModifyLineId!=-1){
			changeDisplay("hide", lastModifyLineId, "none");
			changeDisplay("show", lastModifyLineId, "block");
			changeDisplay("hide", id, "block");
			changeDisplay("show", id, "none");
			lastModifyLineId=id;
		}else{
			lastModifyLineId=id;
			changeDisplay("show",id,"none");
			changeDisplay("hide",id,"");
		}
	}
	
	function cancelLine(id){
		lastModifyLineId=-1;
		changeDisplay("hide", id, "none");
		changeDisplay("show", id, "block");
	}
	

	
	function saveLine(id){
		var isSave=confirm("你确定保存吗？");
		if(isSave){
			document.getElementById("opType").value="save";
			document.getElementById("stuId").value=id;
			document.getElementById("form").submit();
		}
	}
	
	function deleteLine(id){
		var isDelete=confirm("你确定删除吗？");
		if(isDelete){
			document.getElementById("opType").value="delete";
			document.getElementById("stuId").value=id;
			document.getElementById("form").submit();
		}
	}
	
	
	
	function changeDisplay(type,id,isDisplay){
		document.getElementById(type+"_name_"+id).style.display=isDisplay;
		document.getElementById(type+"_age_"+id).style.display=isDisplay;
		document.getElementById(type+"_sex_"+id).style.display=isDisplay;
		document.getElementById(type+"_Minzu_"+id).style.display=isDisplay;
		document.getElementById(type+"_bornPlace_"+id).style.display=isDisplay;
		document.getElementById(type+"_modify_"+id).style.display=isDisplay;
	}
</script>
</head>
<body>

	<caption>学生信息管理系统</caption>
	
	<form id="form" method="post" action="<%=request.getContextPath() %>/Servlet/StudentInfoManage">
	<input type="hidden" id="stuId" name="id" />
	<input type="hidden" id="opType" name="type" />
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
				ArrayList<Student> students = (ArrayList<Student>) application.getAttribute("students");
				for (Student stu : students) {
			%>
			<tr>
			
			<td><div id="show_name_<%=stu.getId() %>"><%=stu.getName() %></div>  <div id="hide_name_<%=stu.getId() %>"  style="display:none;"><input type="text" name="name_<%=stu.getId() %>" value="<%=stu.getName() %>" /></div></td>
			<td><div id="show_age_<%=stu.getId() %>"><%=stu.getAge() %></div>    <div id="hide_age_<%=stu.getId() %>"  style="display:none;"><input type="text" name="age_<%=stu.getId() %>" value="<%=stu.getAge() %>" /></div></td>
			<td><div id="show_sex_<%=stu.getId() %>"><%=stu.getSex() %></div>   <div id="hide_sex_<%=stu.getId() %>"   style="display:none;"><input type="text" name="sex_<%=stu.getId() %>" value="<%=stu.getSex() %>"/></div></td>
			<td><div id="show_Minzu_<%=stu.getId() %>"><%=stu.getMinzu() %></div>   <div id="hide_Minzu_<%=stu.getId() %>"   style="display:none;"><input type="text" name="Minzu_<%=stu.getId() %>" value="<%=stu.getMinzu() %>"/></div></td>
			<td><div id="show_bornPlace_<%=stu.getId() %>"><%=stu.getBornPlace() %></div>   <div id="hide_bornPlace_<%=stu.getId() %>"   style="display:none;"><input type="text" name="bornPlace_<%=stu.getId() %>" value="<%=stu.getBornPlace() %>" /></div></td>
			
			<td><div id="show_modify_<%=stu.getId() %>"><input type="button" value="修改" onclick="modifyLine(<%=stu.getId() %>);"/><input type="button" onclick="deleteLine(<%=stu.getId() %>);" value="删除" /></div>
			<div id="hide_modify_<%=stu.getId() %>" style="display:none;"><input type="button" value="保存" onclick="saveLine(<%=stu.getId() %>);" /><input type="button" onclick="cancelLine(<%=stu.getId() %>);" value="取消" /></div></td>
			
			</tr>
			
			<%
				}
			%>
		</tbody>
	</table>
	</form>
</body>
</html>