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
<html>
<head>
    <title>选择图片的页面</title>
</head>
<body>
<h1 align="center">轮播图片的选择</h1>
<form action="/image/select_ok" method="post">
    <!--提交到轮播的确定页面，确定以后再返回到这里，到时候在轮播的首页仅显示被选择的页面-->
<table cellspacing="0" border="1" align="center">
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
            <c:if test="${image.select==1}">
                <td>${msg1}</td>
            </c:if>
            <c:if test="${image.select==0}">
                <td>${msg0}</td>
            </c:if>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="4"><input type="submit" value="确定"></td>
    </tr>
</table>
</form>
</body>
</html>
