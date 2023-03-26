<%--
  Created by IntelliJ IDEA.
  User: sxh
  Date: 2022/12/21
  Time: 2:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-3 ">
    <main class="main" role="main"style="color:#ffe0e0;">
        <div class="container">
            <div class="row">
                <div class="offset-md-3 col-md-6">
                    <form class="form-container"action="Updategrjl.jsp">
                        <h2 align="center">个人简历</h2>
                        <div class="form-group">
                            <label for="name">你的名字</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="请输入名字">
                        </div>
                        <div class="form-group">
                            <label for="gender">你的性别</label>
                            <input type="text" class="form-control" id="gender" name="gender" placeholder="请输入性别">
                        </div>
                        <div class="form-group">
                            <label for="byxx">毕业学校</label>
                            <input type="text" class="form-control" id="byxx" name="byxx" placeholder="请输入毕业学校">
                        </div>
                        <div class="form-group">
                            <label for="zy">所学专业</label>
                            <input type="text" class="form-control" id="zy" name="zy" placeholder="请输入所学专业">
                        </div>
                        <div class="form-group">
                            <label for="xqah">兴趣爱好</label>
                            <input type="text" class="form-control" id="xqah" name="xqah" placeholder="兴趣爱好">
                        </div>
                        <div class="form-group">
                            <label for="ryzs">你的获得荣誉证书</label>
                            <input type="text" class="form-control" id="ryzs" name="ryzs" placeholder="请输入你的获得荣誉证书">
                        </div>
                        <div class="form-group">
                            <label for="tc">特长</label>
                            <input type="text" class="form-control" id="tc" name="tc" placeholder="请输入特长">
                        </div>
                        <div class="form-group">
                            <label for="zwpj">自我评价</label>
                            <input type="text" class="form-control" id="zwpj" name="zwpj" placeholder="自我评价">
                        </div>
                        <div class="form-group">
                            <label for="gae">你的年龄</label>
                            <input type="text" class="form-control" id="gae" name="gae" placeholder="请输入年龄">
                        </div>
                        <div class="form-group">
                            <label for="dh">你的电话</label>
                            <input type="tel" class="form-control" id="dh" name="dh" placeholder="请输入电话">
                        </div>
                        <div class="form-group">
                            <label for="em">邮箱</label>
                            <input type="email" class="form-control" id="em" name="em" placeholder="请输入邮箱">
                        </div>
                        <div class="form-group">
                            <label for="id">id</label>
                            <input type="text" class="form-control" id="id" name="id" value="22">
                        </div>
                        <button type="submit" class="btn btn-success btn-block">确定提交</button>
                        <button style="background: #5e92ce;align-content: center">
                            <a href="tjjl.jsp">
                                返回
                            </a>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </main>
    <!--

     -->
    </form>
    </main>
</div>


</body>
</html>
