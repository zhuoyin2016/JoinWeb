<%--
  Created by IntelliJ IDEA.
  User: 侯淑婷
  Date: 2017/10/20
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>轮播图片浏览首页</title>
</head>
<body>
<h1 align="center">轮播图片浏览</h1>
<form action="...." method="post"><!--提交到后台管理首页-->
<table cellspacing="0" border="1" align="center">
    <tr>
        <th align="center">序号</th>
        <th align="center">图片</th>
    </tr>
    <c:forEach items="${slImageList}" var="slImage" varStatus="status">
    <tr>
        <td>${status.index+1}</td>
        <td><img src="${slImage.imgName}" width="80px" height="60px"></td>
    </tr>
    </c:forEach>
    <tr>
        <td colspan="2"><input type="submit" value="返回首页"></td>
    </tr>
</table>
</form>
</body>
</html>
