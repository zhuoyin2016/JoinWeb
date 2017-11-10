<%--
  Created by IntelliJ IDEA.
  User: 芋头
  Date: 2017/10/22
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                <div class="page-header">
                    <h1>报名者 <small>所有报名者</small></h1>
                </div>
                <p style="text-align: center;">卓音工作室2018学生报名信息</p>
                <table class="table table-striped table-bordered table-condensed">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>学院</th>
                        <th>专业</th>
                        <th>年级</th>
                        <th>年级排名</th>
                        <th>意向部门</th>
                        <th>操作</th>
                        <th>状态</th>
                        <th>审核</th>
                    </tr>
                    </thead>
                    <c:forEach items="${list}"  var="joiner" varStatus="status">
                        <tbody>
                        <tr class="list-users">
                            <td>${status.index+1}</td>
                            <td><a href="${website}joiner/show/${joiner.id}">${joiner.joinerName}</a></td>
                            <td>${joiner.joinerSex}</td>
                            <td>${joiner.joinerCollege}</td>
                            <td>${joiner.joinerMajor}</td>
                            <td>${joiner.joinerGrade}</td>
                            <td>${joiner.joinerRanking}</td>
                            <td>${joiner.joinerDep}</td>
                            <td><a href="${website}joiner/del/${joiner.id}">删除</a></td>
                            <td>
                                <c:if test="${joiner.joinerState == '1'}">
                            <span class="label label-success">
                               审核通过
                            </span>
                                </c:if>
                                <c:if test="${joiner.joinerState == '0'}">
                            <span class="label label-warning">
                                待审核
                            </span>
                                </c:if>

                                <c:if test="${joiner.joinerState == '2'}">
                                <span class="label label-important">
                              审核未通过
                                </span>
                                </c:if>

                            </td>
                            <form action="${website}joiner/check/${joiner.id}" method="post">
                                <td>
                                    <select name="joinerState" style="width: 70px">
                                        <option value="0" selected="selected">请选择</option>
                                        <option value="0">待审核</option>
                                        <option value="1">通过</option>
                                        <option value="2"/>不通过</option>
                                    </select>
                                </td>
                                <td><input type="submit" value="确定"></td>
                            </form>
                        </tr>
                        </tbody>
                    </c:forEach>
                </table>
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



<%--/测试代码--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>搜索页面</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div>--%>
<%--<center style="margin-top: 50px">--%>
<%--<th>卓音工作室2018报名学生信息</th>--%>
<%--<table border="1">--%>
<%--<tr bgcolor="#e6e6fa">--%>
<%--<th>序号</th><th>姓名</th><th>性别</th><th>学院</th><th>专业</th><th>年级</th><th>年级排名</th><th>意向部门</th><th>操作</th><th>状态</th><th colspan="2">审核</th>--%>
<%--</tr>--%>
<%--<c:forEach items="${list}"  var="joiner" varStatus="status">--%>
<%--<tr bgcolor="#e0ffff">--%>
<%--<td>${status.index+1}</td>--%>
<%--<td><a href="${website}joiner/show/${joiner.id}">${joiner.joinerName}</a></td>--%>
<%--<td>${joiner.joinerSex}</td>--%>
<%--<td>${joiner.joinerCollege}</td>--%>
<%--<td>${joiner.joinerMajor}</td>--%>
<%--<td>${joiner.joinerGrade}</td>--%>
<%--<td>${joiner.joinerRanking}</td>--%>
<%--<td>${joiner.joinerDep}</td>--%>
<%--<td><a href="${website}joiner/del/${joiner.id}">删除</a></td>--%>
<%--<td>--%>
<%--<c:if test="${joiner.joinerState == '0'}">待审核</c:if>--%>
<%--<c:if test="${joiner.joinerState == '1'}">审核通过</c:if>--%>
<%--<c:if test="${joiner.joinerState == '2'}">审核未通过</c:if>--%>
<%--</td>--%>
<%--<form action="${website}joiner/check/${joiner.id}" method="post">--%>
<%--<td>--%>
<%--<select name="joinerState">--%>
<%--<option value="0" selected="selected"></option>--%>
<%--<option value="0">待审核</option>--%>
<%--<option value="1">通过</option>--%>
<%--<option value="2"/>不通过</option>--%>
<%--</select>--%>
<%--</td>--%>
<%--<td><input type="submit" value="确定"></td>--%>
<%--</form>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>
<%--<a href="${website}joiner/list"><input type="button" name="button" value="返回"/></a>--%>
<%--</center>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>