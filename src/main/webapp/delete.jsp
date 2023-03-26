<%@ page import="user.deleteby" %>
<%@ page import="user.idty" %><%--
  Created by IntelliJ IDEA.
  User: sxh
  Date: 2022/12/21
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<center>
  <h1 style="color: #0d6efd">
    <%
      int id;
      idty idt=new idty();
      id=idt.id;
    deleteby del=new deleteby();
    del.delete(id);
    if(del.bool==true){
      out.println("注销成功");
    }else {
      out.println("失败");
    }
    %>

  </h1>
<div style="height: 300px"></div>
<div>  <button type="button" class="btn btn-light"><a href="index.jsp">返回</a></button></div>
</center>
</body>
</html>
