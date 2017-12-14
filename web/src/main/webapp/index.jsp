<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/10/18
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--.<head>--%>
    <%--<meta charset="utf-8">--%>
    <%--<title>卓音工作室 | 后台管理页面</title>--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
    <%--<!--  width - viewport的宽度 height - viewport的高度--%>
          <%--initial-scale - 初始的缩放比例--%>
          <%--minimum-scale - 允许用户缩放到的最小比例--%>
          <%--maximum-scale - 允许用户缩放到的最大比例--%>
          <%--user-scalable - 用户是否可以手动缩放 -->--%>
    <%--<meta name="description" content="Admin panel developed with the Bootstrap from Twitter.">--%>
    <%--<!-- 从Twitter，内容管理员面板开发与引导。 -->--%>
    <%--<meta name="author" content="travis">--%>

    <%--<link href="../../../css/admin/bootstrap.css" rel="stylesheet">--%>
    <%--<link href="./../../css/admin/site.css" rel="stylesheet">--%>
    <%--<link href="../../../css/admin/bootstrap-responsive.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--&lt;%&ndash;<!-- 导航栏 -->&ndash;%&gt;--%>
<%--<div class="navbar navbar-fixed-top">--%>
    <%--<div class="navbar-inner">--%>
        <%--<div class="container-fluid">--%>
            <%--<a class="brand" href="index.html">卓音后台管理</a>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<%--<div class="span9" style="width:80%;margin-left:5%;margin-top:50px;">--%>

    <%--<div class="well hero-unit" style="margin-left:20%;text-align:center;">--%>
        <%--<h1>欢迎，管理员</h1>--%>
        <%--<p>欢迎您来到卓音工作室后台用户管理界面 </p>--%>
        <%--<p><a class="btn btn-success btn-large" href="man/login">管理员登录 &raquo;</a></p>--%>
    <%--</div>--%>

<%--</div>--%>


<%--<script src="../../../js/admin/jquery.js"></script>--%>
<%--<script src="../../../js/admin/bootstrap.min.js"></script>--%>
<%--<script>--%>
    <%--$(document).ready(function() {--%>
        <%--$('.dropdown-menu li a').hover(--%>
                <%--function() {--%>
                    <%--$(this).children('i').addClass('icon-white');--%>
                <%--},--%>
                <%--function() {--%>
                    <%--$(this).children('i').removeClass('icon-white');--%>
                <%--});--%>
    <%--});--%>
<%--</script>--%>

<html>
<body>

<%
    response.sendRedirect("/man/login");
%>

</body>
</html>

