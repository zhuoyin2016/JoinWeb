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
<table cellspacing="0" border="1" align="center">
    <tr>
        <th align="center">序号</th>
        <th align="center">图片</th>
        <th>图片名字</th>
        <th align="center">上传时间</th>
        <th align="center">删除</th>
        <th align="center">选择</th>
    </tr>
    <c:forEach items="${imageList}" var="image" varStatus="status">
    <tr>
        <td>${status.index+1}</td>
        <td><img src="${image.imgName}" width="80px" height="60px"></td>
        <td>${image.imgName}</td>
        <td>${image.uploadImgTime}</td>
        <td><a href="${website}image/delete/${image.id}">删除</a></td>
        <td><a href="${website}image/update/${image}"></a></td>
    </tr>
    </c:forEach>
    <%
        int num=0;//标志是否点击了添加图片
    %>
    <tr><a href="${website}image/to_add_image/${num=1}">添加图片</a></tr></br><!--有点疑问-->
    <c:if test="${sessionScope.num==1}">
            <form action="${website}image/add_image" method="post" enctype="multipart/form-data">
                <input type="file" name="file" id="imageField">
                <input type="submit" name="submit" value="添加">
            </form>
    </c:if>
    <tr>
        <td>${msg}</td>
    </tr>
</table>
</body>
</html>
