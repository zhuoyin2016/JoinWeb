<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2017/11/4
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>卓音</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../resource/css/reset.css">
    <link rel="stylesheet" href="../resource/css/style.css">
    <link rel="stylesheet" href="../resource/css/activity.css">
    <script type="text/javascript" src="../resource/js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../resource/js/index.js" ></script>
    <script type="text/javascript" src="../resource/js/activity.js" ></script>
</head>

<body>
<div class="head">
    <div class="header">
        <div class="logo">
            <img src="../resource/imgs/小图标/join.png" class="logo-img">
            <img src="../resource/imgs/小图标/logo-school.png" class="logo-school">
        </div>
        <div id="nav">
            <ul>
                <li id="last"><a href="#">加入我们</a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">项目介绍</a></li>
                <li><a href="#">工作室简介</a></li>
                <li><a href="#">网站首页</a></li>
            </ul>
        </div>
    </div>
    <div class="fix-nav">
        <img src="../resource/imgs/小图标/右箭头.jpg" class="shouhui">
        <img src="../resource/imgs/小图标/side.jpg" class="side">
        <img src="../resource/imgs/小图标/左箭头.jpg" class="zhankai">
        <a href="${website}activity/toadd">增加活动</a>
    </div>
    <div class="ceshi">
    </div>
</div>
<div class="center">
    <h2 class="smatitle">活动信息</h2>
    <c:forEach items="${activityList}" var="activity" varStatus="status">
    <div class="pic" id="one">
        <img src="../resource/imgs/activity/01.jpg" class="big-pic">
        <p class="but" id="butone">
            <span><a href="${website}activity/select/${activity.id}">${activity.activityTitle}</a></span>
            <span><a href="${website}activity/delete/${activity.id}">删除</a></span>
        </p>
    </div>
    </c:forEach>
</div>
<div class="footer">
    <img class="foot-bg" src="../resource/imgs/小图标/foot-bg2.jpg">
    <div class="foot-left">
        <div class="about">
            <ul>
                <li class="title">关于我们 About</li>
                <li><a href="http://www.nenu.edu.cn" target="_blank">东北师范大学</a></li>
                <li>卓音工作室</li>
                <li>案例展示</li>
            </ul>
        </div>
        <div class="connect">
            <ul>
                <li class="title">联系我们 Connection</li>
                <li>QQ：xxxxxxxx</li>
                <li>手机：13111111111</li>
                <li>邮箱：13111111111@qq.com</li>
            </ul>
        </div>
    </div>
    <div class="foot-right">
        <img src="../resource/imgs/小图标/join.png" class="saoma">
        <img src="../resource/imgs/小图标/二维码.jpg"class="tubiao">
    </div>
    <div class="copyright">
        <span>Copyright © 卓音工作室</span>
    </div>
</div>

</body>
</html>
