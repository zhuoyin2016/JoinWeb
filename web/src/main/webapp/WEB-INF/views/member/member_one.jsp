<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TestUser陈芳
  Date: 2017/10/19
  Time: 14:41
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
<body>

<!-- 导航栏 -->

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
                            <li><a href="index-activity.html">活动</a></li>
                            <li class="divider"></li>
                            <li><a href="index-project.html">项目</a></li>
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
                    <li><a href="index-activity.html">活动</a></li>
                    <li><a href="index-project.html">项目</a></li>
                    <li class="level1_1"><a class="big-li-of-a">图片</a>
                        <ul class="level2_1">
                            <li><a class="small-li-of-a" href="index-picture.html">全部图片</a></li>
                            <li><a class="small-li-of-a" href="index-picture-carousel.html">轮播图片</a></li>
                        </ul>
                    </li>
                    <li class="level1_1"><a class="big-li-of-a" >部门成员</a>
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
                    <h1> 研究生团队 </h1>
                </div>

                <p style="text-align: center;font-weight: 700px;font-size: 30px">成员信息</p>
                <table class="table table-striped table-bordered table-condensed">
                    <thead>
                    <tr>
                        <th>头像</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>年级</th>
                        <th>专业</th>
                        <th>职务</th>
                        <th>个人简介</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <%--先把负责人列出来--%>
                    <c:forEach items="${memberList}" var="memberList" varStatus="status">
                    <div class="people">
                        <c:if test="${memberList.visible=='1'}">
                            <c:if test="${memberList.position == '1'||memberList.position=='2'||memberList.position=='3'}">
                                <tbody>
                                <tr class="list-roles">
                                    <td><img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                                    </td>
                                    <td>${memberList.memberName}</td>
                                    <td>${memberList.grade}</td>
                                    <td>${memberList.sex}</td>
                                    <td>${memberList.major}</td>

                                    <c:if test="${memberList.position == '1'}">
                                        <td>主任</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '2'}">
                                        <td>副主任</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '3'}">
                                        <td>负责人</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '4'}">
                                        <td>成员</td>
                                    </c:if>
                                    <td><p>${memberList.introduce}</p></td>
                                    <td>
                                        <p>
                                            <button><a href="${website}member/delMember/${memberList.id}">删除</a>
                                            </button>
                                            <button><a href="${website}member/update/${memberList.id}">修改</a></button>
                                        </p>
                                    </td>
                                </tr>

                                <%--<a href="index-update.html">--%>
                            </c:if>
                            </tbody>
                        </c:if>
                    </div>
                    </c:forEach>

                    <%--把2014级的先列出来--%>
                    <c:forEach items="${memberList}" var="memberList" varStatus="status">
                    <div class="people">
                        <c:if test="${memberList.visible == '1'}">
                            <c:if test="${memberList.grade==2014&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                                <tbody>
                                <tr class="list-roles">
                                    <td><img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                                    </td>
                                    <td>${memberList.memberName}</td>
                                    <td>${memberList.grade}</td>
                                    <td>${memberList.sex}</td>
                                    <td>${memberList.major}</td>

                                    <c:if test="${memberList.position == '1'}">
                                        <td>主任</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '2'}">
                                        <td>副主任</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '3'}">
                                        <td>负责人</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '4'}">
                                        <td>成员</td>
                                    </c:if>
                                    <td><p>${memberList.introduce}</p></td>
                                    <td>
                                        <p>
                                            <button><a href="${website}member/delMember/${memberList.id}">删除</a>
                                            </button>
                                            <button><a href="${website}member/update/${memberList.id}">修改</a></button>
                                        </p>
                                    </td>
                                </tr>
                            </c:if>
                            </tbody>
                        </c:if>
                    </div>
                    </c:forEach>

                    <%--把2015级的先列出来--%>
                    <c:forEach items="${memberList}" var="memberList" varStatus="status">
                    <div class="people">
                        <c:if test="${memberList.visible == '1'}">
                            <c:if test="${memberList.grade==2015&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                                <tbody>
                                <tr class="list-roles">
                                    <td><img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                                    </td>
                                    <td>${memberList.memberName}</td>
                                    <td>${memberList.grade}</td>
                                    <td>${memberList.sex}</td>
                                    <td>${memberList.major}</td>

                                    <c:if test="${memberList.position == '1'}">
                                        <td>主任</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '2'}">
                                        <td>副主任</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '3'}">
                                        <td>负责人</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '4'}">
                                        <td>成员</td>
                                    </c:if>
                                    <td><p>${memberList.introduce}</p></td>
                                    <td>
                                        <p>
                                            <button><a href="${website}member/delMember/${memberList.id}">删除</a>
                                            </button>
                                            <button><a href="${website}member/update/${memberList.id}">修改</a></button>
                                        </p>
                                    </td>
                                </tr>
                                <%--<a href="index-update.html">--%>
                            </c:if>
                            </tbody>
                        </c:if>
                    </div>
                    </c:forEach>
                  <%--2016级成员--%>
                    <c:forEach items="${memberList}" var="memberList" varStatus="status">
                    <div class="people">
                        <c:if test="${memberList.visible == '1'}">
                            <c:if test="${memberList.grade==2016&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                                <tbody>
                                <tr class="list-roles">
                                    <td><img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                                    </td>
                                    <td>${memberList.memberName}</td>
                                    <td>${memberList.grade}</td>
                                    <td>${memberList.sex}</td>
                                    <td>${memberList.major}</td>
                                    <c:if test="${memberList.position == '1'}">
                                        <td>主任</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '2'}">
                                        <td>副主任</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '3'}">
                                        <td>负责人</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '4'}">
                                        <td>成员</td>
                                    </c:if>
                                    <td><p>${memberList.introduce}</p></td>
                                    <td>
                                        <p>
                                            <button><a href="${website}member/delMember/${memberList.id}">删除</a>
                                            </button>
                                            <button><a href="${website}member/update/${memberList.id}">修改</a></button>
                                        </p>
                                    </td>
                                </tr>
                            </c:if>
                            </tbody>
                        </c:if>
                    </div>
                    </c:forEach>

                    <%--2017级成员--%>
                    <c:forEach items="${memberList}" var="memberList" varStatus="status">
                    <div class="people">
                        <c:if test="${memberList.visible == '1'}">
                            <c:if test="${memberList.grade==2017&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                                <tbody>
                                <tr class="list-roles">
                                    <td><img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                                    </td>
                                    <td>${memberList.memberName}</td>
                                    <td>${memberList.grade}</td>
                                    <td>${memberList.sex}</td>
                                    <td>${memberList.major}</td>
                                    <c:if test="${memberList.position == '1'}">
                                        <td>主任</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '2'}">
                                        <td>副主任</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '3'}">
                                        <td>负责人</td>
                                    </c:if>
                                    <c:if test="${memberList.position == '4'}">
                                        <td>成员</td>
                                    </c:if>
                                    <td><p>${memberList.introduce}</p></td>
                                    <td>
                                        <p>
                                            <button><a href="${website}member/delMember/${memberList.id}">删除</a>
                                            </button>
                                            <button><a href="${website}member/update/${memberList.id}">修改</a></button>
                                        </p>
                                    </td>
                                </tr>
                            </c:if>
                            </tbody>
                        </c:if>
                    </div>
                    </c:forEach>


                    <p style="margin-left: 40%;margin-top: 20px;">
                        <button style="text-align: center;"><a href="${website}member/addMember">添加</a>
                        </button>
                        <button style="text-align: center;">
                            <a href="${website}/member/join">退出</a></button>
                    </p>
            </div>
        </div>
    </div>
</div>

<script src="../../../js/admin/jquery.js"></script>
<script src="../../../js/admin/bootstrap.min.js"></script>
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
</body>
</html>
