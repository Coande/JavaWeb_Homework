<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/normalize.css">
    <script>
        window.onload = function () {
            addEvent();
        }

        function addEvent() {
            var tds = document.getElementsByTagName("td");
            for (var i in tds) {
                tds[i].ondblclick = function () {
                    mDbclick(this);
                }
            }

            var deletes = document.getElementsByClassName("delete");
            for (var j in deletes) {
                deletes[j].onclick = function () {
                    mDelete(this);
                }
            }
        }

        function mDbclick(td) {
            //如果正在编辑，防止双击点穿。
            if (td.getElementsByTagName("input").length > 0) {
                return;
            }
            var mInput = document.createElement("input");
            mInput.setAttribute("type", "text");
            mInput.value = td.innerHTML;
            td.innerHTML = "";
            td.appendChild(mInput);
            mInput.onblur = function () {
                this.parentNode.innerHTML = this.value;
            }
            mInput.focus();
        }


        //删除
        function mDelete(deleteButton) {
            var tbody = document.getElementsByTagName("tbody")[0];
            tbody.removeChild(deleteButton.parentNode.parentNode);
        }



        //添加一行
        function mAdd() {
            var td1 = document.createElement("td");
            var td2 = document.createElement("td");
            var td3 = document.createElement("td");
            var tr = document.createElement("tr");
            var btDelete = document.createElement("input");
            btDelete.setAttribute("type", "button");
            btDelete.value = "删除";
            btDelete.className = "delete";

            tr.appendChild(td1);
            tr.appendChild(td2);
            td3.appendChild(btDelete);
            tr.appendChild(td3);

            var tbody = document.getElementsByTagName("tbody")[0];
            tbody.appendChild(tr);
            //添加事件
            addEvent();
        }
    </script>
    <style>
        body {
            height: 800px;
            background: #EAEAEA;
        }
        
        th,
        td,
        input {
            height: 30px;
            width: 250px;
            text-align: center;
        }
        
        table {
            margin: 50px;
        }
    </style>

</head>

<body>
    <table border="1">
        <thead>
            <tr>
                <th>标题一</th>
                <th>标题二</th>
                <th>删除</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>数据</td>
                <td>数据</td>
                <td>
                    <input type="button" value="删除" class="delete">
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>
                    <input type="button" value="删除" class="delete">
                </td>
            </tr>
            <tr>
                <td>数据</td>
                <td></td>
                <td>
                    <input type="button" value="删除" class="delete">
                </td>
            </tr>
            <tr>
                <td>数据</td>
                <td></td>
                <td>
                    <input type="button" value="删除" class="delete">
                </td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3">
                    <input type="button" value="添加一行" style="width:100%;" onclick="mAdd();">
                </td>
            </tr>
        </tfoot>
    </table>
</body>

</html>