<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="user.*" %><%--
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
    <style>
        th, tr, td, table {
            border: 1px solid #544040;
        }

    </style>
    <meta charset="utf-8">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.bundle.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<body style="background-image: url(assets/images/grjl.png);">
<%     String pwd=request.getParameter("pwd");
    String names=request.getParameter("name");

    dr d=new dr();
    d.grdr(names,pwd);

    idty idt = new idty();
    idt.grdr(pwd);
    int id=idt.id;
    if(d.sfcg==true) {
%>
<h2 align="center" style="color: #f1dcf5">个人中心</h2>



<center>
    <table style="color: #ced4da;" >
        <tr>
            <th>名字</th>
            <th>性别</th>
            <th>毕业学校</th>
            <th>专业</th>
            <th>兴趣爱好</th>
            <th>荣誉证书</th>
            <th>特长</th>
            <th>自我评价</th>
            <th>年龄</th>
            <th>电话</th>
            <th>邮箱</th>
        </tr>
        <%
                Connection conn = userdr.getConn();

                String sql = "select name,gender,byxx,zy,xqah,ryzs,tc,zwpj,id,age,dh,em from grjl where name=(select name from user where id='" + id + "')";
                try {
                    Statement st = conn.createStatement();//预编译
                    //结果集
                    ResultSet rs = st.executeQuery(sql);
                    rs.next();
                    String name = rs.getString("name");
                    String gender = rs.getString("gender");
                    String byxx = rs.getString("byxx");
                    String zy = rs.getString("zy");
                    String xqah = rs.getString("xqah");
                    String ryzs = rs.getString("ryzs");
                    String tc = rs.getString("tc");
                    String zwpj = rs.getString("zwpj");
                    int age = rs.getInt("age");
                    int dh = rs.getInt("dh");
                    String em = rs.getString("em");
                    //------------------
                    out.print("<tr>");
                    out.print("<td>" + name + "</td>");
                    out.print("<td>" + gender + "</td>");
                    out.print("<td>" + byxx + "</td>");
                    out.print("<td>" + zy + "</td>");
                    out.print("<td>" + xqah + "</td>");
                    out.print("<td>" + ryzs + "</td>");
                    out.print("<td>" + tc + "</td>");
                    out.print("<td>" + zwpj + "</td>");
                    out.print("<td>" + age + "</td>");
                    out.print("<td>" + dh + "</td>");
                    out.print("<td>" + em + "</td>");
                    out.print("</tr>");
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } if(d.sfcg==false){
                    out.print("<h1 >"+"失败"+"</h1>");
            }
        %>

    </table>

</center>
<div style="height: 300px"></div>

<center>
    <div class="container mt-3">
        <button type="button" class="btn btn-light">
            <a href="drcgzpym.jsp">返回</a></button>
    </div>

        <button type="button" class="btn btn-warning">
        <a href="delete.jsp">注销用户</a>
    </button>
    <div class="container mt-3">

        <a href="Webupdategrjl.jsp">修改信息</a></button>

    <div class="container mt-3 ">

        <!--

         -->
        </form>
        </main>
    </div>
    </div>
    </div>
</center>
</body>
</html>

