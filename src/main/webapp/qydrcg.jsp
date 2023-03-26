<%@ page import="java.sql.Connection" %>
<%@ page import="user.userdr" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="user.jltj" %>
<%@ page import="user.jgjlpublic" %>
<%@ page import="java.util.List" %>
<%@ page import="user.idty" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: sxh
  Date: 2022/12/12
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Favicons -->
    <link href="assets/images/favicon.png" rel="icon">
    <link href="assets/images/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap" rel="stylesheet">
    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <!-- Main CSS File -->
    <link href="assets/stylesheets/styles.css" rel="stylesheet">

    <title>企业登入成功页面</title>


    <style>
        th, tr, td, table {
            border: 1px solid #847cf8;
        }
    </style>
</head>
<body background="assets/images/preview.gif">
<header style="background: #ced4da" id="header" class="header d-flex align-items-center">

    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo d-flex align-items-center">
            <h1>聘<span>.</span></h1>
        </a>
        <nav id="navbar" class="navbar">
            <ul>
                <li><a href="#about">企业中心</a></li>
            </ul>
        </nav><!-- .navbar -->

    </div>
    </div>

</header>
<center style="height: 742px;width: 1214px; background-image:url(assets/images/preview.png)">

    <table>
    <tr>
        <th>名字</th>
        <th>性别</th>
        <th>毕业学校</th>
        <th>专业</th>
        <th>兴趣爱好</th>
        <th>荣誉证书</th>
        <th>特长</th>
        <th>自我评价</th>
        <th>id</th>
        <th>年龄</th>
        <th>电话</th>
        <th>邮箱</th>

    </tr>
<%  Connection conn=userdr.getConn();
    List<jgjlpublic> grjls =new ArrayList<>();//集合
    idty idt=new idty();
    String sql="select *from grjl";
    //String sql = "select name,gender,byxx,zy,xqah,ryzs,tc,zwpj,id,age,dh,em from grjl where name=(select name from user where id='"+28+"')";//idt.id
    try {
        Statement st = conn.createStatement();//预编译
        //结果集
        ResultSet rs = st.executeQuery(sql);

        jgjlpublic grjl=null;
        grjl=new jgjlpublic();
        while (rs.next()) {
            String name = rs.getString("name");

            String gender = rs.getString("gender");

            String byxx = rs.getString("byxx");

            String zy = rs.getString("zy");

            String xqah = rs.getString("xqah");

            String ryzs = rs.getString("ryzs");

            String tc = rs.getString("tc");

            String zwpj = rs.getString("zwpj");

            int id = rs.getInt("id");

            int age = rs.getInt("age");

            int dh = rs.getInt("dh");

            String em = rs.getString("em");
            out.print("<tr>");
            out.print("<td>"+name+"</td>");
            out.print("<td>"+gender+"</td>");
            out.print("<td>"+byxx+"</td>");
            out.print("<td>"+zy+"</td>");
            out.print("<td>"+xqah+"</td>");
            out.print("<td>"+ryzs+"</td>");
            out.print("<td>"+tc+"</td>");
            out.print("<td>"+zwpj+"</td>");
            out.print("<td>"+id+"</td>");
            out.print("<td>"+age+"</td>");
            out.print("<td>"+dh+"</td>");
            out.print("<td>"+em+"</td>");
            out.print("</tr>");
            //封装对象
            grjl.setName(name);
            grjl.setGender(gender);
            grjl.setByxx(byxx);
            grjl.setZy(zy);
            grjl.setXqah(xqah);
            grjl.setRyzs(ryzs);
            grjl.setTc(tc);
            grjl.setZwpj(zwpj);
            grjl.setId(id);
            grjl.setAge(age);
            grjl.setDh(dh);
            grjl.setEm(em);

            grjls.add(grjl);//弃用的集合
            //--------------------------------
        //    out.println(grjls);
        }
        //System.out.print(grjls+"/n");
    }catch (SQLException e) {
        e.printStackTrace();
    }%>

    </table>

    </center>
</body>
</html>
