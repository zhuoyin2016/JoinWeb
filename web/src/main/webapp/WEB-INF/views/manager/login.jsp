<%--
  Created by IntelliJ IDEA.
<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/10/18
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>


<%--最初jsp代码--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>管理员登录</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<center style="margin-top: 100px">--%>
    <%--<form action="${website}man/login" method="post">--%>
        <%--<table>--%>
            <%--<tr>--%>
                <%--<td>用户名</td>--%>
                <%--<td><input name="currentUsername" type="text"></td>--%>
            <%--</tr>--%>

            <%--<tr>--%>
                <%--<td>密码</td>--%>
                <%--<td><input name="currentPassword" type="password"></td>--%>
            <%--</tr>--%>

        <%--</table>--%>
        <%--<button>登录</button>--%>
    <%--</form>--%>
    <%--${message}--%>
<%--</center>--%>
<%--</body>--%>
<%--</html>--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="brand" href="#"></a>


            <div class="nav-collapse">

            </div>
        </div>
    </div>
</div>


        </div>
        <div class="span9" style="margin-left: 30%;width: 500px;">
            <div class="row-fluid">
                <div class="page-header">
                    <h1>管理员登录</h1>
                </div>

                <form class="form-horizontal" action="${website}man/dologin" method="post">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="role">用户名</label>
                            <div class="controls" style="margin-bottom:10px;">
                                <select type="selected"  id="role" name = "currentUsername">
                                    <c:forEach items="${managerList}" var="manager">
                                    <option value="${manager.username}">${manager.username}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="slug">密码</label>
                            <div class="controls">
                                <input type="password" class="password" id="slug" name = "currentPassword" />
                            </div>
                            <div class="form-actions">
                                <button class="btn" style="margin-left: 40px;">登录</button>
                                <input type="reset" name="reset" value="重置" class="btn">
                                <%--<a class="btn" href="index.jsp">退出</a>--%>
                            </div>
                        </div>
                    </fieldset>
                </form>
                ${message}

                <%--<form action="${website}man/dologin" method="post">--%>
                    <%--<table>--%>
                        <%--<tr>--%>
                            <%--<td>用户名</td>--%>
                            <%--<td><input name="currentUsername" type="text"></td>--%>
                        <%--</tr>--%>

                        <%--<tr>--%>
                            <%--<td>密码</td>--%>
                            <%--<td><input name="currentPassword" type="password"></td>--%>
                        <%--</tr>--%>

                    <%--</table>--%>
                    <%--<button>登录</button>--%>
                <%--</form>--%>
                <%--${message}--%>

            </div>
        </div>


        <script src="../../../js/admin/jquery.js"></script>
        <script src="../../../js/admin/bootstrap.min.js"></script>
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
            //验证密码
            if($(this).is(".password")){
                if(this.value==""){

                }
                else{
                    alert("密码错误！")
                }
            }
        </script>
</body>
</html>