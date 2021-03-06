<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: TestUser
  Date: 2017/10/19
  Time: 19:42
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
    <link href=".../../../css/admin/bootstrap-responsive.css" rel="stylesheet">
</head>
<script>
    //预览功能
    function setImagePreview() {
        var docObj = document.getElementById("doc");
        var imgObjPreview = document.getElementById("preview");
        if (docObj.files && docObj.files[0]) {
            //火狐下，直接设img属性
            imgObjPreview.style.display = 'block';
            imgObjPreview.style.width = '350px';
            imgObjPreview.style.height = '400px';
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
            localImagId.style.height = "400px";
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
<body>
      <%--头部跟侧栏--%>
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
                                    <li><a class="small-li-of-a"
                                           href="${website}member/queryByDepartment/${1}">研究生团队</a></li>
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${2}">前端</a>
                                    </li>
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${3}">后端</a>
                                    </li>
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${4}">产品部</a>
                                    </li>
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
                    <li><a href="${website}project/listAllProject">项目</a></li>
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
                    <h1>增加成员信息</h1>
                </div>


                <%--增加成员--%>
                <form action="${website}member/toaddMember" method="POST" enctype="multipart/form-data"
                      class="form-horizontal">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="role">头像</label>
                            <%--实现图片上传预览功能--%>
                            <div id="localImag">
                                <img id="preview" width=-1 height=-1 style="diplay:none"/>
                            </div>
                            <%--上传头像--%>
                            <div class="controls">
                                <input type='text' name='memberPhoto' id='textfield' class='txt'/>
                                <input type="file" name="file" class="file" id="doc" size="28" value="上传头像"
                                       onchange="document.getElementById('textfield').value=this.value; javascript:setImagePreview();"/>
                            </div>

                        </div>
                        <div class="control-group">
                            <label class="control-label" for="role">姓名</label>
                            <div class="controls">
                                <input type="text" class="input-xlarge" id="role" name="memberName"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="eee">性别</label>
                            <div class="controls">
                                <select type="selected" class="input-xlarge" id="eee" name="sex">
                                    <option value="">请选择...</option>
                                    <option value="女">女</option>
                                    <option value="男">男</option>
                                </select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="eee">年级</label>
                            <div class="controls">
                                <select type="selected" class="input-xlarge" id="eee" name="grade">
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
                        <div class="control-group">
                            <label class="control-label" for="eee">职务</label>
                            <div class="controls">
                                <select type="selected" class="input-xlarge" id="eee" name="position">
                                    <option value="0">请选择...</option>
                                    <option value="1">主任</option>
                                    <option value="2">副主任</option>
                                    <option value="3">负责人</option>
                                    <option value="4">成员</option>
                                </select>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="eee">部门</label>
                            <div class="controls">
                                <select type="selected" class="input-xlarge" id="eee" name="department">
                                    <option value="0">请选择...</option>
                                    <option value="1">研究生团队</option>
                                    <option value="2">前端</option>
                                    <option value="3">后端</option>
                                    <option value="4">产品部</option>
                                </select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="role">专业</label>
                            <div class="controls">
                                <input type="text" class="input-xlarge" id="role" name="major"/>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="role">个人简介</label>
                            <div class="controls">
                                <textarea type="text" class="input-xlarge" id="role" name="introduce"></textarea>
                            </div>
                        </div>
                        <p id="visible" hidden>可见：<input type="text" name="visible" value="1"/></p>

                        <div class="form-actions">
                            <input type="submit" value="确认添加"/>
                        </div>

                    </fieldset>
                    ${message}
                </form>

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
