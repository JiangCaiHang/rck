<%@ page import="user.jltj" %><%--
  Created by IntelliJ IDEA.
  User: sxh
  Date: 2022/12/14
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>个人简历</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.bundle.min.js"></script>
</head>
<body style="background-image: url(assets/images/grjl.png);">

<div class="container mt-3 ">
    <h2 align="center" style="color: #f1dcf5">个人简历</h2>
    <table class="table table-bordered table-sm"style="color: #a2c4e8;height: 200px;">
        <thead>

        <tr>

            <th>名字</th>
            <th>性别</th>
            <th>年龄</th>
            <th>电话</th>

        </tr>
        </thead>
        <tbody>
        <tr>
            <td>毕业学习</td>
            <td>专业</td>
            <td>荣誉证书</td>
            <th>邮箱</th>
        </tr>
        <tr>
            <td>特长</td>
            <td>自我评价</td>

        </tr>

        </tbody>
    </table>
</div>
    <button style="background-image:url(assets/images/bctt.png) "align="center">
    <a href="grjjl2.jsp">
        编辑
    </a>
    </button>
<button style="background:cyan"align="center">
<a href="drcgzpym.jsp">
    返回
</a>
</button>
</body>
</html>
