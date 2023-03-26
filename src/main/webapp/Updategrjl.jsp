<%@ page import="user.webyhzc" %>
<%@ page import="user.wbegrjl" %>
<%@ page import="user.idty" %>
<%@ page import="user.update" %><%--
  Created by IntelliJ IDEA.
  User: sxh
  Date: 2022/12/14
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    idty idt=new idty();
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String byxx=request.getParameter("byxx");
    String zy=request.getParameter("zy");
    String xqah=request.getParameter("xqah");
    String ryzs=request.getParameter("ryzs");
    String tc=request.getParameter("tc");
    String zwpj=request.getParameter("zwpj");
    int id=idt.id;
    int age=Integer.valueOf(request.getParameter("gae"));
    int dh=Integer.valueOf(request.getParameter("dh"));
    String em =request.getParameter("em");
    update up=new update();
    up.Updatgrjl(id,name,gender,byxx,zy,xqah,ryzs,tc,zwpj,age,dh,em);
    out.print(id);
    if (up.bool==true){
        out.print("<h2 align=\"center\">"+"修改成功"+"</h2>");
    }if(up.bool==false){
        out.print("失败");
    }
%>
