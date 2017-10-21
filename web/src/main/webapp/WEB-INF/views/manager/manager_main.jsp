<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wangh
  Date: 2017/10/18
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员列表</title>
</head>
<body>
<center style="margin-top: 100px">
    欢迎您，${currentManager.currentUsername}!
    <a href="${website}man/single">修改个人资料</a>
    <h2>管理员</h2>
<%--<%--%>
   <%--HttpSession s = request.getSession();--%>
<%--%>--%>
    <%--<%=s.getAttribute("managerStatus")%>--%>

    <%--遍历所有管理员  传参“managerList”--%>

    <table border="1">
        <tr bgcolor="#e6e6fa">
            <th>编号</th>
            <th>用户名</th>
            <th>管理级别</th>
            <c:if test="${managerStatus != '0'}">
                <th colspan="2">操作</th>
            </c:if>
        </tr>

        <c:forEach items="${managerList}"  var="manager" varStatus="status">

                <tr bgcolor="#e0ffff">
                    <td>${status.index+1}</td>
                    <td>${manager.username}</td>

                    <c:if test="${managerStatus == '0'}">
                      <c:if test="${manager.status == '0'}">
                        <td>普通管理员</td>
                      </c:if>

                      <c:if test="${manager.status == '1'}">
                        <td>高级管理员</td>
                      </c:if>

                      <c:if test="${manager.status == '2'}">
                        <td>超级管理员</td>
                      </c:if>
                    </c:if>


                    <c:if test="${managerStatus == '1'}">
                       <c:if test="${manager.status == '0'}">
                           <td>普通管理员</td>
                           <td><a href="${website}man/delete/${manager.id}">删除</a>
                           <td><a href="${website}man/update/${manager.id}">修改</a>
                       </c:if>

                        <c:if test="${manager.status == '1'}">
                            <td colspan="3" align="center">高级管理员</td>
                        </c:if>

                        <c:if test="${manager.status == '2'}">
                            <td colspan="3" align="center">超级管理员</td>
                        </c:if>
                    </c:if>


                    <c:if test="${managerStatus == '2'}">
                        <c:if test="${manager.status == '0'}">
                            <td>普通管理员</td>
                            <td><a href="${website}man/delete/${manager.id}">删除</a>
                            <td><a href="${website}man/update/${manager.id}">修改</a>
                        </c:if>

                        <c:if test="${manager.status == '1'}">
                            <td>高级管理员</td>
                            <td><a href="${website}man/delete/${manager.id}">删除</a>
                            <td><a href="${website}man/update/${manager.id}">修改</a>
                        </c:if>

                        <c:if test="${manager.status == '2'}">
                            <td colspan="3" align="center">超级管理员</td>
                        </c:if>
                    </c:if>

                </tr>

        </c:forEach>
    </table>
    <c:if test="${managerStatus != '0'}">
        <a href="${website}man/add">添加</a>
    </c:if>
    <br><br>
${message}
</center>
</body>
</html>
