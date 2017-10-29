<%--
  Created by IntelliJ IDEA.
  User: 芋头
  Date: 2017/10/20
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>列出报名学生</title>
</head>
<body>
<div>
    <center style="margin-top: 50px">
       <tn>${message}</tn>
            <th>卓音工作室2018报名学生信息</th>
        <form action="${website}/joiner/search" method="post">
            <div>
                <select name="type">
                    <option value="name" selected = "selected"/>姓名</option>
                    <option value="sex"/>性别</option>
                    <option value="grade"/>年级</option>
                    <option value="dep"/>意向部门</option>
                    <option value="major"/>专业</option>
                    <option value="state"/>状态</option>
                </select>
                <input type="text" name="keyWord">
                <input type="submit" name="submit" value="搜索">
            </div>
        </form>
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
    </center>
</div>
</body>
</html>
