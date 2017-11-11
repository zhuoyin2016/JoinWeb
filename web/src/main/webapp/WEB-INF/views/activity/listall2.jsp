<%--
  Created by IntelliJ IDEA.
  User: LiuZhe
  Date: 2017/11/10
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>卓音</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../../../css/base/reset.css">
    <link rel="stylesheet" href="../../../css/page/style.css">
    <link rel="stylesheet" href="../../../css/page/activity.css">
    <script type="text/javascript" src="../../../js/common/jquery.js"></script>
    <script type="text/javascript" src="../../../js/page/head-page.js"></script>
    <script type="text/javascript" src="../../../js/page/activity.js"></script>
</head>

<body>

<!--#include file="head-page.html"-->
<!--#include file="side.html"-->
<div class="center">
    <h2 class="smatitle">活动信息</h2>
    <c:forEach items="${activityList}" var="activity" varStatus="status">
        <div class="left">
            <div class="pic" id="one">
                <img src="../../../image/activity_img/${activity.activityImg1}" class="big-pic">
                <div class="boot" id="bootone">
                </div>
                <p class="but" id="butone">
                    <a href="${website}activity/select/${activity.id}" class="href" id="hrefone" target="_blank">查看详情</a>
                </p>
            </div>
        </div>
    </c:forEach>
</div>
<!--#include file="foot.html"-->
</body>
</html>