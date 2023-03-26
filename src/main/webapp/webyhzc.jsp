<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="user.webyhzc" %>
<!DOCTYPE html>
<html>
<head>
 <title>注册密码</title>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css" rel="stylesheet">
 <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3"style="background: url(assets/images/zhuccg.png)">
 <h2 align="center"><%
  String name=request.getParameter("name");
  String pwd=request.getParameter("pwd");
  webyhzc webzc=new webyhzc();
  webzc.yhzc(name,pwd);
  if(webzc.zhuc==true){
   out.println("注册成功");
  }else {
   out.println("注册失败");
  }
 %></h2>
 <a href="index.jsp" class="btn btn-info" role="button">返回</a>
</div>

</body>
</html>


