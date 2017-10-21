<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/10/21
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员修改个人资料</title>
</head>
<body>
<center style="margin-top: 150px">
    <form action="${website}man/single" method="post">
        <table border="1">
            <tr>
                <td align="center">用户名</td>
                <td><input name="username" type="text" value="${currentManager.currentUsername}"></td>
            </tr>
            <tr>
                <td>请输入原密码</td>
                <td><input name="oldPassword" type="password"></td>
            </tr>
            <tr>
                <td>请输入新密码</td>
                <td><input name="password" type="password"></td>
            </tr>
            <tr>
                <td>再次输入新密码</td>
                <td><input name="password2" type="password"></td>
            </tr>
            <tr>
                <td align="center">
                    <input type="submit" name="submit" value="提交">
                </td>
                <td align="center">
                    <a href="${website}man/all"> <input type="button" name="button" value="取消"> </a>
                </td>
            </tr>
        </table>

    </form>
${message}
</center>
</body>
</html>
