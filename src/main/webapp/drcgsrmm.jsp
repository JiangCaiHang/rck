<%--
  Created by IntelliJ IDEA.
  User: sxh
  Date: 2022/12/20
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登入成功再次输入密码</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<main class="main" role="main"style="color:#000000;">
    <div class="container">
        <div class="row">
            <div class="offset-md-3 col-md-6">
                <form class="form-container"action="tjjl2.jsp">
                    <h2>在次登入</h2>
                    <div class="form-group">
                        <label for="name">用户名</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="请输入用户名">
                    </div>
                    <div class="form-group">
                        <label for="pwd">密码</label>
                        <input type="password" class="form-control" id="pwd" name="pwd" placeholder="请输入用密码">
                    </div>
                    <button type="submit" class="btn btn-success btn-block">确认登录</button>
                </form>
            </div>
        </div>
    </div>
</main>
</body>
</html>
