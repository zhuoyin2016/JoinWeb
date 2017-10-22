<%--
  Created by IntelliJ IDEA.
  User: 侯淑婷
  Date: 2017/10/20
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>图片浏览首页</title>
</head>
<body>
<table cellspacing="0" border="1" align="center">
    <tr>
        <th align="center">序号</th>
        <th align="center">图片</th>
        <th align="center">上传时间</th>
        <th align="center">删除</th>
        <th align="center">选择</th>
    </tr>
    <c:forEach items="${imageList}" var="image" varStatus="status">
    <tr>
        <td>${status.index+1}</td>
        <td width="30px" height="20px"><img src="${image.name}"></td>
        <td>${image}</td>
    </tr>
    </c:forEach>

</table>
</body>
</html>
