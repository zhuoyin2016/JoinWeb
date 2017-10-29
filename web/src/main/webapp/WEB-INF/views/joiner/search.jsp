<%--
  Created by IntelliJ IDEA.
  User: 芋头
  Date: 2017/10/22
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>搜索页面</title>
</head>
<body>
<div>
    <center style="margin-top: 50px">
        <th>卓音工作室2018报名学生信息</th>
        <table border="1">
            <tr bgcolor="#e6e6fa">
                <th>序号</th><th>姓名</th><th>性别</th><th>学院</th><th>专业</th><th>年级</th><th>年级排名</th><th>意向部门</th><th>操作</th><th>状态</th><th colspan="2">审核</th>
            </tr>
            <c:forEach items="${list}"  var="joiner" varStatus="status">
                <tr bgcolor="#e0ffff">
                    <td>${status.index+1}</td>
                    <td><a href="${website}joiner/show/${joiner.id}">${joiner.joinerName}</a></td>
                    <td>${joiner.joinerSex}</td>
                    <td>${joiner.joinerCollege}</td>
                    <td>${joiner.joinerMajor}</td>
                    <td>${joiner.joinerGrade}</td>
                    <td>${joiner.joinerRanking}</td>
                    <td>${joiner.joinerDep}</td>
                    <td><a href="${website}joiner/del/${joiner.id}">删除</a></td>
                    <td>
                        <c:if test="${joiner.joinerState == '0'}">待审核</c:if>
                        <c:if test="${joiner.joinerState == '1'}">审核通过</c:if>
                        <c:if test="${joiner.joinerState == '2'}">审核未通过</c:if>
                    </td>
                    <form action="${website}joiner/check/${joiner.id}" method="post">
                        <td>
                            <select name="joinerState">
                                <option value="0" selected="selected"></option>
                                <option value="0">待审核</option>
                                <option value="1">通过</option>
                                <option value="2"/>不通过</option>
                            </select>
                        </td>
                        <td><input type="submit" value="确定"></td>
                    </form>
                </tr>
            </c:forEach>
        </table>
        <a href="${website}joiner/list"><input type="button" name="button" value="返回"/></a>
    </center>
</div>
</body>
</html>
