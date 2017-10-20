<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/10/18
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
</head>
<body>
<center style="margin-top: 100px">
    <form action="${website}man/login" method="post">
        <table>
            <tr>
                <td>用户名</td>
                <td><input name="username" type="text"></td>
            </tr>

            <tr>
                <td>密码</td>
                <td><input name="password" type="text"></td>
            </tr>

        </table>
        <button>登录</button>
    </form>
    ${message}
</center>
</body>
</html>
