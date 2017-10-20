<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/10/20
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加管理员</title>
</head>
<body>
<center style="margin-top: 100px">
    <form action="${website}man/add" method="post">
        <table>
            <tr>
                <td>用户名</td>
                <td><input name="username" type="text"></td>
            </tr>

            <tr>
                <td>管理级别</td>
                <c:if test="${managerStatus == '2'}">
                    <td>
                        <select name = "status">
                        <option value="0">普通管理员</option>
                        <option value="1">高级管理员</option>
                        <option value="2">超级管理员</option>
                        </select>
                    </td>
                </c:if>

                <c:if test="${managerStatus == '1'}">
                    <td>
                        <select name = "status">
                            <option value="0">普通管理员</option>
                            <option value="1">高级管理员</option>
                        </select>
                    </td>
                </c:if>
            </tr>

            <tr>
                <td>默认密码</td>
                <td><input name="password" type="text" value="admin"></td>
            </tr>

        </table>
        <button>添加</button>
    </form>
    ${message}
</center>
</body>
</html>
