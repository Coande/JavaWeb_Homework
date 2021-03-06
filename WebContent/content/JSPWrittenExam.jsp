<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 
	peter 2016.04.11
	WEB基础--JSP笔试题
 -->
<head>
<meta charset="UTF-8">
<title>JSP笔试题(40分)</title>
<style type="text/css">
 /*设置整体样式:内外填充距为0 */
*{margin:0;padding:0;}
/*通过ID选择器设置:外部容器层的样式*/
#outDiv{
height:100%;
padding-top:120px;
}
.body{
	padding-top:120px;
	padding-left:400px;
}
/*通过ID选择器设置:主体层的样式*/
 #mainDiv1 #mainDiv2 #mainDiv{  
  width:700px;
  height:400px;
 
  position:relative;  /*相对定位*/
  border:1px solid #EEEeee; /*层的边框样式*/

 }
 /*通过ID选择器设置:标题层的样式*/
 #titleDiv{
 	width:100%;
 	height:60px;
 	cursor:move;/*鼠标十字标*/ 	
  	overflow:hidden;
 }
 #userNameDiv{
	 width:100px;
	 height:25px;
	 position:relative;  /*相对定位*/
	 margin-top:82px;
	 margin-left:292px;
 }
 #passwordDiv{
	 width:100px;
	 height:25px;
	 position:relative;  /*相对定位*/
	 margin-top:15px;
	 margin-left:292px;
	 text-align:center; 
 }
 #btnDiv{
 	 width:100%;
	 height:25px;
	 position:relative;  /*相对定位*/
	 margin-top:15px;
 }
 #btnSubmitDiv{
 	float:left;
 	 width:75px;
 	 height:23px;
	 margin-left:290px;
	 cursor:pointer;
 }
 #btnCancelDiv{
 	 float:left;
 	 width:75px;
 	 height:23px;
 	 cursor:pointer;
 }
  #spanDiv{
 	float:left;
 	width:15px;
 	height:23px;
 }
 .inputTxt{
 	width:160px;
 	height:20px;
 	border:0px;
 }
 #myTable  {
		width:100%;	
		text-align:center;
		border-right:1px solid #000000;
		border-bottom:1px solid #000000
	}
	#myTable td,th{
		text-align:center;
		width:100px;
		height:22px;
		border-left:1px solid #000000;
		border-top:1px solid #000000
	}
	#myTable th{
		background:#EEEEEE;
	}
 </style>
 
<script type='text/javascript' src='newTable.js'></script>
</head>
<body>
<!-- 总体登录布局层: 2 start-->
<div id="mainDiv" class="box" style="top:60px;left:200px;">
<br>
	<div style="width:100%;text-align: center;margin-top:10px; height:10%;">
	<h3>JSP笔试试题</h3><h2>答题人：<span id="userName" style="color:blue;">黎光宏</span></h2>
	</div>
	<br>
	<div>
	<h2>单选题</h2>
	<table id="myTable"  cellspacing="0" >
		<tr>
			<th style="width:10%">编号</th>
			<th style="width:75%">题目</th>
			<th style="width:10%">选项</th>
		</tr>
		<tr>
			<td id="name"><h3>单选：1[5分]</h3></td>
			<td id="age" style="text-align:left;padding-left:20px;">
			<h4> 在“&lt;%=”和“%\>”标记之间放置（），可以直接输出其值。       </h4>
						 <h4>   A） 变量     </h4><br>
						 <h4> B）Java表达式 </h4><br>
						 <h4>  C）字符串 </h4><br>
						  <h4>  D）数字  <br>
		</td>
			<td id="answer1" style="color:red;">B</td>
		</tr>
		<tr>
			<td id="name"><h3>单选：2[5分]</h3></td>
			<td id="age" style="text-align:left;padding-left:20px;">
			<h4> 在WEB应用程序的目录结构中，在WEB-INF文件夹外的文件为（）。（只选一项）</h4>
						 <h4>  A..jsp文件    </h4><br>
						 <h4> B..class文件</h4><br>
						 <h4>  C..jar文件 </h4><br>
						  <h4>  D.web.xml文件  <br>
		</td>
			<td id="answer2" style="color:red;">B</td>
		</tr>
		<tr>
			<td id="name"><h3>单选：3[5分]</h3></td>
			<td id="age" style="text-align:left;padding-left:20px;"><h4> 给定一个 Servlet 的doGet方法中的代码片段，如下： </h4>
						 <h4>request.setAttribute(“name”,”zhang”);</h4>
						<h4> response.sendRedirect(“http://localhost:8080/servlet/MyServlt”);  </h4>
						  <h4>那么在 MyServlet 中可以使用（）方法把属性 name的值取出来。</h4><br>
						  <h4> a) String str=request.getAttribute(“name”);  </h4><br>
						 <h4>  b) String str=(String)request.getAttribute(“name”); </h4><br>
						 <h4>  c) Object str=request.getAttribute(“name”); </h4><br>
						  <h4> d) 无法取出来<br>
		</td>
			<td id="answer3" style="color:red;">B</td>
		</tr>
		<tr>
			<td id="name"><h3>单选：4[5分]</h3></td>
			<td id="age" style="text-align:left;padding-left:20px;"><h4> 以下（）可用于检索session属性userid的值。（只选一项）  </h4>
						 <h4>A.session. getAttribute (“userid”);  </h4><br>
						 <h4> B.session. setAttribute (“userid”); </h4><br>
						 <h4>  C.request. getParameter (“userid”); </h4><br>
						  <h4>  D.request. getAttribute (“userid”); <br>
		</td>
			<td id="answer4" style="color:red;">A</td>
		</tr>		
	</table><br><br>
	<h2>简答题</h2><br>
	<table id="myTable"  cellspacing="0" >
		<tr>
			<th style="width:35%">编号</th>
			<th style="width:60%">题目</th>
		</tr>
		<tr>
			<td id="name"><h3>问答题：1[10分]</h3></td>
			<td id="age" style="text-align:left;padding-left:20px;">
			<h3>简述Servlet与JSP生命周期以及异同？</h3><br><br><br>
			</td>
		</tr>
		<tr>
			<td colspan=2 style="text-align:left;padding-left:20px;"><h3><span id="answer5" style="color:red;">Servlet生命周期：编译，初始化，运行，销毁。JSP生命周期：预编译，编译，初始化，运行，销毁。jsp要先预编译生成Servlet形式的的.java文件然后再编译生成.class形式的字节码文件。Servlet比jsp的生命周期少一个预编译这个步骤。</span></h3><br><br><br></td>
		</tr>
		<tr>
			<td id="name"><h3>问答题：2[10分]</h3></td>
			<td id="age" style="text-align:left;padding-left:20px;">
			<h3>请列出JSP的声明标识(如<% %>;),以及JSP注释的</h3><br><br><br>
			</td>
		</tr>
		<tr>
			<td colspan=2 style="text-align:left;padding-left:20px;"><h3><span id="answer5" style="color:red;">声明标识：<code><%! %></code>。<br>JSP注释：<ul><li><code><%-- --%></code></li><li><code>//</code></li><li><code>/* */</code></li><li><code>/** **/</code></li></ul></span></h3><br><br><br></td>
		</tr>		
	</table><br><br><br><br><br><br><input type="button" value="检查" onclick="checkJS();"/>
	</div>
</div><!-- 总体登录布局层: 2 end-->
<!-- 外部容器层：1 end-->
</body>
</html>