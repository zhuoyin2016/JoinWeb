<%--
  Created by IntelliJ IDEA.
  User: TestUser
  Date: 2017/10/19
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>卓音首页</title>
</head>
<body>
<div>
    <li>
        <a href="${website}member/queryByDepartment/${0}">
            研究生团队
        </a>
    </li>
    <li>
        <a href="${website}member/queryByDepartment/${1}">
            前端
        </a>
    </li>
    <li>
        <a href="${website}member/queryByDepartment/${2}">
        后端
        </a>
    </li>
    <li>
        <a href="${website}member/queryByDepartment/${3}">
            产品
        </a>
    </li>

    <li>
        <a  href="${website}member/addMember">增加成员</a>
    </li>

</div>
</body>
</html>
