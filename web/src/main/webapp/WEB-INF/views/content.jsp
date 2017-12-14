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
    <link rel="shortcut icon" href="#" type="image/png">

    <title>后台管理页面</title>

    <link href="../../css/admin/style.css" rel="stylesheet">
    <link href="../../css/admin/style-responsive.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../css/admin/bootstrap-fileupload.min.css" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../../js/html5shiv.js"></script>
    <script src="../../js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="sticky-header">

<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="index.html"><img src="../../img/admin/logo.jpg" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.html"><img src="../../img/admin/logo_icon.jpg" alt=""></a>
        </div>
        <!--logo and iconic logo end-->


        <div class="left-side-inner">

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
            <form class="searchform" action="${website}image/list" method="post">
                <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
            </form>
            <!--search end-->

            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img src="../../../img/admin/user5.jpg" alt=""/>
                            John Doe
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="${website}man/single">修改个人资料</a></li>
                            <li class="divider"></li>
                            <li><a href="${website}man/logout"><i class="fa fa-sign-out"></i>退出账号</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
            <!--notification menu end -->

        </div>
        <!-- header section end-->

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                图片管理
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="#">图片管理</a>
                </li>
                <li class="active">首页图片管理</li>
            </ul>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">
                            轮播图片
                            <span class="tools pull-right">
                                <a href="javascript:;" class="fa fa-chevron-down"></a>
                                <a href="javascript:;" class="fa fa-times"></a>
                             </span>
                        </header>
                        <div class="panel-body">




                            <div id="gallery" class="media-gal">
                                <%--<c:forEach items="${slImageList}" var="slImage" varStatus="status">--%>
                                <%--<div style="float: left;padding: 20px;margin: 2%;text-align: center;">--%>
                                <%--<h2>${status.index+1}</h2>--%>
                                <%--<img style="width: 240px;height: 150px;" src="${slImage.imgName}" />--%>
                                <%--<p>${image.uploadImgTime}</p>--%>
                                <%--</div>--%>
                                <%--</c:forEach>--%>
                                <c:forEach items="${slImageList}" var="slImage" varStatus="status">
                                    <div class="images item " >
                                        <a href="#" data-toggle="modal">
                                            <img src="${slImage.imgName}" alt="" />
                                        </a>
                                        <p>${slImage.smaName}</p>
                                            <%--<button class="btn btn-danger btn-lg btn-block" type="button">删除</button>--%>
                                            <a class="btn btn-danger btn-lg btn-block" href="${website}image/select/${slImage.id}">删除</a>
                                    </div>
                                </c:forEach>
                            </div>
                            <!-- Modal -->
                            <!--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">图片编辑</h4>
                                        </div>

                                        <div class="modal-body row">

                                            <div class="col-md-5 img-modal">

                                       					<div class="fileupload fileupload-new" data-provides="fileupload">
				                                             <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
					                                                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
					                                            </div>
					                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
				                                            	<div>
				                                                   <span class=" btn-file">
				                                                   <span><i class="fa fa-paper-clip"></i><a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>修改图片</a></span>
				                                                   <input type="file" class="default" />
				                                                   </span>
				                                            	</div>
				                                        </div>
                                                <p class="mtop10"><strong>图片名:</strong> img01.jpg</p>
                                                <p><strong>图片类型:</strong> jpg</p>
                                                <p><strong>分辨率:</strong> 300x200</p>
                                                <p><strong>上传者:</strong> <a href="#">菜鸡</a></p>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="form-group">
                                                    <label> 图片名</label>
                                                    <input id="name" value="img01.jpg" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label> 描述</label>
                                                    <textarea rows="2" class="form-control"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label> 地址</label>
                                                    <input id="link" value="images/gallery/img01.jpg" class="form-control">
                                                </div>
                                                <div class="pull-right">
                                                    <button class="btn btn-danger btn-sm" type="button">取消</button>
                                                    <button class="btn btn-success btn-sm" type="button">保存</button>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>-->
                            <!-- modal -->

                        </div>
                    </section>
                </div>
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">
                            全部图片管理
                            <span class="tools pull-right">
                                <a href="javascript:;" class="fa fa-chevron-down"></a>
                                <a href="javascript:;" class="fa fa-times"></a>
                             </span>
                        </header>
                        <div class="panel-body">

                            <%--<form action="${website}image/add_image" method="post" enctype="multipart/form-data">--%>
                            <%--<td><input type="file" name="file"></td>--%>
                            <%--<td colspan="4"><input type="submit" name="submit" value="添加" style="margin-left: 45%;border-radius: 6px;font-size: 16px;padding: 10px 26px;"></td>--%>
                            <%--</form>--%>

                            <div class="btn-group pull-right">
                                <form action="${website}image/add_image" method="post" enctype="multipart/form-data">
                                    <div class="fileupload fileupload-exists" data-provides="fileupload"><input type="hidden" value="">
                                        <div>
                                            <td><input type="file" name="file"></td>
                                            <td colspan="4"><input type="submit" name="submit" value="添加" class="btn btn-success fileupload-exists"></td>
                                            <%--<span class="btn btn-default btn-file" style="border: none;">--%>
                                            <%--<button type="button" class="btn" ><a href="#" data-toggle="modal" >添加</a></button>--%>
                                            <%--<input class="default" type="file" name="file" id="imageField">--%>
                                            <%--</span>--%>
                                            <%--<input class="btn btn-success fileupload-exists" type="submit" name="submit" value="确定" >--%>
                                            <%--<i class="fa fa-trash"></i>--%>
                                        </div>
                                        <%--<span class="fileupload-preview" style="margin-left:5px;"></span>--%>
                                        <%--<a class="close fileupload-exists" style="float: none; margin-left:5px;" href="#" data-dismiss="fileupload"></a>--%>
                                    </div>
                                </form>
                            </div>

                            <%--<c:forEach items="${imageList}" var="image" varStatus="status">--%>
                            <%--<div style="float: left;padding: 20px;margin: 2%;text-align: center;">--%>
                            <%--<h2>${status.index+1}</h2>--%>
                            <%--<img style="width: 240px;height: 150px;" src="${image.imgName}" />--%>
                            <%--<p>${image.uploadImgTime}</p>--%>
                            <%--<a class="btn" href="${website}image/select/${image.id}">选择/取消</a>--%>
                            <%--</div>--%>
                            <%--</c:forEach>--%>

                            <div id="gallery" class="media-gal">
                                <c:forEach items="${imageList}" var="image" varStatus="status">
                                    <div class="images item " >
                                        <a href="#myModal1" data-toggle="modal">
                                            <img src="${image.imgName}" alt="" />
                                        </a>
                                        <p>${image.smaName}</p>
                                        <div class="btn-group btn-group-justified">
                                            <c:if test="${image.select==0}">
                                                <a class="btn btn-info" href="${website}image/select/${image.id}">轮播</a>
                                            </c:if>
                                            <c:if test="${image.select==1}">
                                                <a class="btn btn-primary" href="${website}image/select/${image.id}">已选</a>
                                            </c:if>
                                            <a class="btn btn-danger" href="${website}image/delete/${image.id}">删除</a>
                                        </div>
                                    </div>
                                </c:forEach>


                            </div>
                            <!-- Modal -->
                            <!--<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">图片编辑</h4>
                                        </div>

                                        <div class="modal-body row">

                                            <div class="col-md-5 img-modal">

                                       					<div class="fileupload fileupload-new" data-provides="fileupload">
				                                             <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
					                                                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
					                                            </div>
					                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
				                                            	<div>
				                                                   <span class=" btn-file">
				                                                   <span><i class="fa fa-paper-clip"></i><a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>修改图片</a></span>
				                                                   <input type="file" class="default" />
				                                                   </span>
				                                            	</div>
				                                        </div>
                                                <p class="mtop10"><strong>图片名:</strong> img01.jpg</p>
                                                <p><strong>图片类型:</strong> jpg</p>
                                                <p><strong>分辨率:</strong> 300x200</p>
                                                <p><strong>上传者:</strong> <a href="#">菜鸡</a></p>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="form-group">
                                                    <label> 图片名</label>
                                                    <input id="name" value="img01.jpg" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label> 描述</label>
                                                    <textarea rows="2" class="form-control"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label> 地址</label>
                                                    <input id="link" value="images/gallery/img01.jpg" class="form-control">
                                                </div>
                                                <div class="pull-right">
                                                    <button class="btn btn-info btn-sm" type="button">轮播</button>
                                                    <button class="btn btn-danger btn-sm" type="button">删除</button>
                                                    <button class="btn btn-success btn-sm" type="button">保存</button>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>-->
                            <!-- modal -->

                        </div>
                    </section>
                </div>
                <%--<div class="col-sm-12">--%>
                    <%--<section class="panel">--%>
                        <%--<header class="panel-heading">--%>
                            <%--项目管理--%>
                            <%--<span class="tools pull-right">--%>
                                <%--<a href="javascript:;" class="fa fa-chevron-down"></a>--%>
                                <%--<a href="javascript:;" class="fa fa-times"></a>--%>
                             <%--</span>--%>
                        <%--</header>--%>
                        <%--<div class="panel-body">--%>


                            <%--<div class="btn-group pull-right">--%>
                                <%--<button type="button" class="btn btn-primary btn-sm"><i class="fa fa-folder-open"></i><a href="#myModal2" data-toggle="modal"> 新建</a></button>--%>
                            <%--</div>--%>



                            <%--<div id="gallery" class="media-gal">--%>
                                <%--<div class="images item " >--%>
                                    <%--<a href="#myModal2" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image1.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img01.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" audio item " >--%>
                                    <%--<a href="#myModal2" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image2.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img02.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" images audio item " >--%>
                                    <%--<a href="#myModal2" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image4.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img04.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" images documents item " >--%>
                                    <%--<a href="#myModal2" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image5.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img05.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" audio item " >--%>
                                    <%--<a href="#myModal2" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image1.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img01.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" documents item " >--%>
                                    <%--<a href="#myModal2" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image2.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img02.jpg </p>--%>
                                <%--</div>--%>
                                <%--<div class=" video item " >--%>
                                    <%--<a href="#myModal2" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image3.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img03.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" images item " >--%>
                                    <%--<a href="#myModal2" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image4.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img04.jpg </p>--%>
                                <%--</div>--%>

                            <%--</div>--%>
                            <%--<!-- Modal -->--%>
                            <%--<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
                                <%--<div class="modal-dialog">--%>
                                    <%--<div class="modal-content">--%>
                                        <%--<div class="modal-header">--%>
                                            <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
                                            <%--<h4 class="modal-title">项目编辑</h4>--%>
                                        <%--</div>--%>

                                        <%--<div class="modal-body row">--%>

                                            <%--<div class="col-md-5 img-modal">--%>

                                                <%--<div class="fileupload fileupload-new" data-provides="fileupload">--%>
                                                    <%--<div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">--%>
                                                        <%--<img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />--%>
                                                    <%--</div>--%>
                                                    <%--<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>--%>
                                                    <%--<div>--%>
				                                                   <%--<span class=" btn-file">--%>
				                                                   <%--<span><i class="fa fa-paper-clip"></i><a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>修改图片</a></span>--%>
				                                                   <%--<input type="file" class="default" />--%>
				                                                   <%--</span>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<p class="mtop10"><strong>项目名:</strong> img01.jpg</p>--%>
                                                <%--<p><strong>上传者:</strong> <a href="#">菜鸡</a></p>--%>
                                                <%--<p><strong>上传时间:</strong> <a href="#">2016.10.10</a></p>--%>
                                            <%--</div>--%>
                                            <%--<div class="col-md-7">--%>
                                                <%--<div class="form-group">--%>
                                                    <%--<label> 项目名</label>--%>
                                                    <%--<input id="name" value="img01.jpg" class="form-control">--%>
                                                <%--</div>--%>
                                                <%--<div class="form-group">--%>
                                                    <%--<label> 描述</label>--%>
                                                    <%--<textarea rows="5" class="form-control"></textarea>--%>
                                                <%--</div>--%>
                                                <%--<div class="pull-right">--%>
                                                    <%--<button class="btn btn-info btn-sm" type="button">展示</button>--%>
                                                    <%--<button class="btn btn-danger btn-sm" type="button">删除</button>--%>
                                                    <%--<button class="btn btn-success btn-sm" type="button">保存</button>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>

                                        <%--</div>--%>

                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<!-- modal -->--%>

                        <%--</div>--%>
                    <%--</section>--%>
                <%--</div>--%>
                <%--<div class="col-sm-12">--%>
                    <%--<section class="panel">--%>
                        <%--<header class="panel-heading">--%>
                            <%--活动管理--%>
                            <%--<span class="tools pull-right">--%>
                                <%--<a href="javascript:;" class="fa fa-chevron-down"></a>--%>
                                <%--<a href="javascript:;" class="fa fa-times"></a>--%>
                             <%--</span>--%>
                        <%--</header>--%>
                        <%--<div class="panel-body">--%>


                            <%--<div class="btn-group pull-right">--%>
                                <%--<button type="button" class="btn btn-primary btn-sm"><i class="fa fa-check-square-o"></i><a href="#" > 全选</a></button>--%>
                                <%--<button type="button" class="btn btn-primary btn-sm"><i class="fa fa-folder-open"></i><a href="#myModal3" data-toggle="modal"> 新建</a></button>--%>
                                <%--<button type="button" class="btn btn-primary btn-sm"><i class="fa fa-trash-o"></i><a href="#"> 删除</a></button>--%>
                            <%--</div>--%>



                            <%--<div id="gallery" class="media-gal">--%>
                                <%--<div class="images item " >--%>
                                    <%--<a href="#myModal3" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image1.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img01.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" audio item " >--%>
                                    <%--<a href="#myModal3" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image2.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img02.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" images audio item " >--%>
                                    <%--<a href="#myModal3" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image4.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img04.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" images documents item " >--%>
                                    <%--<a href="#myModal3" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image5.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img05.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" audio item " >--%>
                                    <%--<a href="#myModal3" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image1.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img01.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" documents item " >--%>
                                    <%--<a href="#myModal3" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image2.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img02.jpg </p>--%>
                                <%--</div>--%>
                                <%--<div class=" video item " >--%>
                                    <%--<a href="#myModal3" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image3.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img03.jpg </p>--%>
                                <%--</div>--%>

                                <%--<div class=" images item " >--%>
                                    <%--<a href="#myModal3" data-toggle="modal">--%>
                                        <%--<img src="images/gallery/image4.jpg" alt="" />--%>
                                    <%--</a>--%>
                                    <%--<p>img04.jpg </p>--%>
                                <%--</div>--%>

                            <%--</div>--%>
                            <%--<!-- Modal -->--%>
                            <%--<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
                                <%--<div class="modal-dialog">--%>
                                    <%--<div class="modal-content">--%>
                                        <%--<div class="modal-header">--%>
                                            <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
                                            <%--<h4 class="modal-title">活动编辑</h4>--%>
                                        <%--</div>--%>

                                        <%--<div class="modal-body row">--%>

                                            <%--<div class="col-md-5 img-modal">--%>

                                                <%--<div class="fileupload fileupload-new" data-provides="fileupload">--%>
                                                    <%--<div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">--%>
                                                        <%--<img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />--%>
                                                    <%--</div>--%>
                                                    <%--<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>--%>
                                                    <%--<div>--%>
				                                                   <%--<span class=" btn-file">--%>
				                                                   <%--<span><i class="fa fa-paper-clip"></i><a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>修改图片</a></span>--%>
				                                                   <%--<input type="file" class="default" />--%>
				                                                   <%--</span>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<p class="mtop10"><strong>活动名:</strong> 春游</p>--%>
                                                <%--<p><strong>地点:</strong> <a href="#">大厅</a></p>--%>
                                            <%--</div>--%>
                                            <%--<div class="col-md-7">--%>
                                                <%--<div class="form-group">--%>
                                                    <%--<label> 活动名</label>--%>
                                                    <%--<input id="name" value="img01.jpg" class="form-control">--%>
                                                <%--</div>--%>
                                                <%--<div class="form-group">--%>
                                                    <%--<label> 描述</label>--%>
                                                    <%--<textarea rows="5" class="form-control"></textarea>--%>
                                                <%--</div>--%>
                                                <%--<div class="pull-right">--%>
                                                    <%--<button class="btn btn-info btn-sm" type="button">展示</button>--%>
                                                    <%--<button class="btn btn-danger btn-sm" type="button">删除</button>--%>
                                                    <%--<button class="btn btn-success btn-sm" type="button">保存</button>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>

                                        <%--</div>--%>

                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<!-- modal -->--%>

                        <%--</div>--%>
                    <%--</section>--%>
                <%--</div>--%>

            </div>
        </div>
        <!--body wrapper end-->

        <!--footer section start-->
        <footer>
            2014 &copy; AdminEx by <a href="http://www.mycodes.net/" target="_blank">源码之家</a>
        </footer>
        <!--footer section end-->


    </div>
    <!-- main content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="../../js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../../js/bootstrap-fileupload.min.js"></script>
<script src="../../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/modernizr.min.js"></script>
<script src="../../js/jquery.nicescroll.js"></script>

<script src="../../js/jquery.isotope.js"></script>

<!--common scripts for all pages-->
<script src="../../js/scripts.js"></script>

<script type="text/javascript">
    $(function() {
        var $container = $('#gallery');
        $container.isotope({
            itemSelector: '.item',
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });

        // filter items when filter link is clicked
        $('#filters a').click(function() {
            var selector = $(this).attr('data-filter');
            $container.isotope({filter: selector});
            return false;
        });
    });
</script>

</body>
</html>
