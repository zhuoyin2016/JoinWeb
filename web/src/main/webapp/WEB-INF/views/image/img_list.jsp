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
    <title>图片浏览首页</title>
</head>
<body>
<h1 align="center">图片管理</h1>
<table cellspacing="0" border="1" align="center">
    <tr>
        <th align="center">序号</th>
        <th align="center">图片</th>
        <th>图片名字</th>
        <th align="center">上传时间</th>
        <th align="center">删除</th>
    </tr>
    <c:forEach items="${imageList}" var="image" varStatus="status">
    <tr>
        <td>${status.index+1}</td>
        <td><img src="${image.imgName}" width="80px" height="60px"></td>
        <td>${image.imgName}</td>
        <td>${image.uploadImgTime}</td>
        <td><a href="${website}image/delete/${image.id}">删除</a></td>
    </tr>
    </c:forEach>
    <tr>
        <c:if test="${number == 0}"><!--number 控制显示“添加图片按钮”-->
            <td colspan="5"><a href="${website}image/to_add_image/1/1">添加图片</a></td>
        </c:if>
    </tr></br><!--有点疑问-->
    <c:if test="${num == 1}"><!--num 控制添加文件的显示-->
        <tr>
            <form action="${website}image/add_image" method="post" enctype="multipart/form-data">
                <td><input type="file" name="file" id="imageField"></td>
                <td colspan="4"><input type="submit" name="submit" value="添加"></td>
            </form>
        </tr>
    </c:if>
    <tr>
        <td colspan="5"><a href="${website}image/select_image">选择需要轮播的图片</a></td>
    </tr>
    <tr>
        <td colspan="5">${msg}</td>
    </tr>
</table>
</body>
</html>
