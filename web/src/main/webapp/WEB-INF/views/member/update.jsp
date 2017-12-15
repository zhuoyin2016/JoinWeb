<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TestUser
  Date: 2017/10/20
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
    <%--<link href="../../../css/admin/site.css" rel="stylesheet">--%>
    <%--<link href="../../../css/admin/bootstrap-responsive.css" rel="stylesheet">--%>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>更改成员信息</title>

        <%--<link href="../../../css/member/style.css" rel="stylesheet">--%>
        <%--<link href="../../../css/member/style-responsive.css" rel="stylesheet">--%>
    <link href="../../../css/admin/style.css" rel="stylesheet">
    <link href="../../../css/admin/style-responsive.css" rel="stylesheet">

</head>

       <%--实现图片上传预览功能--%>
<script>
    function setImagePreview() {
        var docObj = document.getElementById("doc");
        var img = document.getElementById("i");
        var imgObjPreview = document.getElementById("preview");
        if (docObj.files && docObj.files[0]) {
            //火狐下，直接设img属性
            imgObjPreview.style.display = 'block';
            img.style.display = 'none'
            imgObjPreview.style.width = '300px';
            imgObjPreview.style.height = '300px';
            //imgObjPreview.src = docObj.files[0].getAsDataURL();
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
            imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
        } else {
            //IE下，使用滤镜
            docObj.select();
            var imgSrc = document.selection.createRange().text;
            var localImagId = document.getElementById("localImag");
            //必须设置初始大小
            localImagId.style.width = "300px";
            localImagId.style.height = "300px";
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
            <a href="index.html"><img src="../../../img/admin/logo.jpg" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.html"><img src="../../../img/admin/logo_icon.jpg" alt=""></a>
        </div>
        <!--logo and iconic logo end-->


        <div class="left-side-inner">

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li><a href="${website}man/all"><i class="fa fa-home"></i> <span>管理员管理</span></a></li>
                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>页面内容管理</span></a>
                    <ul class="sub-menu-list">
                        <li class="active"><a href="main-page.html"> 首页管理</a></li>
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
    <!-- main content start-->
    <div class="main-content">

        <!-- header section start-->
        <div class="header-section">

            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->

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
                成员信息更改
            </h3>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <section class="wrapper">
            <!-- page start-->




            <!-- Modal -->
            <div class="modal-dialog" style="width: 100%;">
                <div class="modal-content" style="width: 100%;">
                    <div class="modal-header">
                        <h4 class="modal-title">信息修改</h4>
                    </div>

                    <div class="modal-body row">
                        <form action="${website}member/toUpdate" method="post" class="form-horizontal"
                              enctype="multipart/form-data">

                        <div class="col-md-5 img-modal">
                            <p hidden>
                                <input name="id" value="${member.id}">
                            </p>
                            <div class="form-group">
                                <label class="control-label" for="role">头像</label>
                                <%--//显示头像--%>
                                <div class="controls">
                                    <img type="text" class="input-xlarge" id="i"
                                         src="../../../image/memberImage/${member.memberPhoto}"> </img>
                                </div>
                                <%--实现修改图像预览功能--%>
                                <div id="localImag" class="controls">
                                    <img id="preview" class="input-xlarge" width=-1 height=-1 style="diplay:none"/>
                                </div>
                            </div>
                            <p hidden>
                                <input type="text" name="memberPhoto" value="${member.memberPhoto}"/>
                            </p>
                            <%--修改头像--%>
                            <p>
                                <input type="file" name="file" class="file" id="doc" size="28" value="修改头像"
                                       onchange="javascript:setImagePreview();"/>
                            </p>
                        </div>
                        <div class="col-md-7" style="width: 80%;">
                            <div class="form-group">
                                <label>姓名</label>
                                <input type="text" class="form-control" id="role" name="memberName"
                                       value="${member.memberName}"/>
                            </div>
                            <div class="form-group">
                                <label>性别</label>
                                <select type="selected" class="form-control" id="eee" name="sex">
                                    <c:if test="${member.sex=='女'}">
                                        <option value="女" selected="selected">女</option>
                                        <option value="男">男</option>
                                    </c:if>
                                    <c:if test="${member.sex=='男'}">
                                        <option value="女">女</option>
                                        <option value="男" selected="selected">男</option>
                                    </c:if>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>年级</label>
                                <select type="selected" class="form-control" id="eee" name="grade">
                                    <option value="${member.grade}">${member.grade}</option>
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
                            <div class="form-group">
                                <label>部门</label>
                                <select type="selected" class="form-control" id="eee" name="department">
                                    <c:if test="${member.department=='1'}">
                                        <option value="1" selected="selected">研究生团队</option>
                                        <option value="2">前端</option>
                                        <option value="3">后端</option>
                                        <option value="4">产品队</option>
                                    </c:if>
                                    <c:if test="${member.department=='2'}">
                                        <option value="1">研究生团队</option>
                                        <option value="2" selected="selected">前端</option>
                                        <option value="3">后端</option>
                                        <option value="4">产品队</option>
                                    </c:if>
                                    <c:if test="${member.department=='3'}">
                                        <option value="1">研究生团队</option>
                                        <option value="2">前端</option>
                                        <option value="3" selected="selected">后端</option>
                                        <option value="4">产品队</option>
                                    </c:if>
                                    <c:if test="${member.department=='4'}">
                                        <option value="1">研究生团队</option>
                                        <option value="2">前端</option>
                                        <option value="3">后端</option>
                                        <option value="4" selected="selected">产品队</option>
                                    </c:if>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>职务</label>
                                <select type="selected" class="form-control"  id="eee" name="position">
                                    <c:if test="${member.department=='1'}">
                                        <option value="1" >主任</option>
                                        <option value="2">副主任</option>
                                        <option value="3">负责人</option>
                                        <option value="4">成员</option>
                                    </c:if>
                                    <c:if test="${member.department=='2'}">
                                        <option value="2" >副主任</option>
                                        <option value="1">主任</option>
                                        <option value="3">负责人</option>
                                        <option value="4">成员</option>
                                    </c:if>
                                    <c:if test="${member.department=='3'}">
                                        <option value="3" >负责人</option>
                                        <option value="1">主任</option>
                                        <option value="2">副主任</option>
                                        <option value="4">成员</option>
                                    </c:if>
                                    <c:if test="${member.department=='4'}">
                                        <option value="4">成员</option>
                                        <option value="1">主任</option>
                                        <option value="2">副主任</option>
                                        <option value="3">负责人</option>
                                    </c:if>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>专业</label>

                                <input type="text" class="form-control" id="role" value="${member.major}"
                                       name="major"/>
                            </div>


                            <div class="form-group">
                                <label>个人简介</label>
                                <textarea type="text" class="form-control" id="role" name="introduce"
                                          value="">${member.introduce}</textarea>
                            </div>
                            <p hidden>
                                <input type="hidden" name="visible" value="${member.visible}">
                            </p>
                            <input type="submit" value="确认修改" class="btn btn-success btn-sm" style="width: 100%;" />

                        </div>
                     </form>
                        ${message}

                    </div>

                </div>
            </div>
            <!-- modal -->




            <!-- page end-->
            <!--body wrapper end-->

</section>
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
