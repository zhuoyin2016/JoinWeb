<%--
  Created by IntelliJ IDEA.
  User: LiuZhe
  Date: 2017/11/10
  Time: 18:24
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
    <link rel="stylesheet" href="../../../css/page/style2.css">
    <link rel="stylesheet" href="../../../css/page/activity-one.css">
    <link rel="stylesheet" href="../../../css/page/evenZoom.css">
    <script src="../../../js/common/jquery.js"></script>
    <script src="../../../js/page/index.js"></script>
    <script src="../../../js/page/activity-one.js"></script>
    <script src="../../../js/page/evenZoom.js"></script>

    <script>
        $(function(){
            $(".dowebok").evenZoom();
        });
    </script>
</head>

<body>

<!--#include file="head.html"-->
<!--#include file="side.html"-->
<div class="center">
    <div class="left">
        <c:forEach items="${activityList}" var="activity" varStatus="status">
        <h1>活动简述</h1>
        <div class="content">
            <p class="para">
                    ${activity.activityContent}
            </p>
        </div>
    </div>
    <div class="right">
        <h2> ${activity.activityTitle}</h2>
        <p>发布时间： ${activity.activityTime}</p>
        </c:forEach>
        <!-- <div class="bord"> -->
        <div class="wrap">
            <div class="dowebok" data-zoomed="../resource/img/activity-one/big.jpg">
                <img src="../../../image/activity_img/${activity.activityImg1}" class="big-pic">
            </div>
        </div>
        <!-- </div> -->
    </div>
</div>

<!--#include file="foot.html"-->
</body>
</html>