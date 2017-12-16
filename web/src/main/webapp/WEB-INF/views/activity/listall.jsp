<%--
  Created by IntelliJ IDEA.
  User: houxd
  Date: 2017/12/11
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/adminImage/png">

    <title>活动信息</title>

    <link href="../../../css/admin/style.css" rel="stylesheet">
    <link href="../../../css/admin/activity.css" rel="stylesheet">

</head>

<body class="sticky-header">

<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="${website}man/all"><img src="../../../img/admin/logo.jpg" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="${website}man/all"><img src="../../../img/admin/logo_icon.jpg" alt=""></a>
        </div>
        <!--logo and iconic logo end-->


        <div class="left-side-inner">

            <!-- visible to small devices only -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="" src="../../../images/photos/user-avatar.png" class="media-object">
                    <div class="media-body">
                        <h4><a href="#">John Doe</a></h4>
                        <span>"Hello There..."</span>
                    </div>
                </div>

                <h5 class="left-nav-title">Account Information</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li><a href="#"><i class="fa fa-user"></i> <span>Profile</span></a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> <span>Settings</span></a></li>
                    <li><a href="#"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
                </ul>
            </div>

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li><a href="${website}man/all"><i class="fa fa-home"></i> <span>管理员管理</span></a></li>
                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i><span>页面内容管理</span></a>
                    <ul class="sub-menu-list">
                        <li class="active"><a href="#"> 首页管理</a></li>
                        <li><a href="${website}activity/listAll"> 活动</a></li>
                        <li><a href="${website}image/list">图片</a></li>
                        <li><a href="${website}project/listAllProject"> 项目</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>成员管理</span></a>
                    <ul class="sub-menu-list">
                        <li  class="active">
                            <a  href="${website}member/queryByDepartment/${1}">研究生</a></li>
                        <li><a  href="${website}member/queryByDepartment/${2}">前端</a></li>
                        <li><a  href="${website}member/queryByDepartment/${3}">后端</a></li>
                        <li><a  href="${website}member/queryByDepartment/${4}">产品部</a></li>
                    </ul>
                </li>
                <li><a href="${website}joiner/list"><i class="fa fa-bullhorn"></i> <span>报名者</span></a></li>
            </ul>
            <!--sidebar nav end-->

        </div>
    </div>
    <!-- left side end-->

    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        <div class="header-section">

            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->

            <!--search start-->
            <form class="searchform" action="/image/list" method="post">
                <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
            </form>
            <!--search end-->

            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">
                    <li>
                        <a class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img src="../../../images/photos/user-avatar.png" alt="" />
                            ${currentManager.currentUsername}
                            <span class="caret">
                                <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                                   <%--<li><a href="${website}man/single"><i class="fa fa-sign-out"></i>修改个人资料</a></li>--%>
                                    <li><a href="#myModal2" data-toggle="modal"><i class="fa fa-cog"></i>修改个人信息</a></li>
                                </ul>
                                <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                                   <li><a href="${website}man/logout"><i class="fa fa-sign-out"></i>退出账号</a></li>
                                </ul>
                            </span>
                        </a>
                        <%--<ul class="dropdown-menu dropdown-menu-usermenu pull-right">--%>
                        <%--<li><a href="${website}man/single"><i class="fa fa-sign-out"></i>修改个人资料</a></li>--%>
                        <%--</ul>--%>
                        <%--<ul class="dropdown-menu dropdown-menu-usermenu pull-right">--%>
                        <%--<li><a href="${website}man/logout"><i class="fa fa-sign-out"></i>退出账号</a></li>--%>
                        <%--</ul>--%>
                    </li>

                </ul>
            </div>
            <!--notification menu end -->

        </div>
        <!-- header section end-->

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                活动信息管理
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="${website}/image/list">页面管理</a>
                </li>
                <li class="active"> 活动信息管理 </li>
            </ul>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row blog">
                <div class="col-md-4">
                    <div class="panel">
                        <div class="panel-body">
                            <input type="text" placeholder="搜索活动" class="form-control blog-search">
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel-body">
                        <div class="blog-post">
                        <h3>最新活动信息</h3>
                        <div class="media">
                        <a href="javascript:;" class="pull-left">
                        <img alt="" src="../../../image/blog/blog-thumb-1.jpg" class=" ">
                        </a>
                        <div class="media-body">
                        <h5 class="media-heading"><a href="javascript:;">第一次卓音沙龙举办</a></h5>
                        <p>
                        第一次卓音的技术沙龙圆满举办。
                        </p>
                        </div>
                        </div>
                        <div class="media">
                        <a href="javascript:;" class="pull-left">
                        <img alt="" src="../../../image/blog/blog-thumb-2.jpg" class=" ">
                        </a>
                        <div class="media-body">
                        <h5 class="media-heading"><a href="javascript:;">活动题目</a></h5>
                        <p>
                        活动小简介
                        </p>
                        </div>
                        </div>
                        <div class="media">
                        <a href="javascript:;" class="pull-left">
                        <img alt="" src="../../../image/blog/blog-thumb-3.jpg" class=" ">
                        </a>
                        <div class="media-body">
                        <h5 class="media-heading"><a href="javascript:;">活动题目</a></h5>
                        <p>
                        活动小简介。
                        </p>
                        </div>
                        </div>
                        </div>
                        </div>
                        <div class="col-lg-offset-4 col-lg-10">
                            <a href="${website}activity/toadd"><input class="but" type="submit" value="添加活动"></input></a>
                        </div>
                    </div>



                </div>

                <div class="col-md-8">
                    <div class="panel">
                        <c:forEach items="${activityList}" var="activity" varStatus="status">
                        <div class="panel-body">
                            <h1 class="text-center mtop35"><a href="#">${activity.activityTitle}</a></h1>
                            <p class="text-center auth-row">
                                举办时间：${activity.activityTime}
                            </p>
                            <div class="blog-img-wide">
                                <img src="../../../image/activity_img/&{activityImg1}" alt="">
                            </div>
                            <p>
                                    ${activity.activityContent}
                            </p>
                            <div class="col-lg-offset-5 col-lg-10">
                                <button><a href="${website}activity/delete/${activity.id}">删除</a></button>
                                <button><a href="${website}activity/toUpdate/${activity.id}">修改</a></button>
                            </div>
                            </c:forEach>
                        </div>
                    </div>

            </div>
        </div>
        <!--body wrapper end-->




    </div>
    <!-- main content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="../../../js/jquery-1.10.2.min.js"></script>
<script src="../../../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../../../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../../../js/bootstrap.min.js"></script>
<script src="../../../js/modernizr.min.js"></script>
<script src="../../../js/jquery.nicescroll.js"></script>


<!--common scripts for all pages-->
<script src="../../../js/scripts.js"></script>

</body>
</html>