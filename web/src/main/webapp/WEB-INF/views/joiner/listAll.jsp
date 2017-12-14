<%--
  Created by IntelliJ IDEA.
  User: 芋头
  Date: 2017/10/20
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>Editable Table</title>

    <%--<!--data table-->--%>
    <%--<link rel="stylesheet" href="../../../js/joiner/data-tables/DT_bootstrap.css" />--%>

    <%--<link href="../../../css/joiner/style.css" rel="stylesheet">--%>
    <%--<link href="../../../css/joiner/style-responsive.css" rel="stylesheet">--%>

    <%--<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->--%>
    <%--<!--[if lt IE 9]>--%>
    <%--<script src="../../../js/joiner/html5shiv.js"></script>--%>
    <%--<script src="../../../js/joiner/respond.min.js"></script>--%>
    <%--<![endif]-->--%>

    <!--data table-->
    <link rel="stylesheet" href="../../../js/data-tables/DT_bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../../../css/admin/bootstrap-fileupload.min.css" />
    <link href="../../../css/admin/style.css" rel="stylesheet">
    <link href="../../../css/admin/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../../../js/html5shiv.js"></script>
    <script src="../../../js/respond.min.js"></script>
    <![endif]-->


</head>
<body>
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
                    <li><a href="#"><i class="fa fa-user"></i><span>Profile</span></a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> <span>Settings</span></a></li>
                    <li><a href="#"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
                </ul>
            </div>


            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li><a href="${website}man/all"><i class="fa fa-home"></i> <span>管理员管理</span></a></li>
                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>页面内容管理</span></a>
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
            <form class="searchform" action="index.html" method="post">
                <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
            </form>
            <%--<form action="${website}/joiner/search" method="post">--%>
                <%--<div>--%>
                    <%--<select name="type" style="margin-left: 30%;width: 70px">--%>
                        <%--<option value="name" selected = "selected"/>姓名</option>--%>
                        <%--<option value="sex"/>性别</option>--%>
                        <%--<option value="grade"/>年级</option>--%>
                        <%--<option value="dep"/>意向部门</option>--%>
                        <%--<option value="major"/>专业</option>--%>
                        <%--<option value="state"/>状态</option>--%>
                    <%--</select>--%>
                    <%--<input type="text" name="keyWord" style="height: 28px">--%>
                    <%--<input class="submit" type="submit" name="submit" value="搜索" />--%>
                <%--</div>--%>
            <%--</form>--%>
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
                报名表
            </h3>
            <p>请根据需要进行报名表审核及管理</p>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Entry Form
                            <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                     </span>
                        </header>
                        <div class="panel-body">
                            <div class="adv-table editable-table ">
                            </div>
                            <div class="space15"></div>
                            <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                <thead>
                                <tr>
                                    <th>姓名</th>
                                    <th>性别</th>
                                    <th>排名</th>
                                    <th>专业</th>
                                    <th>年级</th>
                                    <th>意向部门</th>
                                    <th>操作</th>
                                    <th>查看详情</th>
                                    <th>审核状态</th>
                                </tr>
                                </thead>
                                <c:forEach items="${list}"  var="joiner" varStatus="status">
                                <tbody>
                                <tr class="">
                                    <td>${joiner.joinerName}</td>
                                    <td>${joiner.joinerSex}</td>
                                    <td>${joiner.joinerRanking}</td>
                                    <td class="center">${joiner.joinerCollege}--${joiner.joinerMajor}</td>
                                    <td>${joiner.joinerGrade}</td>
                                    <td>${joiner.joinerDep}</td>
                                    <td><a href="${website}joiner/del/${joiner.id}">删除</a></td>
                                    <%--<td><a href="${website}joiner/show/${joiner.id}" class="btnshow">查看</a></td>--%>
                                    <td><a href="javascript:;" class="btnshow">查看</a></td>
                                    <td>
                                        <c:if test="${joiner.joinerState == '1'}">
                                            <span>审核通过</span>
                                        </c:if>
                                        <c:if test="${joiner.joinerState == '0'}">
                                            <span>待审核</span>
                                        </c:if>
                                        <c:if test="${joiner.joinerState == '2'}">
                                            <span>审核未通过</span>
                                        </c:if>
                                        <a href="${website}joiner/check/${joiner.id}/1">
                                            <input type="button" name="joinerState" value="通过"/>
                                        </a>
                                        <a href="${website}joiner/check/${joiner.id}/2">
                                            <input type="button" name="joinerState" value="不通过"/>
                                        </a>
                                    </td>
                                </tr>
                                </tbody>
                                </c:forEach>
                            </table>
                        </div>
</section>
</div>
</div>
</div>
<!--body wrapper end-->

<!--footer section start-->
<!--footer section end-->
<div id="bg"></div>
<div id="show">
    <input id="btnclose" type="button" value="Close"/>
    <div class="left"></div>
    <div class="right"></div>
</div>
</div>
<!-- main content end-->
</section>

<%--<!-- Placed js at the end of the document so the pages load faster -->--%>
<%--<script src="../../../js/joiner/jquery-1.10.2.min.js"></script>--%>
<%--<script src="../../../js/joiner/jquery-ui-1.9.2.custom.min.js"></script>--%>
<%--<script src="../../../js/joiner/jquery-migrate-1.2.1.min.js"></script>--%>
<%--<script src="../../../js/joiner/bootstrap.min.js"></script>--%>
<%--<script src="../../../js/joiner/modernizr.min.js"></script>--%>
<%--<script src="../../../js/joiner/jquery.nicescroll.js"></script>--%>

<%--<!--data table-->--%>
<%--<script type="text/javascript" src="../../../js/joiner/data-tables/jquery.dataTables.js"></script>--%>
<%--<script type="text/javascript" src="../../../js/joiner/data-tables/DT_bootstrap.js"></script>--%>

<%--<!--common scripts for all pages-->--%>
<%--<script src="../../../js/joiner/scripts.js"></script>--%>

<%--<!--script for editable table-->--%>
<%--<script src="../../../js/joiner/editable-table.js"></script>--%>


<!-- Placed js at the end of the document so the pages load faster -->
<script src="../../../js/jquery-1.10.2.min.js"></script>
<script src="../../../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../../../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../../../js/bootstrap.min.js"></script>
<script src="../../../js/modernizr.min.js"></script>
<script src="../../../js/jquery.nicescroll.js"></script>

<!--data table-->
<script type="text/javascript" src="../../../js/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="../../../js/data-tables/DT_bootstrap.js"></script>

<!--common scripts for all pages-->
<script src="../../../js/scripts.js"></script>

<!--script for editable table-->
<script src="../../../js/editable-table.js"></script>
<!-- END JAVASCRIPTS -->

<script>
    jQuery(document).ready(function() {
        EditableTable.init();
    });
    // function getImg(){
    //     var box = document.getElementById('pic');
    //     var file = document.getElementById('photo').files[0];
    //     var reader = new FileReader();
    //     reader.addEventListener("load",function(){
    //         box.src = reader.result;
    //     },false);
    //     if(file){
    //         reader.readAsDataURL(file);
    //     }
    // }
</script>
</body>
</html>