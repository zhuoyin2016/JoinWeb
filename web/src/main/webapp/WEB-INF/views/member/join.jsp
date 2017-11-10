<%--
  Created by IntelliJ IDEA.
  User: TestUser
  Date: 2017/10/19
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<!-- 导航栏 -->
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">

            <a class="brand" href="#">卓音后台管理</a>
            <div class="btn-group pull-right">
                <a class="btn" href="#">
                    <i class="icon-user"></i> 管理员
                    <!-- 放在最右的小图标 -->
                </a>
                <!-- 下拉小图标 -->
                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">简况</a></li>
                    <li class="divider"></li>
                    <li><a href="index.html">退出</a></li>
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
                            <li class="divider"></li>
                            <li><a href="#">部门成员</a></li>
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
                            <li><a class="small-li-of-a" href="index-all-role.html">显示所有管理员</a></li>
                        </ul>
                    </li>
                    <li class="nav-header"><i class="icon-signal"></i> 内容</li>
                    <li><a href="#">活动</a></li>
                    <li><a href="#">项目</a></li>
                    <li><a href="#">图片</a></li>
                    <li class="level1_1"><a class="big-li-of-a">部门成员</a>
                        <ul class="level2_1">
                            <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${1}">研究生团队</a></li>
                            <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${2}">前端</a></li>
                            <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${3}">后端</a></li>
                            <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${4}">产品部</a></li>
                        </ul>
                    </li>
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
                <p style="text-align: center;font-weight: 700px;font-size: 30px">欢迎您，管理员xxx</p>
                <p style="margin-left: 40%;margin-top: 20px;">
                    <button style="text-align: center;"><a href="index-role-person-change.html">修改个人资料</a></button>
                    <button><a href="index-role-change-admin.html">修改管理员资料</a></button>
                </p>
                <table class="table table-striped table-bordered table-condensed">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>用户名</th>
                        <th>管理级别</th>
                        <th>操作</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="list-roles">
                        <td>1</td>
                        <td>翟阿鑫</td>
                        <td>超级管理员</td>
                        <td>
                            <p>
                                <button><a href="#">删除</a></button>
                                <button><a href="#">修改</a></button>
                            </p>
                        </td>
                    </tr>
                    <tr class="list-roles">
                        <td>2</td>
                        <td>单继重</td>
                        <td>高级管理员</td>
                        <td>
                            <p>
                                <button><a href="#">删除</a></button>
                                <button><a href="#">修改</a></button>
                            </p>
                        </td>
                    </tr>
                    <tr class="list-roles">
                        <td>3</td>
                        <td>吴晓阳</td>
                        <td>高级管理员</td>
                        <td>
                            <p>
                                <button><a href="#">删除</a></button>
                                <button><a href="#">修改</a></button>
                            </p>
                        </td>
                    </tr>
                    <tr class="list-roles">
                        <td>4</td>
                        <td>刘梦桃</td>
                        <td>高级管理员</td>
                        <td>
                            <p>
                                <button><a href="#">删除</a></button>
                                <button><a href="#">修改</a></button>
                            </p>
                        </td>
                    </tr>
                    <tr class="list-roles">
                        <td>4</td>
                        <td>刘梦桃</td>
                        <td>高级管理员</td>
                        <td>
                            <p>
                                <button><a href="#">删除</a></button>
                                <button><a href="#">修改</a></button>
                            </p>
                        </td>
                    </tr>
                    <tr class="list-roles">
                        <td>5</td>
                        <td>王璐</td>
                        <td>高级管理员</td>
                        <td>
                            <p>
                                <button><a href="#">删除</a></button>
                                <button><a href="#">修改</a></button>
                            </p>
                        </td>
                    </tr>
                    <tr class="list-roles">
                        <td>6</td>
                        <td>刘士奇</td>
                        <td>普通管理员</td>
                        <td>
                            <p>
                                <button><a href="#">删除</a></button>
                                <button><a href="#">修改</a></button>
                            </p>
                        </td>
                    </tr>
                    <tr class="list-roles">
                        <td>7</td>
                        <td>曹滢</td>
                        <td>普通管理员</td>
                        <td>
                            <p>
                                <button><a href="#">删除</a></button>
                                <button><a href="#">修改</a></button>
                            </p>
                        </td>
                    </tr>
                    <tr class="list-roles">
                        <td>8</td>
                        <td>张航</td>
                        <td>普通管理员</td>
                        <td>
                            <p>
                                <button><a href="#">删除</a></button>
                                <button><a href="#">修改</a></button>
                            </p>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <p style="margin-left: 40%;margin-top: 20px;">
                    <button style="text-align: center;"><a href="index-role-change.html">添加</a></button>
                    <button style="text-align: center;"><a href="index-role.html">退出</a></button>
                </p>
            </div>
        </div>
    </div>
</div>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('.dropdown-menu li a').hover(
                function () {
                    $(this).children('i').addClass('icon-white');
                },
                function () {
                    $(this).children('i').removeClass('icon-white');
                });
    });
    $(function () {
        $("a.big-li-of-a").next().hide();
        $(".level1_1 > a").click(function () {
            // 如果执行第一个level的下一个level
            if ($(".level2_1").css("display") == "none") {
                $(this).addClass("current")
                //给当前元素添加“current”元素
                $(".level2_1").show();//显示内容
                return false;//避免<a>标签跳转
            }

            else {//否则将内容隐藏（或者说是重新点击时隐藏）
                $(".level2_1").hide();
            }
        });
    });
</script>
<body>
<div>


</div>
</body>
</html>
