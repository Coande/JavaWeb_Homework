<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息查询系统</title>
<style type="text/css">
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
<script type="text/javascript">
	function check() {
		var studentName=document.getElementById("studentName").value
		if(studentName==""){
			alert("请输入学生姓名！");
			return false;
		}else{
			return true;
		}
	}
	
	window.onload=function(){
		var info=getInfo();
		if(info){
			var tr=document.createElement("tr");
			var td1=document.createElement("td")
			td1.innerHTML=decodeURI(info["studentName"]);
			var td2=document.createElement("td");
			td2.innerHTML=info["studentAge"];
			var td3=document.createElement("td");
			td3.innerHTML=decodeURI(info["studentClass"]);
			
			tr.appendChild(td1);
			tr.appendChild(td2);
			tr.appendChild(td3);
			
			document.getElementsByTagName("tbody")[0].appendChild(tr);
		}

	}
	
	function getInfo(){
		var queryString = window.location.search;
		
		var info=new Object();
		//带有参数才截取
		if(queryString.indexOf("?")!=-1){
			var queryString2=queryString.substr(1);
			var queryStringArr=queryString2.split("&");
			for(var x in queryStringArr){
				//alert(queryStringArr[x].split("=")[1]);
				if(!(queryStringArr[x].split("=")[1])){
					alert("查询无结果");
					return null;
				}
				info[queryStringArr[x].split("=")[0]]=queryStringArr[x].split("=")[1];
			}
			return info;
		}
		return null;
	}
</script>
</head>
<body>
<h1>学生信息查询系统</h1>
<form action="<%=request.getContextPath() %>/Servlet/StudentInfoSearch" method="post">
	姓名：<input type="text" placeholder="请输入姓名" id="studentName" name="studentName"><input onclick="return check();" type="submit" value="查询">
</form>
<table>
<thead><tr><th>姓名</th><th>年龄</th><th>班级</th></tr>
	</thead>
	<tbody>
	<!--<tr><td>张三</td><td>20</td><td>51</td></tr>  -->	
	</tbody>
</table>
</body>
</html>