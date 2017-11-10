<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/10/18
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--最初jsp代码--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>管理员列表</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<center style="margin-top: 100px">--%>
    <%--欢迎您，${currentManager.currentUsername}!<br>--%>
    <%--<a href="${website}man/single">修改个人资料</a>--%>
    <%--<a href="${website}man/logout">退出账号</a>--%>
    <%--<h2>管理员</h2>--%>

    <%--<table border="1">--%>
        <%--<tr bgcolor="#e6e6fa">--%>
            <%--<th>编号</th>--%>
            <%--<th>用户名</th>--%>
            <%--<th>管理级别</th>--%>
            <%--<c:if test="${managerStatus != '0'}">--%>
                <%--<th colspan="2">操作</th>--%>
            <%--</c:if>--%>
        <%--</tr>--%>

        <%--<c:forEach items="${managerList}"  var="manager" varStatus="status">--%>

                <%--<tr bgcolor="#e0ffff">--%>
                    <%--<td>${status.index+1}</td>--%>
                    <%--<td>${manager.username}</td>--%>

                    <%--<c:if test="${managerStatus == '0'}">--%>
                      <%--<c:if test="${manager.status == '0'}">--%>
                        <%--<td>普通管理员</td>--%>
                      <%--</c:if>--%>

                      <%--<c:if test="${manager.status == '1'}">--%>
                        <%--<td>高级管理员</td>--%>
                      <%--</c:if>--%>

                      <%--<c:if test="${manager.status == '2'}">--%>
                        <%--<td>超级管理员</td>--%>
                      <%--</c:if>--%>
                    <%--</c:if>--%>


                    <%--<c:if test="${managerStatus == '1'}">--%>
                       <%--<c:if test="${manager.status == '0'}">--%>
                           <%--<td>普通管理员</td>--%>
                           <%--<td><a href="${website}man/delete/${manager.id}">删除</a>--%>
                           <%--<td><a href="${website}man/update/${manager.id}">修改</a>--%>
                       <%--</c:if>--%>

                        <%--<c:if test="${manager.status == '1'}">--%>
                            <%--<td colspan="3" align="center">高级管理员</td>--%>
                        <%--</c:if>--%>

                        <%--<c:if test="${manager.status == '2'}">--%>
                            <%--<td colspan="3" align="center">超级管理员</td>--%>
                        <%--</c:if>--%>
                    <%--</c:if>--%>


                    <%--<c:if test="${managerStatus == '2'}">--%>
                        <%--<c:if test="${manager.status == '0'}">--%>
                            <%--<td>普通管理员</td>--%>
                            <%--<td><a href="${website}man/delete/${manager.id}">删除</a>--%>
                            <%--<td><a href="${website}man/update/${manager.id}">修改</a>--%>
                        <%--</c:if>--%>

                        <%--<c:if test="${manager.status == '1'}">--%>
                            <%--<td>高级管理员</td>--%>
                            <%--<td><a href="${website}man/delete/${manager.id}">删除</a>--%>
                            <%--<td><a href="${website}man/update/${manager.id}">修改</a>--%>
                        <%--</c:if>--%>

                        <%--<c:if test="${manager.status == '2'}">--%>
                            <%--<td colspan="3" align="center">超级管理员</td>--%>
                        <%--</c:if>--%>
                    <%--</c:if>--%>

                <%--</tr>--%>

        <%--</c:forEach>--%>
    <%--</table>--%>
    <%--<c:if test="${managerStatus != '0'}">--%>
        <%--<a href="${website}man/add">添加</a>--%>
    <%--</c:if>--%>
    <%--<br><br>--%>
<%--${message}--%>
<%--</center>--%>
<%--</body>--%>
<%--</html>--%>



<!DOCTYPE html>
<html lang="en">
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
<<div class="navbar navbar-fixed-top">
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
                <div class="page-header">
                    <h1>管理员</h1>
                </div>
                <p style="text-align: center;font-weight: 700px;font-size: 30px">欢迎您，${currentManager.currentUsername}!</p>
                <%--<p style="margin-left: 40%;margin-top: 20px;"><button style="text-align: center;"><a href="index-role-person-change.html">修改个人资料</a></button><button><a href="index-role-change-admin.html">修改管理员资料</a></button></p>--%>

                <br>
                <table class="table table-striped table-bordered table-condensed">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>用户名</th>
                        <th>管理级别</th>
                        <c:if test="${managerStatus != '0'}">
                            <th>操作</th>
                        </c:if>
                    </tr>
                    </thead>

                    <tbody>

                        <%--显示序号--%>
                        <%--<c:forEach items="${managerList}"  var="manager" varStatus="status">--%>
                        <%--<tr class="list-roles">--%>
                            <%--<td>${status.count}</td>--%>


                        <%
                            int i = 0;
                        %>
                        <%--先显示超级管理员--%>
                        <c:forEach items="${managerList}"  var="manager" varStatus="status1">
                        <tr class="list-roles">
                            <c:if test="${manager.status == 2}">
                                <td><%=++i%></td>
                                <td>${manager.username}</td>
                                <td colspan="2" align="center">超级管理员</td>
                            </c:if>
                        </tr>
                            <c:if test="${status1.last eq true}">
                                <%--再显示高级管理员 --%>
                                <c:forEach items="${managerList}"  var="manager" varStatus="status2">
                                    <tr class="list-roles">
                                        <c:if test="${manager.status == 1}">
                                            <td><%=++i%></td>
                                            <td>${manager.username}</td>

                                            <c:if test="${managerStatus != '2'}">
                                                <td>高级管理员</td>
                                            </c:if>

                                            <c:if test="${managerStatus == '2'}">
                                                <td>高级管理员</td>
                                                <td><p>
                                                    <a href="${website}man/delete/${manager.id}">删除</a>
                                                    <a href="${website}man/update/${manager.id}">修改</a>
                                                </p></td>
                                            </c:if>

                                        </c:if>
                                    </tr>
                                    <c:if test="${status2.last eq true}">
                                        <c:forEach items="${managerList}"  var="manager" varStatus="status3">
                                            <tr class="list-roles">
                                                <c:if test="${manager.status == 0}">
                                                    <td><%=++i%></td>
                                                    <td>${manager.username}</td>

                                                    <c:if test="${managerStatus == '0'}">
                                                        <td>普通管理员</td>
                                                    </c:if>

                                                    <c:if test="${managerStatus != '0'}">
                                                        <td>普通管理员</td>
                                                        <td><p>
                                                            <a href="${website}man/delete/${manager.id}">删除</a>
                                                            <a href="${website}man/update/${manager.id}">修改</a>
                                                        </p></td>
                                                    </c:if>
                                                </c:if>
                                            </tr>
                                        </c:forEach>
                                    </c:if>
                                </c:forEach>

                            </c:if>
                        </c:forEach>

                    </tbody>
                </table>

                ${message}

                <p style="margin-left: 40%;margin-top: 20px;">
                    <c:if test="${managerStatus != '0'}">
                        <a class="btn" href="${website}man/add">添加管理员</a>
                    </c:if>
                </p>
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
</body>
</html>