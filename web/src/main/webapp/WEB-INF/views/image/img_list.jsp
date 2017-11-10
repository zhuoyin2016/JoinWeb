<%--
  Created by IntelliJ IDEA.
  User: 侯淑婷
  Date: 2017/10/20
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
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
<%--后台管理页面之研究生团队--%>
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
                    <li><a href="${website}project/listAllProject">项目</a></li>
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
                        <small>全部图片</small>
                    </h1>
                    <a href="${website}image/select_image"><button style=" float:right;margin-top:-40px;border-radius: 6px;font-size: 16px;padding: 10px 26px;">轮播图片</button></a>
                </div>
                <%--<c:forEach items="${imageList}" var="image" varStatus="status">--%>
                    <%--<tr>--%>
                        <%--<td>${status.index+1}</td>--%>
                        <%--<td><img src="${image.imgName}" width="80px" height="60px"></td>--%>
                        <%--<td>${image.imgName}</td>--%>
                        <%--<td>${image.uploadImgTime}</td>--%>
                        <%--<td><a href="${website}image/delete/${image.id}">删除</a></td>--%>
                    <%--</tr>--%>
                <%--</c:forEach>--%>
                <div>
                    <div style="overflow: hidden;">
                        <c:forEach items="${imageList}" var="image" varStatus="status">
                            <div style="float: left;padding: 20px;margin: 2%;text-align: center;">
                                <img style="width: 240px;height: 150px;" src="${image.imgName}" />
                                <p>时间：${image.uploadImgTime}</p>
                                <a class="btn" href="${website}image/delete/${image.id}">删除</a>
                            </div>
                        </c:forEach>
                    </div>

<%--<c:if test="${number == 0}"><!--number 控制显示“添加图片按钮”-->--%>
    <%--<td colspan="5"><a href="${website}image/to_add_image/1/1">添加</a></td>--%>
<%--</c:if>--%>
<%--</br><!--有点疑问-->--%>
<%--<c:if test="${num == 1}"><!--num 控制添加文件的显示-->--%>
    <%--<form action="${website}image/add_image" method="post" enctype="multipart/form-data">--%>
    <%--<td><input type="file" name="file" id="imageField"></td>--%>
    <%--<td colspan="4"><input type="submit" name="submit" value="添加"></td>--%>
    <%--</form>--%>
<%--</c:if>--%>
                    <c:if test="${number == 0}"><!--number 控制显示“添加图片按钮”-->
                        <a href="${website}image/to_add_image/1/1"><button style="margin-left: 45%;border-radius: 6px;font-size: 16px;padding: 10px 26px;">添加</button></a>
                    </c:if>
                    <c:if test="${num == 1}"><!--num 控制添加文件的显示-->
                        <form action="${website}image/add_image" method="post" enctype="multipart/form-data">
                            <td><input type="file" name="file" id="imageField" ></td>
                            <td colspan="4"><input type="submit" name="submit" value="添加" style="margin-left: 45%;border-radius: 6px;font-size: 16px;padding: 10px 26px;"></td>
                        </form>
                    </c:if>
                    <br>
                    <%--<a href="${website}image/select_image"><button style="margin-left: 43%;border-radius: 6px;font-size: 16px;padding: 10px 26px; margin-top:15px;">选择轮播</button></a>--%>
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


<%--<table cellspacing="0" border="1" align="center">--%>
    <%--<tr>--%>
        <%--<th align="center">序号</th>--%>
        <%--<th align="center">图片</th>--%>
        <%--<th>图片名字</th>--%>
        <%--<th align="center">上传时间</th>--%>
        <%--<th align="center">删除</th>--%>
    <%--</tr>--%>
    <%--<c:forEach items="${imageList}" var="image" varStatus="status">--%>
    <%--<tr>--%>
        <%--<td>${status.index+1}</td>--%>
        <%--<td><img src="${image.imgName}" width="80px" height="60px"></td>--%>
        <%--<td>${image.imgName}</td>--%>
        <%--<td>${image.uploadImgTime}</td>--%>
        <%--<td><a href="${website}image/delete/${image.id}">删除</a></td>--%>
    <%--</tr>--%>
    <%--</c:forEach>--%>
    <%--<tr>--%>
        <%--<c:if test="${number == 0}"><!--number 控制显示“添加图片按钮”-->--%>
            <%--<td colspan="5"><a href="${website}image/to_add_image/1/1">添加图片</a></td>--%>
        <%--</c:if>--%>
    <%--</tr></br><!--有点疑问-->--%>
    <%--<c:if test="${num == 1}"><!--num 控制添加文件的显示-->--%>
        <%--<tr>--%>
            <%--<form action="${website}image/add_image" method="post" enctype="multipart/form-data">--%>
                <%--<td><input type="file" name="file" id="imageField"></td>--%>
                <%--<td colspan="4"><input type="submit" name="submit" value="添加"></td>--%>
            <%--</form>--%>
        <%--</tr>--%>
    <%--</c:if>--%>
    <%--<tr>--%>
        <%--<td colspan="5"><a href="${website}image/select_image">轮播的图片</a></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
        <%--<td colspan="5">${msg}</td>--%>
    <%--</tr>--%>
<%--</table>--%>
</body>
</html>
