<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/10/20
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改管理级别</title>
</head>
<body>
<center style="margin-top: 100px">
    <form action="${website}man/update" method="post">
        <input name="id" value="${manager.id}" type="hidden">
        <input name="password" value="${manager.password}" type="hidden">
    <table border="1">
        <tr>
            <td>用户名</td>
            <td><input name="username" type="text" value="${manager.username}"></td>
        </tr>
        <tr>
            <td>管理级别</td>
            <td>
                <c:if test="${managerStatus == '1'}">
                    <select name = "status">
                       <c:if test="${manager.status == '0'}">
                       <option value="0" selected="selected">普通管理员</option>
                       <option value="1">高级管理员</option>
                       </c:if>
                       <c:if test="${manager.status == '1'}">
                           <option value="0">普通管理员</option>
                           <option value="1" selected="selected">高级管理员</option>
                       </c:if>
                    </select>
                </c:if>

                <c:if test="${managerStatus == '2'}">
                    <select name = "status">
                        <c:if test="${manager.status == '0'}">
                            <option value="0" selected="selected">普通管理员</option>
                            <option value="1">高级管理员</option>
                            <option value="2">超级管理员</option>
                        </c:if>
                        <c:if test="${manager.status == '1'}">
                            <option value="0">普通管理员</option>
                            <option value="1" selected="selected">高级管理员</option>
                            <option value="2">超级管理员</option>
                        </c:if>
                        <c:if test="${manager.status == '2'}">
                            <option value="0">普通管理员</option>
                            <option value="1">高级管理员</option>
                            <option value="2" selected="selected">超级管理员</option>
                        </c:if>
                    </select>
                </c:if>
            </td>
        </tr>
        <tr></tr>
    </table>
        <button>确认修改</button>
    </form>
</center>
</body>
</html>
