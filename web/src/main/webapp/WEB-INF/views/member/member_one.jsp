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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>成员展示</title>

    <%--<link href="../../../css/member/style.css" rel="stylesheet">--%>
    <%--<link href="../../../css/member/style-responsive.css" rel="stylesheet">--%>
    <link href="../../../css/admin/style.css" rel="stylesheet">
    <link href="../../../css/admin/style-responsive.css" rel="stylesheet">

</head>
<script>
    //预览功能
    function setImagePreview() {
        var docObj = document.getElementById("doc");
        var imgObjPreview = document.getElementById("preview");
        if (docObj.files && docObj.files[0]) {
            //火狐下，直接设img属性
            imgObjPreview.style.display = 'block';
            imgObjPreview.style.width = '150px';
            imgObjPreview.style.height = '150px';
            //imgObjPreview.src = docObj.files[0].getAsDataURL();
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
            imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
        } else {
            //IE下，使用滤镜
            docObj.select();
            var imgSrc = document.selection.createRange().text;
            var localImagId = document.getElementById("localImag");
            //必须设置初始大小
            localImagId.style.width = "150px";
            localImagId.style.height = "150px";
            //图片异常的捕捉，防止用户修改后缀来伪造图片
            try {
                localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
            } catch (e) {
                alert("您上传的图片格式不正确，请重新选择!");
                return false;
            }
            imgObjPreview.style.display = 'none';
            document.selection.empty();
        }
        return true;
    }
</script>
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
    <div class="main-content">

        <!-- header section start-->
        <div class="header-section">

            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->

            <%--<!--search start-->--%>
            <%--<form class="searchform" action="${website}image/list" method="post">--%>
                <%--<input type="text" class="form-control" name="keyword" placeholder="Search here..." />--%>
            <%--</form>--%>
            <%--<!--search end-->--%>

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
                工作室成员管理
            </h3>
            <ul class="breadcrumb">
                <li class="active">研究生</li>
                <li class="active">前端</li>
                <li class="active">后端</li>
                <li class="active">产品部</li>
            </ul>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper" style="width: 90%;">
            <div class="row" style="width: 100%;">
                <div class="col-md-6" style="width: 100%;">
                    <section class="panel" style="width: 100%;">
                        <header class="panel-heading custom-tab dark-tab">
                    </header>

                        <!-- Modal -->
                        <div class="modal fade" id="myModal-" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title">添加成员</h4>
                                    </div>
                                    <form action="${website}member/toaddMember" method="POST" enctype="multipart/form-data"
                                          class="form-horizontal">
                                    <div class="modal-body row">

                                        <div class="col-md-5 img-modal">
                                            <div id="localImag">
                                                <img id="preview" width=-1 height=-1 style="diplay:none"/>
                                            </div>
                                            <div class="form-group">
                                                <input type='text' name='memberPhoto' id='textfield' class='txt'/>
                                                <input type="file" name="file" class="file" id="doc" size="28" value="上传头像" style="width: 100px"
                                                       onchange="document.getElementById('textfield').value=this.value; javascript:setImagePreview();"/>
                                            </div>

                                            <%--上传头像--%>

                                        </div>
                                        <div class="col-md-7">
                                            <div class="form-group">
                                                <label>姓名</label>
                                                <input type="text" class="form-control" id="role" name="memberName"/>

                                            </div>
                                            <div class="form-group">
                                                <label>性别</label>
                                                <select type="selected" class="form-control" id="eee" name="sex">
                                                    <option value="">请选择...</option>
                                                    <option value="女">女</option>
                                                    <option value="男">男</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>年级</label>
                                                <div class="controls">
                                                    <select type="selected" class="form-control" id="eee" name="grade">
                                                        <option value="0">请选择...</option>
                                                        <option value="2014">2014</option>
                                                        <option value="2015">2015</option>
                                                        <option value="2016">2016</option>
                                                        <option value="2017">2017</option>
                                                        <option value="2018">2018</option>
                                                        <option value="2019">2019</option>
                                                        <option value="2020">2020</option>
                                                        <option value="2021">2021</option>
                                                        <option value="2021">2022</option>
                                                        <option value="2022">2023</option>
                                                        <option value="2024">2024</option>
                                                        <option value="2025">2025</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>专业</label>
                                                <input id="major" value="" name="major"   class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>职务</label>
                                                <div class="controls">
                                                    <select type="selected" class="form-control" id="eee" name="position">
                                                        <option value="0">请选择...</option>
                                                        <option value="1">主任</option>
                                                        <option value="2">副主任</option>
                                                        <option value="3">负责人</option>
                                                        <option value="4">成员</option>
                                                    </select>
                                                </div>
                                                <%--<input id="title" value="" >--%>
                                            </div>
                                            <div class="form-group">
                                                <label>部门</label>
                                                <div class="controls">
                                                    <select type="selected" class="form-control" id="eee" name="department">
                                                        <option value="0">请选择...</option>
                                                        <option value="1">研究生团队</option>
                                                        <option value="2">前端</option>
                                                        <option value="3">后端</option>
                                                        <option value="4">产品部</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <p id="visible" hidden>可见：<input type="text" name="visible" value="1"/></p>
                                            <div class="form-group">
                                                <label>个人介绍</label>
                                                <textarea type="text" class="form-control" id="introduce" name="introduce"></textarea>
                                            </div>
                                            <div class="pull-right">
                                                <input class="btn btn-success btn-sm"  type="submit" value="添加">
                                            </div>
                                        </div>

                                    </div>
                                 </form>
                                </div>
                            </div>
                        </div>
                        <!-- modal -->


                        <div class="panel-body" style="width: 100%;">
                            <div class="tab-content">
                                <div class="tab-pane active" id="home2">
                                    <div class="wrapper">
                                        <div class="directory-info-row">
                                            <div class="row">
                                                <%--负责人列出来--%>
                                                <c:forEach items="${memberList}" var="memberList" varStatus="status">
                                                    <div class="people">
                                                        <c:if test="${memberList.visible=='1'}">
                                                            <c:if test="${memberList.position == '1'||memberList.position=='2'||memberList.position=='3'}">
                                                                <tbody>
                                                                <div class="col-md-6 col-sm-6">
                                                                    <div class="panel">
                                                                        <div class="panel-body">
                                                                            <h4>${memberList.memberName}</h4>
                                                                            <div class="media">
                                                                                <a class="pull-left" href="#">
                                                                                    <img class="thumb media-object" style="width: 100px;height: 100px"
                                                                                         src="../../../image/memberImage/${memberList.memberPhoto}" alt="">
                                                                                </a>
                                                                                <div class="media-body">
                                                                                    <address>
                                                                                        <strong><span><c:if
                                                                                                test="${memberList.position == '1'}">
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
                                                                                     </c:if></span></strong><br>
                                                                                        <span>${memberList.major}</span><br>

                                                                                        <p>${memberList.grade}</p>
                                                                                    </address>
                                                                                    <address>
                                                                                        <p>
                                                                                            个人简介：${memberList.introduce}</p>
                                                                                        <a href="${website}member/delMember/${memberList.id}">
                                                                                            <input type="button" name="" value="删除"  style="width: 40px;height: 30px;color: red;font-size: 12px;"></a>

                                                                                        <a href="${website}member/update/${memberList.id}"
                                                                                           data-toggle="modal"><input
                                                                                                type="button" name=""
                                                                                                value="修改"
                                                                                                style="width: 40px;height: 30px;color: red;font-size: 12px;"></a>
                                                                                    </address>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </c:if>
                                                            </tbody>
                                                        </c:if>
                                                    </div>
                                                </c:forEach>


                                                    <c:forEach items="${memberList}" var="memberList" varStatus="status">
                                                        <div class="people">
                                                            <c:if test="${memberList.visible=='1'}">
                                                                <%--2014级的--%>
                                                                <c:if test="${memberList.grade==2014&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                                                                    <tbody>
                                                                    <div class="col-md-6 col-sm-6">
                                                                        <div class="panel">
                                                                            <div class="panel-body">
                                                                                <h4>${memberList.memberName}</h4>
                                                                                <div class="media">
                                                                                    <a class="pull-left" href="#">
                                                                                        <img class="thumb media-object" style="width: 100px;height: 100px"
                                                                                             src="../../../image/memberImage/${memberList.memberPhoto}"
                                                                                             alt="">
                                                                                    </a>
                                                                                    <div class="media-body">
                                                                                        <address>
                                                                                            <strong><span><c:if
                                                                                                    test="${memberList.position == '1'}">
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
                                                                                           </c:if></span></strong><br>
                                                                                            <span>${memberList.major}</span><br>

                                                                                            <p>${memberList.grade}</p>
                                                                                        </address>
                                                                                        <address>
                                                                                            <p>
                                                                                                个人简介：${memberList.introduce}</p>

                                                                                            <a href="${website}member/delMember/${memberList.id}">
                                                                                                <input type="button" name="" value="删除"  style="width: 40px;height: 30px;color: red;font-size: 12px;"></a>

                                                                                            <a href="${website}member/update/${memberList.id}"
                                                                                               data-toggle="modal"><input
                                                                                                    type="button" name=""
                                                                                                    value="修改"
                                                                                                    style="width: 40px;height: 30px;color: red;font-size: 12px;"></a>
                                                                                        </address>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                                </tbody>
                                                            </c:if>
                                                        </div>
                                                    </c:forEach>

                                                    <c:forEach items="${memberList}" var="memberList" varStatus="status">
                                                        <div class="people">
                                                            <c:if test="${memberList.visible=='1'}">
                                                                <%--2015级的--%>
                                                                <c:if test="${memberList.grade==2015&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                                                                    <tbody>
                                                                    <div class="col-md-6 col-sm-6">
                                                                        <div class="panel">
                                                                            <div class="panel-body">
                                                                                <h4>${memberList.memberName}</h4>
                                                                                <div class="media">
                                                                                    <a class="pull-left" href="#">
                                                                                        <img class="thumb media-object" style="width: 100px;height: 100px"
                                                                                             src="../../../image/memberImage/${memberList.memberPhoto}"
                                                                                             alt="">
                                                                                    </a>
                                                                                    <div class="media-body">
                                                                                        <address>
                                                                                            <strong><span><c:if
                                                                                                    test="${memberList.position == '1'}">
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
                                                                                           </c:if></span></strong><br>
                                                                                            <span>${memberList.major}</span><br>

                                                                                            <p>${memberList.grade}</p>
                                                                                        </address>
                                                                                        <address>
                                                                                            <p>
                                                                                                个人简介：${memberList.introduce}</p>
                                                                                            <a href="${website}member/delMember/${memberList.id}">
                                                                                                <input type="button" name="" value="删除"  style="width: 40px;height: 30px;color: red;font-size: 12px;"></a>

                                                                                            <a href="${website}member/update/${memberList.id}"
                                                                                               data-toggle="modal"><input
                                                                                                    type="button" name=""
                                                                                                    value="修改"
                                                                                                    style="width: 40px;height: 30px;color: red;font-size: 12px;"></a>
                                                                                        </address>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                                </tbody>
                                                            </c:if>
                                                        </div>
                                                    </c:forEach>

                                                    <c:forEach items="${memberList}" var="memberList" varStatus="status">
                                                        <div class="people">
                                                            <c:if test="${memberList.visible=='1'}">
                                                                <%--2016级的--%>
                                                                <c:if test="${memberList.grade==2016&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                                                                    <tbody>
                                                                    <div class="col-md-6 col-sm-6">
                                                                        <div class="panel">
                                                                            <div class="panel-body">
                                                                                <h4>${memberList.memberName}</h4>
                                                                                <div class="media">
                                                                                    <a class="pull-left" href="#">
                                                                                        <img class="thumb media-object" style="width: 100px;height: 100px"
                                                                                             src="../../../image/memberImage/${memberList.memberPhoto}"
                                                                                             alt="">
                                                                                    </a>
                                                                                    <div class="media-body">
                                                                                        <address>
                                                                                            <strong><span><c:if
                                                                                                    test="${memberList.position == '1'}">
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
                                                                                           </c:if></span></strong><br>
                                                                                            <span>${memberList.major}</span><br>

                                                                                            <p>${memberList.grade}</p>
                                                                                        </address>
                                                                                        <address>
                                                                                            <p>
                                                                                                个人简介：${memberList.introduce}</p>
                                                                                            <a href="${website}member/delMember/${memberList.id}">
                                                                                                <input type="button" name="" value="删除"  style="width: 40px;height: 30px;color: red;font-size: 12px;"></a>

                                                                                            <a href="${website}member/update/${memberList.id}"
                                                                                               data-toggle="modal"><input
                                                                                                    type="button" name=""
                                                                                                    value="修改"
                                                                                                    style="width: 40px;height: 30px;color: red;font-size: 12px;"></a>
                                                                                        </address>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                                </tbody>
                                                            </c:if>
                                                        </div>
                                                    </c:forEach>
                                                    <c:forEach items="${memberList}" var="memberList" varStatus="status">
                                                        <div class="people">
                                                            <c:if test="${memberList.visible=='1'}">
                                                                <%--2017级的--%>
                                                                <c:if test="${memberList.grade==2017&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                                                                    <tbody>
                                                                    <div class="col-md-6 col-sm-6">
                                                                        <div class="panel">
                                                                            <div class="panel-body">
                                                                                <h4>${memberList.memberName}</h4>
                                                                                <div class="media">
                                                                                    <a class="pull-left" href="#">
                                                                                        <img class="thumb media-object" style="width: 100px;height: 100px"
                                                                                             src="../../../image/memberImage/${memberList.memberPhoto}"
                                                                                             alt="">
                                                                                    </a>
                                                                                    <div class="media-body">
                                                                                        <address>
                                                                                            <strong><span><c:if
                                                                                                    test="${memberList.position == '1'}">
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
                                                                                           </c:if></span></strong><br>
                                                                                            <span>${memberList.major}</span><br>

                                                                                            <p>${memberList.grade}</p>
                                                                                        </address>
                                                                                        <address>
                                                                                            <p>
                                                                                                个人简介：${memberList.introduce}</p>
                                                                                            <a href="${website}member/delMember/${memberList.id}">
                                                                                                <input type="button" name="" value="删除"  style="width: 40px;height: 30px;color: red;font-size: 12px;"></a>

                                                                                            <a href="${website}member/update/${memberList.id}"
                                                                                               data-toggle="modal"><input
                                                                                                    type="button" name=""
                                                                                                    value="修改"
                                                                                                    style="width: 40px;height: 30px;color: red;font-size: 12px;"></a>
                                                                                        </address>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                                </tbody>
                                                            </c:if>
                                                        </div>
                                                    </c:forEach>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <a href="#myModal-" data-toggle="modal"><input type="button" name="" value="添加成员"
                                                                           style="width: 90%;height: 30px;font-size: 18px; background-color: #65CEA7; border:1px solid #65CEA7; border-radius: 5px; color: #353f4f;"></a>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <!--body wrapper end-->

    <!--footer section start-->
    <!-- <footer>
        2014 &copy; AdminEx by <a href="http://www.mycodes.net/" target="_blank">源码之家</a>
    </footer> -->
    <!--footer section end-->


    </div>
    <!-- main content end-->
</section>

<!--你原本的-->
<!-- Placed js at the end of the document so the pages load faster -->

<%--<script src="../../../js/member/jquery-1.10.2.min.js"></script>--%>
<%--<script src="../../../js/member/jquery-ui-1.9.2.custom.min.js"></script>--%>
<%--<script src="../../../js/member/jquery-migrate-1.2.1.min.js"></script>--%>
<%--<script src="../../../js/member/bootstrap.min.js"></script>--%>
<%--<script src="../../../js/member/modernizr.min.js"></script>--%>
<%--<script src="../../../js/member/jquery.nicescroll.js"></script>--%>

<%--<!--common scripts for all pages-->--%>
<%--<script src="../../../js/member/scripts.js"></script>--%>

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
