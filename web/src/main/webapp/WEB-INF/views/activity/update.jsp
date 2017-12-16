<%--
  Created by IntelliJ IDEA.
  User: houxd
  Date: 2017/12/16
  Time: 19:56
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
        </div>
 <!-- left side end-->

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                添加与编辑
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="#">页面管理</a>
                </li>
                <li>
                    <a href="activity.html">活动信息管理</a>
                </li>
                <li class="active"> 编辑 </li>
            </ul>
        </div>
        <!-- page heading end-->
        <div class="add">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        基本信息
                    </header>
                    <div class="panel-body">
                        <form class="form-horizontal" action="${website}activity/updateActivity" method="POST"  enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="exampleInput1">活动标题</label>
                                <input type="text" class="form-control" id="exampleInput1" name="activityTitle" placeholder="输入标题">
                            </div>
                            <div class="form-group">
                                <label for="exampleInput2">活动举办时间</label>
                                <input type="text" class="form-control" id="exampleInput2" name="activityTime" placeholder="输入时间">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">上传图片</label>
                                <input type="file" id="exampleInputFile">
                            </div>
                            <div class="col-sm-12" id="area">
                                <textarea class="form-control ckeditor"  name="activityContent" rows="6"></textarea>
                            </div>
                            <input type="submit" class="but" value="提交信息"></input>
                        </form>

                    </div>
                </section>
            </div>

        </div>
    <!-- main content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="../../../js/jquery-1.10.2.min.js"></script>
<script src="../../../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../../..js/jquery-migrate-1.2.1.min.js"></script>
<script src="../../../js/bootstrap.min.js"></script>
<script src="../../../js/modernizr.min.js"></script>
<script src="../../../js/jquery.nicescroll.js"></script>

<script type="text/javascript" src="../../../js/ckeditor/ckeditor.js"></script>

<script type="text/javascript" src="../../../js/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="../../../js/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
<!--common scripts for all pages-->
<script src="../../../js/scripts.js"></script>

<script>
    jQuery(document).ready(function(){
        $('.wysihtml5').wysihtml5();
    });
</script>

</body>
</html>


<%--</section>--%>

<%--<!-- Placed js at the end of the document so the pages load faster -->--%>
<%--<script src="../../../js/jquery-1.10.2.min.js"></script>--%>
<%--<script src="../../../js/jquery-ui-1.9.2.custom.min.js"></script>--%>
<%--<script src="../../../js/jquery-migrate-1.2.1.min.js"></script>--%>
<%--<script src="../../../js/bootstrap.min.js"></script>--%>
<%--<script src="../../../js/modernizr.min.js"></script>--%>
<%--<script src="../../../js/jquery.nicescroll.js"></script>--%>


<%--<!--common scripts for all pages-->--%>
<%--<script src="../../../js/scripts.js"></script>--%>

<%--</body>--%>
<%--</html>--%>