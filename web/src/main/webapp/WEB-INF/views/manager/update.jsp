<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/10/20
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--最初jsp页面--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>修改管理级别</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<center style="margin-top: 100px">--%>
    <%--<form action="${website}man/update" method="post">--%>
        <%--<input name="id" value="${manager.id}" type="hidden">--%>
        <%--<input name="password" value="${manager.password}" type="hidden">--%>
    <%--<table border="1">--%>
        <%--<tr>--%>
            <%--<td>用户名</td>--%>
            <%--<td><input name="username" type="text" value="${manager.username}"></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>管理级别</td>--%>
            <%--<td>--%>
                <%--<c:if test="${managerStatus == '1'}">--%>
                    <%--<select name = "status">--%>
                       <%--<c:if test="${manager.status == '0'}">--%>
                       <%--<option value="0" selected="selected">普通管理员</option>--%>
                       <%--<option value="1">高级管理员</option>--%>
                       <%--</c:if>--%>
                       <%--<c:if test="${manager.status == '1'}">--%>
                           <%--<option value="0">普通管理员</option>--%>
                           <%--<option value="1" selected="selected">高级管理员</option>--%>
                       <%--</c:if>--%>
                    <%--</select>--%>
                <%--</c:if>--%>

                <%--<c:if test="${managerStatus == '2'}">--%>
                    <%--<select name = "status">--%>
                        <%--<c:if test="${manager.status == '0'}">--%>
                            <%--<option value="0" selected="selected">普通管理员</option>--%>
                            <%--<option value="1">高级管理员</option>--%>
                            <%--<option value="2">超级管理员</option>--%>
                        <%--</c:if>--%>
                        <%--<c:if test="${manager.status == '1'}">--%>
                            <%--<option value="0">普通管理员</option>--%>
                            <%--<option value="1" selected="selected">高级管理员</option>--%>
                            <%--<option value="2">超级管理员</option>--%>
                        <%--</c:if>--%>
                        <%--<c:if test="${manager.status == '2'}">--%>
                            <%--<option value="0">普通管理员</option>--%>
                            <%--<option value="1">高级管理员</option>--%>
                            <%--<option value="2" selected="selected">超级管理员</option>--%>
                        <%--</c:if>--%>
                    <%--</select>--%>
                <%--</c:if>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr></tr>--%>
    <%--</table>--%>
        <%--<button>确认修改</button>--%>
    <%--</form>--%>
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
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <!-- <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </a> -->
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
                    <li><a href="index.html">首页</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">人员<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="index-user.html">工作室成员</a></li>
                            <li class="divider"></li>
                            <li><a href="index-role.html">管理员</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">内容<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">活动</a></li>
                            <li class="divider"></li>
                            <li><a href="#">项目</a></li>
                            <li class="divider"></li>
                            <li><a href="#">图片</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">报名<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="index-entry-form.html">报名表</a></li>
                            <li class="divider"></li>
                            <li><a href="index-applicant.html">报名者</a></li>
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
                    <li class=""><a href="#">工作室成员</a></li>
                    <li class="level1_1"><a class="big-li-of-a" href="#">管理员</a>
                        <ul class="level2_1">
                            <!--  <li><a class="small-li-of-a" href="index-role.html">登录</a></li> -->
                            <!-- <li><a class="small-li-of-a" href="index-rolepersonchange.html">修改个人资料</a></li>
                            <li><a class="small-li-of-a" href="index-rolechangeadmin.html">修改管理员信息</a></li>
                            <li><a class="small-li-of-a" href="index-rolechange.html">添加管理员</a></li> -->
                            <li><a class="small-li-of-a" href="index-allrole.html">显示所有管理员</a></li>
                        </ul>
                    </li>
                    <li class="nav-header"><i class="icon-signal"></i> 内容</li>
                    <li><a href="#">活动</a></li>
                    <li><a href="#">项目</a></li>
                    <li><a href="#">图片</a></li>
                    <li class="nav-header"><i class="icon-signal"></i> 报名</li>
                    <li><a href="index-entry-form.html">报名表</a></li>
                    <li><a href="index-applicant.html">报名者</a></li>
                </ul>
            </div>
        </div>
        <div class="span9">
            <div class="row-fluid">
                <div class="page-header">
                    <h1>管理员</h1>
                </div>

                <form class="form-horizontal" action="${website}man/update" method="post">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="role">用户名</label>
                            <div class="controls">
                                <input name="username" type="text" class="input-xlarge" id="role" value="${manager.username}" readonly/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="eee">管理级别</label>
                            <div class="controls">
                                <c:if test="${managerStatus == '1'}">
                                    <select name = "status" id="eee">
                                        <c:if test="${manager.status == '0'}">
                                            <option value="0" selected="selected">普通管理员</option>
                                            <option value="1">高级管理员</option>
                                        </c:if>
                                        <c:if test="${manager.status == '1'}">
                                            <option value="0">普通管理员</option>
                                            <option value="1" selected="selected">高级管理员</option>
                                        </c:if>
                                    </select>
                                </c:if>

                                <c:if test="${managerStatus == '2'}">
                                    <select name = "status" id="eee">
                                        <c:if test="${manager.status == '0'}">
                                            <option value="0" selected="selected">普通管理员</option>
                                            <option value="1">高级管理员</option>
                                            <option value="2">超级管理员</option>
                                        </c:if>
                                        <c:if test="${manager.status == '1'}">
                                            <option value="0">普通管理员</option>
                                            <option value="1" selected="selected">高级管理员</option>
                                            <option value="2">超级管理员</option>
                                        </c:if>
                                        <c:if test="${manager.status == '2'}">
                                            <option value="0">普通管理员</option>
                                            <option value="1">高级管理员</option>
                                            <option value="2" selected="selected">超级管理员</option>
                                        </c:if>
                                    </select>
                                </c:if>

                            </div>
                        </div>

                        <p style="margin-left: 20%;margin-top: 20px;">
                            <button class="btn">修改</button>
                            <a href="${website}man/all"><input type="button" class="btn" name="button" value="取消"></a>
                        </p>
                    </fieldset>
                </form>
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
