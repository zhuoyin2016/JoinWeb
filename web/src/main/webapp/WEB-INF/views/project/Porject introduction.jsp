<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>项目介绍</title>
    <link rel="stylesheet" type="text/css" href="../../../css/project/reset.css">
    <link rel="stylesheet" href="../../../css/index.css" />
    <link rel="stylesheet" type="text/css" href="../../../css/project/project introduction.css">
    <script src="../../../js/common/jQuery.js"></script>
    <script src="../../../js/head-page.js"></script>
    <script src="../../../js/project/project introduction.js"></script>
</head>
<body>
<!--#include file="head-page.html"-->
<!--#include file="side.html"-->
<div class="wrap">
    <div class="main">
        <h1 class="title1">
            项目介绍
        </h1>
        <c:forEach items="${projectList1}" var="project" varStatus="status">
            <div class="module">
                <div class="text text-one">
                    <h2 class="smatitle ">${project.name}</h2>
                    <h3 class="time fade">&nbsp;&nbsp;发起时间：${project.date}</h3>
                    <p class="paragraph fade">&nbsp;&nbsp;&nbsp;&nbsp;${project.content}</p>
                    <a href="http://www.dsjyw.net/">${project.notes}</a>
                </div>
                <img src="../../../image/projectImage/${project.image}" class="img img-one">
            </div>
        </c:forEach>
    </div>
</div>
<!--#include file="foot.html"-->
</body>
</html>
