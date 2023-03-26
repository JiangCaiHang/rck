<%@ page import="user.dr" %>
<%@ page import="user.idty" %><%--
  Created by IntelliJ IDEA.
  User: sxh
  Date: 2022/12/13
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>登入</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3"style="background: url(assets/images/drcg.png)">
    <h2 align="center"><%
        String name=request.getParameter("name");
        String pwd=request.getParameter("pwd");
        int ids;
        dr d=new dr();
        d.qydr(name,pwd);

        idty id=new idty();
        id.qydr(pwd);
        ids=id.id;

        if(d.sfcg==true){
            out.println("登入成功");
            response.sendRedirect("../qydrcg.jsp");
            out.println(ids);
        }else {
            out.println("登入失败");
        }
    %></h2>
    <a href="index.jsp" class="btn btn-info" role="button">返回</a>
</div>
</body>
</html>

