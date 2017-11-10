<%--
  Created by IntelliJ IDEA.
  User: 侯淑婷
  Date: 2017/10/24
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="utf-8">
    <title>卓音工作室 | 后台管理页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--  width - viewport的宽度 height - viewport的高度
          initial-scale - 初始的缩放比例
          minimum-scale - 允许用户缩放到的最小比例
          maximum-scale - 允许用户缩放到的最大比例
          user-scalable - 用户是否可以手动缩放 -->
    <meta name="description" content="Admin panel developed with the Bootstrap from Twitter.">
    <!-- 从Twitter，内容管理员面板开发与引导。 -->
    <meta name="author" content="travis">

    <link href="../../../css/admin/bootstrap.css" rel="stylesheet">
    <link href="../../../css/admin/site.css" rel="stylesheet">
    <link href="../../../css/admin/bootstrap-responsive.css" rel="stylesheet">
</head>
<body>
<!-- 导航栏 -->
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="brand" href="#">卓音后台管理</a>
            <div class="btn-group pull-right">
                <a class="btn" href="#">
                    <i class="icon-user"></i> 设置
                    <!-- 放在最右的小图标 -->
                </a>
                <!-- 下拉小图标 -->
                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="${website}man/single">修改个人资料</a></li>
                    <li class="divider"></li>
                    <li><a href="${website}man/logout">退出账号</a></li>
                </ul>
            </div>

            <div class="nav-collapse">
                <ul class="nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">人员<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="divider"></li>
                            <li><a href="${website}man/all">管理员</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">内容<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${website}activity/listAll">活动</a></li>
                            <li class="divider"></li>
                            <li class="level1_1"><a class="big-li-of-a">图片</a>
                                <ul class="level2_1">
                                    <li><a class="small-li-of-a" href="${website}image/list">全部图片</a></li>
                                    <li><a class="small-li-of-a" href="${website}image/select_ok">轮播图片</a></li>
                                </ul>
                            </li>
                            <li class="divider"></li>
                            <li class="level1_1"><a class="big-li-of-a">部门成员</a>
                                <ul class="level2_1">
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${1}">研究生团队</a></li>
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${2}">前端</a></li>
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${3}">后端</a></li>
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${4}">产品部</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">报名<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${website}joiner/list/first/1">报名者</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3">
            <div class="well sidebar-nav">
                <ul class="nav nav-list">
                    <li class="nav-header"><i class="icon-wrench"></i>人员</li>
                    <li class=""><a href="${website}man/all">管理员</a></li>
                    <li class="nav-header"><i class="icon-signal"></i> 内容</li>
                    <li><a href="${website}activity/listAll">活动</a></li>
                    <li><a href="${website}project/projectAllProject">项目</a></li>
                    <li class="level1_1"><a class="big-li-of-a">图片</a>
                        <ul class="level2_1">
                            <li><a class="small-li-of-a" href="${website}image/list">全部图片</a></li>
                            <li><a class="small-li-of-a" href="${website}image/select_ok">轮播图片</a></li>
                        </ul>
                    </li>
                    <li class="level1_1"><a class="big-li-of-a">部门成员</a>
                        <ul class="level2_1">
                            <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${1}">研究生团队</a></li>
                            <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${2}">前端</a></li>
                            <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${3}">后端</a></li>
                            <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${4}">产品部</a></li>
                        </ul>
                    </li>
                    <li class="nav-header"><i class="icon-signal"></i> 报名</li>
                    <li><a href="${website}joiner/list/first/1">报名者</a></li>
                </ul>
            </div>
        </div>
        <div class="span9">
            <div class="row-fluid">
                <div  class="page-header">
                    <h1>
                        内容
                        <small>轮播图片</small>
                    </h1>
                </div>
                <div>
                    <%--<c:forEach items="${imageList}" var="image" varStatus="status">--%>
                        <%--<tr>--%>
                            <%--<td>${status.index+1}</td>--%>
                            <%--<td><img src="${image.imgName}" width="80px" height="60px"></td>--%>
                            <%--<td><a href="${website}image/select/${image.id}">选择/取消</a></td>--%>
                        <%--</tr>--%>
                    <%--</c:forEach>--%>
                    <div style="overflow: hidden;">
                        <c:forEach items="${imageList}" var="image" varStatus="status">
                            <div style="float: left;padding: 20px;margin: 2%;text-align: center;">
                                <h2>${status.index+1}</h2>
                                <img style="width: 240px;height: 150px;" src="${image.imgName}" />
                                <p>${image.uploadImgTime}</p>
                                <a class="btn" href="${website}image/select/${image.id}">选择/取消</a>
                            </div>
                        </c:forEach>
                    </div>
                        <%--<c:forEach items="${slImageList}" var="slImage" varStatus="status">--%>
                            <%--<img src="${slImage.imgName}" width="80px" height="60px">--%>
                        <%--</c:forEach>--%>
                    <div style="text-align: center;margin: 20px;">
                        <h3>已选中图片</h3>
                        <c:forEach items="${slImageList}" var="slImage" varStatus="status">
                            <img style="width: 120px;height: 70px;" src="${slImage.imgName}"/>
                        </c:forEach>
                        <br />
                        <c:if test="${fn:length(slImageList) != 3}">
                            当前共${fn:length(slImageList)}张，请选择3张图片！
                        </c:if>
                        <c:if test="${fn:length(slImageList) == 3}">
                            已选择3张，请点击确定！
                        </c:if>
                    </div>
                    <a href="${website}image/select_ok"><button style="margin-left: 45%;border-radius: 6px;font-size: 16px;padding: 10px 26px;">确定</button></a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="../../../js/admin/jquery.js"></script>
<script src="../../../js/admin/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        $('.dropdown-menu li a').hover(
            function() {
                $(this).children('i').addClass('icon-white');
            },
            function() {
                $(this).children('i').removeClass('icon-white');
            });
    });
    $(function(){
        $("a.big-li-of-a").next().hide();
        $(".level1_1 > a").click(function(){
            // 如果执行第一个level的下一个level
            if($(".level2_1").css("display")=="none"){
                $(this).addClass("current")
                //给当前元素添加“current”元素
                $(".level2_1").show();//显示内容
                return false;//避免<a>标签跳转
            }

            else{//否则将内容隐藏（或者说是重新点击时隐藏）
                $(".level2_1").hide();
            }
        });
    });
</script>
<%--<h1 align="center">轮播图片的选择</h1>--%>
<%--<form action="${website}/image/select_ok" method="post">--%>
    <%--<!--确定以后，提交到轮播的首页，仅显示被选择的页面-->--%>
<%--<table cellspacing="0" border="0" align="center">--%>
    <%--<tr>--%>
        <%--<th align="center">序号</th>--%>
        <%--<th align="center">图片</th>--%>
        <%--<th>选择/取消</th>--%>
        <%--<th></th>--%>
    <%--</tr>--%>
    <%--<c:forEach items="${imageList}" var="image" varStatus="status">--%>
        <%--<tr>--%>
            <%--<td>${status.index+1}</td>--%>
            <%--<td><img src="${image.imgName}" width="80px" height="60px"></td>--%>
            <%--<td><a href="${website}image/select/${image.id}">选择/取消</a></td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
<%--</table>--%>
    <%--<hr width="500px" align="center">--%>
    <%--<c:forEach items="${slImageList}" var="slImage" varStatus="status">--%>
        <%--<img src="${slImage.imgName}" width="80px" height="60px">--%>
    <%--</c:forEach>--%>
    <%--&lt;%&ndash;<p align="center"><input type="submit" value="确定"></p>&ndash;%&gt;--%>
    <%--<c:if test="${fn:length(slImageList) != 5}">--%>
        <%--当前共${fn:length(slImageList)}张，请选择5张图片！--%>
    <%--</c:if>--%>
    <%--<c:if test="${fn:length(slImageList) == 5}">--%>
        <%--已选择5张，请点击确定！--%>
        <%--<p align="center"><input type="submit" value="确定"></p>--%>
    <%--</c:if>--%>
<%--</form>--%>
</body>
</html>
