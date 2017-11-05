<%--
  Created by IntelliJ IDEA.
  User: 侯淑婷
  Date: 2017/10/24
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>选择图片的页面</title>
</head>
<body>
<h1 align="center">轮播图片的选择</h1>
<form action="/image/select_ok" method="post">
    <!--确定以后，提交到轮播的首页，仅显示被选择的页面-->
<table cellspacing="0" border="0" align="center">
    <tr>
        <th align="center">序号</th>
        <th align="center">图片</th>
        <th>选择/取消</th>
        <th></th>
    </tr>
    <c:forEach items="${imageList}" var="image" varStatus="status">
        <tr>
            <td>${status.index+1}</td>
            <td><img src="${image.imgName}" width="80px" height="60px"></td>
            <td><a href="${website}image/select/${image.id}">选择/取消</a></td>
        </tr>
    </c:forEach>
</table>
    <hr width="500px" align="center">
    <c:forEach items="${slImageList}" var="slImage" varStatus="status">
        <img src="${slImage.imgName}" width="80px" height="60px">
    </c:forEach>
    <%--<p align="center"><input type="submit" value="确定"></p>--%>
    <c:if test="${fn:length(slImageList) != 5}">
        当前共${fn:length(slImageList)}张，请选择5张图片！
    </c:if>
    <c:if test="${fn:length(slImageList) == 5}">
        已选择5张，请点击确定！
        <p align="center"><input type="submit" value="确定"></p>
    </c:if>
</form>
</body>
</html>
