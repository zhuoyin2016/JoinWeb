<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2017/11/4
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>卓音</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../resource/css/reset.css">
    <link rel="stylesheet" href="../resource/css/style.css">
    <link rel="stylesheet" href="../resource/css/activity-one.css">
    <script type="text/javascript" src="../resource/js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../resource/js/index.js" ></script>
    <script type="text/javascript" src="../resource/js/activity-one.js" ></script>
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
    </div>
    <div class="ceshi">
    </div>
</div>
<table border="1" align="left">
    <tr>
        <td align="center">活动标题</td>
        <td>${activity.activityTitle}</td>
    </tr>
    <tr>
        <td align="center">活动时间</td>
        <td>${activity.activityTime}</td>
    </tr>
    <tr>
        <td>活动内容</td>
        <td>${activity.activityContent}</td>
    </tr>
    <tr>
        <td>活动图片</td>
        <td>${activity.activityImg1}</td>
    </tr>
</table>
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