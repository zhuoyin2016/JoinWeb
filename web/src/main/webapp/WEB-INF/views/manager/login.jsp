<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/12/9
  Time: 17:00
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

    <title>Login</title>

    <link href="../../../css/style.css" rel="stylesheet">
    <link href="../../../css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../../../js/html5shiv.js"></script>
    <script src="../../../js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-body">

<div class="container">

    <form class="form-signin" action="${website}man/dologin" method="post">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">Sign In</h1>
            <img src="../../../images/join.png" alt=""/>
        </div>
       <center> ${message}</center>
        <div class="login-wrap">
            <input name="currentUsername" type="text" class="form-control" placeholder="Username" autofocus>
            <input name="currentPassword" type="password" class="form-control" placeholder="Password">

            <button class="btn btn-lg btn-login btn-block" type="submit">
               <i class="fa fa-check"></i>
            </button>
        </div>

    </form>

</div>



<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="../../../js/jquery-1.10.2.min.js"></script>
<script src="../../../js/bootstrap.min.js"></script>
<script src="../../../js/modernizr.min.js"></script>

</body>
</html>
