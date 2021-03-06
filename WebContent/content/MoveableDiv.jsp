<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>登录</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/common.css" rel="stylesheet" type="text/css">
    <script src="js/loginCheck.js"></script>
    <style>
        #container {
            width: 360px;
            height: 250px;
            position: absolute;
            cursor: move;
        }
        body{
            background: #eee;
        }
    </style>


    <script>

        /*拖拽开始*/

        var login;
        var isDraging = false;
        var mouseX, mouseY, objX, objY;
        window.onload = function () {
            login = document.getElementById("container");
            login.addEventListener("mousedown", down);
            document.addEventListener("mouseup", up);
            login.addEventListener("mousemove", move);
            login.style.left="250px";
            login.style.top="200px";
        }

        function down(e) {

            isDraging = true;
            mouseX = e.clientX;
            mouseY = e.clientY;
            objX = parseInt(login.style.left);
            objY = parseInt(login.style.top);
        }

        function up() {
            isDraging = false;
        }

        function move(e) {
            
            if (isDraging) {
                login.style.left = e.clientX - mouseX + objX + "px";
                login.style.top = e.clientY - mouseY + objY + "px";
            }

        }


        /*拖拽结束*/
    </script>
</head>

<body>

    <div id="container">
        <h1>登录</h1>
        <form action="result.html" method="get">
            <input type="text" id="username" class="input_text" name="username" placeholder="用户名" onblur="checkUsername();">
            <div id="username_error">用户名填写不正确</div>

            <input type="password" id="password" class="input_text" name="password" placeholder="密码" onblur="checkPassword();">
            <div id="password_error">密码填写不正确</div>

            <input type="submit" value="登录" class="input_button" onclick="return checkUsername()&&checkPassword()">&nbsp;&nbsp;
            <input type="button" class="input_button" value="注册" onclick=" window.location.href='register.html'">

        </form>
    </div>
</body>

</html>