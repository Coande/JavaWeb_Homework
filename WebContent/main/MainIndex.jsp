<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Coande管理系统</title>
    <meta charset="utf-8">
    <link href="<%=request.getContextPath() %>/css/normalize.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/font-awesome.min.css">
    <script>
        var flag = true;

        function toggle_sidebar() {
            if (flag) {
                document.getElementById("logo").style.display = "none";
                document.getElementById("sidebar").style.display = "none";
                flag = false;
            } else {
                document.getElementById("logo").style.display = "inline-block";
                document.getElementById("sidebar").style.display = "inline-block";
                flag = true;
            }
        }
        
        window.onload=function(){
            var x=window.screen.availHeight-185; 
            document.getElementById("main").style.height=x+"px";
        }
    </script>

    <style>
        /*        header部分开始*/
        
        * {
            font-family: 'Open Sans', sans-serif;
            color: white;
        }
        
        a {
            text-decoration: none;
        }
        
        .header {
            height: 45px;
            /*            overflow: hidden;*/
            background: #34495e;
            box-sizing: border-box;
            line-height: 45px;
        }
        
        .bar {
            font-size: 25px;
            line-height: 45px;
            margin-left: 10px;
            cursor: pointer;
        }
        
        h1,
        .logo {
            padding: 0px;
            margin: 0px;
            width: 20%;
            display: inline-block;
            background: #3498db;
            text-align: center;
            line-height: 45px;
        }
        
        .avatar {
            cursor: pointer;
            position: absolute;
            right: 20px;
            height: 40px;
            padding-top: 1px;
            width: auto;
        }
        /*        header部分结束*/
        /*        footer开始*/
        
        .footer {
            background: #34495e;
            color: #eee;
            text-align: center;
            line-height: 40px;
        }
        /*        footer结束*/
        
        .head {
            width: 100%;
            height: 45px;
        }
        
        .header {
            display: flex;
        }
        
        .main {
			min-width:1200px;
        }
        #sidebar{

        }
        
        #content {
            position: relative;
            flex: auto;
        }
        
        .footer {
            width: 100%;
            height: 45px;
        }
        
    </style>
</head>

<body>
    <div class="header">
        <div class="logo" id="logo">
            <h1>
            <a href="http://i.e12e.com">Coande</a>
            </h1>
        </div>
        <i class="fa fa-bars bar" onclick="toggle_sidebar();"></i>
        &nbsp;&nbsp;
        <span>
        	欢迎，<%=session.getAttribute("username") %>&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/Servlet/LogoutAction"><b>登出</b></a>
        
        </span>
        
         <img src="<%=request.getContextPath() %>/images/avatar.png" class="avatar">
    </div>


    <div class="main" id="main">
        <iframe src="<%=request.getContextPath() %>/main/Sidebar.jsp" frameborder="0" scrolling="auto" id="sidebar" float="left"  height="100%" width="20%"></iframe>
        <iframe src="<%=request.getContextPath() %>/content/Welcome.jsp" name="content" id="content" frameborder="0" scrolling="auto"  float="left" height="100%" width="79%"></iframe>
    </div>
    <div class="footer">
        &copy; Coande&nbsp;&nbsp;请使用Chrome内核浏览器浏览本页
    </div>

</body>

</html>