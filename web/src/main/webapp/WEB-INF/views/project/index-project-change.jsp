
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html>
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
    <link href="../../../css/project/bootstrap.css" rel="stylesheet">
    <link href="../../../css/project/site.css" rel="stylesheet">
    <link href="../../../css/project/bootstrap-responsive.css" rel="stylesheet">
</head>
<body>
<!-- 导航栏 -->
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
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${1}">研究生团队</a></li>
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${2}">前端</a></li>
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${3}">后端</a></li>
                                    <li><a class="small-li-of-a" href="${website}member/queryByDepartment/${4}">产品部</a></li>
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
          	<div  class="page-header">
          		<h1>
          			内容
          			<small>项目</small>
          		</h1>
          	</div>
          	<p style="text-align: center;font-size: 25px;margin-bottom: 3%;">项目管理</p>
          	<div class="container-fluid">
          		<form class="form-horizontal"  method="GET">
          		<fieldset>
                   <input type="text" value="${projectId}" hidden />
                    <div class="control-group">
                        <label class="control-label">标题</label>
                        <div class="controls">
                            <input type="text" class="input-xlarge" name="name"/>
                        </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >时间</label>
                      <div class="controls">
                          <input type="text" class="input-xlarge"  value="" name="date"/>
                      </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">备注</label>
                        <div class="controls">
                            <input type="text" class="input-xlarge" name="notes"/>
                        </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="">介绍</label>
                      <div class="controls">
                        <textarea type="text" class="input-xlarge" id="role" name="content"></textarea>
                      </div>
                    </div>
                    <p style="margin-left: 20%;margin-top: 20px;"><a class="btn" href="${website}project/update/${projectId}">确认修改</a><a class="btn" href="index-project.html">取消</a><a class="btn" href="index-project.html">删除项目</a></p>
                </fieldset>
          	    </form>
          	</div>
          </div>
        </div>
      </div>
    </div>

    <script src="../js/jquery.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script>
  $(document).ready(function() {
    $('.dropdown-menu li a').hover(
    function() {
      $(this).children('i').addClass('icon-white');
    },
    function() {
      $(this).children('i').removeClass('icon-white');
    });
  });
  $(function(){
      $("a.big-li-of-a").next().hide();
      $(".level1_1 > a").click(function(){
              // 如果执行第一个level的下一个level
              if($(".level2_1").css("display")=="none"){
                  $(this).addClass("current") 
                  //给当前元素添加“current”元素  
                  $(".level2_1").show();//显示内容
                  return false;//避免<a>标签跳转
              } 

              else{//否则将内容隐藏（或者说是重新点击时隐藏）
                $(".level2_1").hide();                
              }               
            });
     });
  </script>
	</body>
</html>
