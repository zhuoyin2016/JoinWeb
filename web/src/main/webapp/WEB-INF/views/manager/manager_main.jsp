<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/12/9
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>管理员管理</title>

    <link href="../../../css/style.css" rel="stylesheet">
    <link href="../../../css/style-responsive.css" rel="stylesheet">
    <link href="../../../css/administratorManage.css" rel="stylesheet" />
    <!--<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />-->


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../../../js/html5shiv.js"></script>
    <script src="../../../js/respond.min.js"></script>
    <![endif]-->
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
                <li><a href="${website}joiner/list/first/1"><i class="fa fa-bullhorn"></i> <span>报名者</span></a></li>
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
                管理员管理
            </h3>
            <ul class="breadcrumb">
                <li class="active"> 您好，${currentManager.currentUsername}！ </li>
            </ul>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <div class="panel-body">
                            <div class="adv-table editable-table ">
                                <div class="clearfix">
                                    <div class="btn-group">
                                        <li id="" class="btn btn-primary" >
                                            <a href="#myModal" data-toggle="modal"> 添加</a>	<i class="fa fa-plus"></i>
                                        </li>
                                        <%--<a href="#" class="adminsort" id="super">超级</a>--%>
                                        <%--<a href="#" class="adminsort" id="advanced">高级</a>--%>
                                        <%--<a href="#" class="adminsort admin-current" id="normal">普通</a>--%>
                                    </div>
                                    <div>

                                    </div>
                                </div>
                                <div class="space15"></div>
                                <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                    <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>用户名</th>
                                        <th>管理级别</th>
                                        <th>操作</th>
                                        <th>ID</th>
                                    </tr>
                                    </thead>
                                    <tbody id="tabody">


                                    <%
                                        int i = 0;
                                    %>
                                    <%--先显示超级管理员--%>
                                    <c:forEach items="${managerList}"  var="manager" varStatus="status1">
                                        <tr class="">
                                            <c:if test="${manager.status == 2}">
                                                <td><%=++i%></td>
                                                <td>${manager.username}</td>
                                                <td class="center">超级管理员</td>
                                                <td></td>
                                                <td>${manager.id}</td>
                                            </c:if>
                                        </tr>
                                        <c:if test="${status1.last eq true}">
                                            <%--再显示高级管理员 --%>
                                            <c:forEach items="${managerList}"  var="manager" varStatus="status2">
                                                <tr class="" >
                                                    <c:if test="${manager.status == 1}">
                                                        <td><%=++i%></td>
                                                        <td>${manager.username}</td>

                                                        <c:if test="${managerStatus != '2'}">
                                                            <td>高级管理员</td>
                                                            <td></td>
                                                        </c:if>


                                                        <c:if test="${managerStatus == '2'}">
                                                            <td class="center">高级管理员</td>
                                                            <td><p>
                                                                <a href="${website}man/delete/${manager.id}">删除</a>
                                                                <a class="editAdmin" href="javascript:;">修改</a>
                                                            </p></td>
                                                        </c:if>
                                                        <td>${manager.id}</td>


                                                    </c:if>
                                                </tr>
                                                <c:if test="${status2.last eq true}">
                                                    <c:forEach items="${managerList}"  var="manager" varStatus="status3">
                                                        <tr class="">
                                                            <c:if test="${manager.status == 0}">
                                                                <td><%=++i%></td>
                                                                <td>${manager.username}</td>

                                                                <c:if test="${managerStatus == '0'}">
                                                                    <td class="center">普通管理员</td>
                                                                    <td></td>
                                                                </c:if>


                                                                <c:if test="${managerStatus != '0'}">
                                                                    <td class="center">普通管理员</td>
                                                                    <td><p>
                                                                        <a href="${website}man/delete/${manager.id}">删除</a>
                                                                        <a class="editAdmin" href="javascript:;">修改</a>
                                                                    </p></td>
                                                                </c:if>
                                                                <td>${manager.id}</td>
                                                            </c:if>
                                                        </tr>
                                                    </c:forEach>
                                                </c:if>
                                            </c:forEach>

                                        </c:if>
                                    </c:forEach>

                                    <!--<tr class="">
                                        <td>井冉</td>
                                        <td>16级</td>
                                        <td>计算机</td>
                                        <td class="center">普通管理员</td>
                                        <td><a class="edit" href="javascript:;">编辑</a></td>
                                        <td><a class="delete" href="javascript:;">删除</a></td>
                                    </tr>
                                    <tr class="">
                                        <td>吕国馨</td>
                                        <td>16级</td>
                                        <td>软件工程</td>
                                        <td class="center">普通管理员</td>
                                        <td><a class="editt" href="javascript:;">编辑</a></td>
                                        <td><a class="delete" href="javascript:;">删除</a></td>
                                    </tr>
                                    <tr class="">
                                        <td>李瑞超</td>
                                        <td>16级</td>
                                        <td>软件工程</td>
                                        <td class="center">普通管理员</td>
                                        <td><a class="edit" href="javascript:;">编辑</a></td>
                                        <td><a class="delete" href="javascript:;">删除</a></td>
                                    </tr>
                                    <tr class="">
                                        <td>李可欣</td>
                                        <td>16级</td>
                                        <td>软件工程</td>
                                        <td class="center">普通管理员</td>
                                        <td><a class="edit" href="javascript:;">编辑</a></td>
                                        <td><a class="delete" href="javascript:;">删除</a></td>
                                    </tr>
                                    <tr class="">
                                        <td>李浩涌</td>
                                        <td>16级</td>
                                        <td>软件工程</td>
                                        <td class="center">普通管理员</td>
                                        <td><a class="edit" href="javascript:;">编辑</a></td>
                                        <td><a class="delete" href="javascript:;">删除</a></td>
                                    </tr>
                                    <tr class="">
                                        <td>薛智麟</td>
                                        <td>16级</td>
                                        <td>软件工程</td>
                                        <td class="center">普通管理员</td>
                                        <td><a class="edit" href="javascript:;">编辑</a></td>
                                        <td><a class="delete" href="javascript:;">删除</a></td>
                                    </tr>
                                    <tr class="">
                                        <td>刘士奇</td>
                                        <td>16级</td>
                                        <td>软件工程</td>
                                        <td class="center">普通管理员</td>
                                        <td><a class="edit" href="javascript:;">编辑</a></td>
                                        <td><a class="delete" href="javascript:;">删除</a></td>
                                    </tr>
                                    <tr class="">
                                        <td>曹滢</td>
                                        <td>16级</td>
                                        <td>软件工程</td>
                                        <td class="center">普通管理员</td>
                                        <td><a class="edit" href="javascript:;">编辑</a></td>
                                        <td><a class="delete" href="javascript:;">删除</a></td>
                                    </tr>
                                    <tr class="">
                                        <td>吴晓阳</td>
                                        <td>16级</td>
                                        <td>软件工程</td>
                                        <td class="center">高级管理员</td>
                                        <td><a class="edit" href="javascript:;">编辑</a></td>
                                        <td><a class="delete" href="javascript:;">删除</a></td>
                                    </tr>-->
                                    </tbody>
                                </table>
                                ${message}
                            </div>


                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">添加管理员</h4>
                                        </div>

                                        <div class="modal-body row">

                                            <form action="" method="" class="addp">
                                                <table>
                                                    <tr>
                                                        <td class="ad">用户名  </td><td><input type="text" name="username" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="ad">默认密码 </td><td><input type="text" value="admin" name="password"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="ad">管理权限 </td>
                                                        <td>
                                                            <select>
                                                                <option>普通管理员</option>
                                                                <option>高级管理员</option>
                                                                <option>超级管理员</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br>
                                                <input type="submit" class="subit"/>
                                            </form>

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- modal -->
                            <!-- Modal -->
                            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">修改个人信息</h4>
                                        </div>

                                        <div class="modal-body row">

                                            <form action="" method="" class="mofy">
                                                <table>
                                                    <tr>
                                                        <td>用户名  </td><td><input type="text" name="username" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>请输入原密码  </td><td><input type="password" name="oldpass" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>请输入新密码  </td><td><input type="password" name="newpass" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>确认新密码  </td><td><input type="password" name="repass" /></td>
                                                    </tr>
                                                </table>
                                                <br>
                                                <input type="submit" class="subit"/>
                                            </form>

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- modal -->



                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!--body wrapper end-->

        <!--footer section start-->
        <footer class="sticky-footer">

        </footer>
        <!--footer section end-->


    </div>
    <!-- main content end-->
</section>


<!-- Placed js at the end of the document so the pages load faster -->

<script src="../../../js/jquery-1.10.2.min.js"></script>
<%--<script src="../../../js/data-tables/jquery.dataTables.js"></script>--%>
<%--<script src="../../../js/data-tables/DT_bootstrap.js"></script>--%>
<script src="../../../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../../../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../../../js/bootstrap.min.js"></script>
<script src="../../../js/modernizr.min.js"></script>
<script src="../../../js/jquery.nicescroll.js"></script>
<script src="../../../js/jquery.isotope.js"></script>
<!--data table-->
<script type="text/javascript" src="../../../js/data-tables/getAdminData.js"></script>
<%--<script type="text/javascript" src="../../../js/data-tables/jquery.dataTables.js"></script>--%>
<%--<script type="text/javascript" src="../../../js/data-tables/DT_bootstrap.js"></script>--%>

<!--common scripts for all pages-->
<script src="../../../js/scripts.js"></script>

<!--script for editable table-->
<script src="../../../js/editable-table.js"></script>

<!-- END JAVASCRIPTS -->
<script>
    jQuery(document).ready(function() {
        EditableTable.init();
    });
</script>


</body>
</html>
