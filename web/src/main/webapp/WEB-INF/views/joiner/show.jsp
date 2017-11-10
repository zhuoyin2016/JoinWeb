<%--
  Created by IntelliJ IDEA.
  User: 芋头
  Date: 2017/10/21
  Time: 21:16
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
                    <h1>报名者 <small>所有报名者</small></h1>
                </div>
                <p style="text-align: center;">卓音工作室2018学生报名信息</p>
                <table class="table table-striped table-bordered table-condensed" style="margin-left:80px;width: 500px">
                    <thead>
                    <tr>
                        <td  align="right" style="width: 50px">姓名：</td>
                        <td>${joiner.joinerName}</td>
                        <td align="right">年级排名：</td>
                        <td>${joiner.joinerRanking}</td>
                        <td align="right">意向部门：</td>
                        <td>${joiner.joinerDep}</td>
                        <td rowspan="3" align="center">
                            <img src="../../../image/joiner/${joiner.joinerPhoto}" style="margin-left: 18px" width="100px" height="140px"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">性别：</td>
                        <td>${joiner.joinerSex}</td>
                        <td align="right">学院：</td>
                        <td>${joiner.joinerCollege}</td>
                        <td align="right">专业：</td>
                        <td>${joiner.joinerMajor}</td>
                    </tr>
                    <tr>
                        <td align="right">年级：</td>
                        <td>${joiner.joinerGrade}</td>
                        <td align="right">联系电话：</td>
                        <td>${joiner.joinerNum}</td>
                        <td align="right">QQ：</td>
                        <td>${joiner.joinerQQ}</td>
                    </tr>
                    <tr>
                        <td align="right">籍贯：</td>
                        <td colspan="6">${joiner.joinerBir}</td>

                    </tr>
                    <tr>
                        <td align="right">自我介绍</td>
                        <td colspan="6">
                        <textarea  style="width: 690px;height: 200px;">
                            ${joiner.joinerIntro}
                        </textarea>
                        </td>

                    </tr>
                    <tr>
                        <td align="right">加入工作<br>
                            室的理由</td>
                        <td colspan="6">
                        <textarea name="joinerReason" style="width: 690px;height: 150px;" >
                            ${joiner.joinerReason}
                        </textarea>
                        </td>
                    </tr>
                        </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script src="../../../js/joiner/signIn.js"></script>
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
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html lang="en">--%>
<%--<head>--%>
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
    <%--<link href="../../../css/admin/entryform.css" rel="stylesheet">--%>
    <%--<link href="../../../css/admin/bootstrap-responsive.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<!-- 导航栏 -->--%>
<%--<div class="navbar navbar-fixed-top">--%>
    <%--<div class="navbar-inner">--%>
        <%--<div class="container-fluid">--%>
            <%--<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>
            <%--</a>--%>
            <%--<a class="brand" href="#">卓音后台管理</a>--%>
            <%--<div class="btn-group pull-right">--%>
                <%--<a class="btn" href="#">--%>
                    <%--<i class="icon-user"></i> 管理员--%>
                    <%--<!-- 放在最右的小图标 -->--%>
                <%--</a>--%>
                <%--<!-- 下拉小图标 -->--%>
                <%--<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">--%>
                    <%--<span class="caret"></span>--%>
                <%--</a>--%>
                <%--<ul class="dropdown-menu">--%>
                    <%--<li><a href="#">简况</a></li>--%>
                    <%--<li class="divider"></li>--%>
                    <%--<li><a href="index.html">退出</a></li>--%>
                <%--</ul>--%>
            <%--</div>--%>

            <%--<div class="nav-collapse">--%>
                <%--<ul class="nav">--%>
                    <%--<li><a href="index.html">首页</a></li>--%>
                    <%--<li class="dropdown">--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">人员<b class="caret"></b></a>--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li><a href="index-user.html">工作室成员</a></li>--%>
                            <%--<li class="divider"></li>--%>
                            <%--<li><a href="index-role.html">管理员</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown">--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">内容<b class="caret"></b></a>--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li><a href="#">活动</a></li>--%>
                            <%--<li class="divider"></li>--%>
                            <%--<li><a href="#">项目</a></li>--%>
                            <%--<li class="divider"></li>--%>
                            <%--<li><a href="#">图片</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown">--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">报名<b class="caret"></b></a>--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li class="divider"></li>--%>
                            <%--<li><a href="${website}joiner/list">报名者</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</div>--%>

        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>


<%--<div class="entryform-div">--%>
    <%--<p style="text-align: center;font-size: 25px;font-weight: 700px;">东北师范大学卓音工作室2017报名表</p>--%>
    <%--<table class="entryform-table" border="1px" >--%>
        <%--<tr>--%>
            <%--<td>姓名：</td>--%>
            <%--<td>${joiner.joinerName}</td>--%>
            <%--<td>性别:</td>--%>
            <%--<td>--%>
                <%--${joiner.joinerSex}--%>
            <%--</td>--%>
            <%--<td>年级</td>--%>
            <%--<td>--%>
                <%--${joiner.joinerGrade}--%>
            <%--</td>--%>
            <%--<td rowspan="3" width="25%" >--%>
                <%--<div style="width:60%;height: 60%;border: 1px solid black;margin-left: 20%;margin-top: -10px;">--%>
                    <%--<img src="../../../image/joiner/${joiner.joinerPhoto}" width="70px" height="100px"/>--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>学院：</td>--%>
            <%--<td>${joiner.joinerCollege}</td>--%>
            <%--<td>专业：</td>--%>
            <%--<td>--%>
                <%--${joiner.joinerMajor}--%>
            <%--</td>--%>
            <%--<td>年级排名：</td>--%>
            <%--<td>${joiner.joinerRanking}</td>--%>

        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>意向部门：</td>--%>
            <%--<td>--%>
                <%--${joiner.joinerDep}--%>
            <%--</td>--%>
            <%--<td>联系电话：</td>--%>
            <%--<td>${joiner.joinerNum}</td>--%>
            <%--<td>QQ：</td>--%>
            <%--<td>${joiner.joinerQQ}</td>--%>

        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>籍贯：</td>--%>
            <%--<td colspan="6">山东省</td>--%>
        <%--</tr>--%>
        <%--<tr  height="150px">--%>
            <%--<td>自我介绍</td>--%>
            <%--<td  colspan="6"><textarea>${joiner.joinerIntro}</textarea></td>--%>
        <%--</tr>--%>
        <%--<tr height="150px">--%>
            <%--<td >加入工作室理由</td>--%>
            <%--<td  colspan="6"><textarea>${joiner.joinerReason}</textarea></td>--%>
        <%--</tr>--%>
        <%--<!-- <tr></tr>--%>
        <%--<tr></tr>--%>
        <%--<tr></tr>--%>
        <%--<tr></tr> -->--%>
    <%--</table>--%>

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
<%--</body>--%>
<%--</html>--%>







<%--测试代码--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>报名信息显示</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div>--%>
    <%--<center style="margin-top: 50px">--%>
            <%--<h2>东北师范大学卓音工作室2017报名表</h2>--%>
            <%--<table border="1" style="table-layout: fixed;width: 812px">--%>
                <%--<tr>--%>
                    <%--<td  align="right">姓名：</td>--%>
                    <%--<td>${joiner.joinerName}</td>--%>
                    <%--<td align="right">性别：</td>--%>
                    <%--<td>${joiner.joinerSex}</td>--%>
                    <%--<td align="right">年级：</td>--%>
                    <%--<td>${joiner.joinerGrade}</td>--%>
                    <%--<td rowspan="3" align="center">--%>
                        <%--<img src="../../../image/joiner/${joiner.joinerPhoto}" width="70px" height="100px"/>--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td align="right">学院：</td>--%>
                    <%--<td>${joiner.joinerCollege}</td>--%>
                    <%--<td align="right">专业：</td>--%>
                    <%--<td>${joiner.joinerMajor}</td>--%>
                    <%--<td align="right">年级排名：</td>--%>
                    <%--<td>${joiner.joinerRanking}</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td align="right">意向部门：</td>--%>
                    <%--<td>${joiner.joinerDep}</td>--%>
                    <%--<td align="right">联系电话：</td>--%>
                    <%--<td>${joiner.joinerNum}</td>--%>
                    <%--<td align="right">QQ：</td>--%>
                    <%--<td>${joiner.joinerQQ}</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td align="right">籍贯：</td>--%>
                    <%--<td colspan="6">${joiner.joinerBir}</td>--%>

                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td align="right">自我介绍</td>--%>
                    <%--<td colspan="6">--%>
                        <%--<textarea  style="width: 690px;height: 200px;">--%>
                            <%--${joiner.joinerIntro}--%>
                        <%--</textarea>--%>
                    <%--</td>--%>

                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td align="right">加入工作<br>--%>
                        <%--室的理由</td>--%>
                    <%--<td colspan="6">--%>
                        <%--<textarea name="joinerReason" style="width: 690px;height: 150px;" >--%>
                            <%--${joiner.joinerReason}--%>
                        <%--</textarea>--%>
                    <%--</td>--%>
                <%--</tr>--%>
            <%--</table>--%>
            <%--${message}--%>
        <%--<a href="${website}joiner/list"><input type="button" name="button" value="返回"/></a>--%>
    <%--</center>--%>
    <%--</div>--%>
<%--</body>--%>
<%--</html>--%>
