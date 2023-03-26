<%--
  Created by IntelliJ IDEA.
  User: sxh
  Date: 2022/12/12
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>登入</title>
</head>
<body  background="assets/images/bg.gif">
<div style="width: 100px;height: 200px"></div>
<main class="main" role="main"style="color:#000000;">
    <div class="container">
        <div class="row">
            <div class="offset-md-3 col-md-6">
                <form class="form-container"action="webdr.jsp">
                    <h2>登入</h2>
                    <div class="form-group">
                        <label for="name">用户名</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="请输入用户名">
                    </div>
                    <div class="form-group">
                        <label for="pwd">密码</label>
                        <input type="password" class="form-control" id="pwd" name="pwd" placeholder="请输入用密码">
                    </div>
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">记住信息</label>
                        <button style="background: #cff4fc"><a href="zhuc.jsp">注册</a></button>
                        <button style="background: #cff4fc"><a href="qyzhuc.jsp">企业注册</a></button>
                        <button style="background: #cff4fc"><a href="qydru.jsp">企业登入</a></button>
                    </div>
                    <button type="submit" class="btn btn-success btn-block">登录</button>

                </form>
            </div>
        </div>
    </div>
</main>

</body>
</html>