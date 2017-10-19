<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TestUser
  Date: 2017/10/19
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成员界面</title>
</head>
<body>
<c:forEach items="${memberList}"  var="memberList" varStatus="status">
    <div class="people">
     <c:if test="${memberList.visible == '1'}">
        <img src="../resources/img/wanzi1.jpg" class="circle" id="memberPhoto">
         <div class="content">
            <p>
                <span id="memberName">姓名：${memberList.memberName}</span>
                <span id="memberSex">性别：${memberList.sex}</span>
                <span id="memberGrade">年级：${memberList.grade}</span>
            </p>
            <p>
                <span id="memberMajor">专业：${memberList.major}</span>
                <c:if test="${memberList.department=='0'}">
                    <span id="memberDepartment">部门:研究生团队</span>
                </c:if>
                <c:if test="${memberList.department=='1'}">
                    <span id="memberDepartment">部门:前端</span>
                </c:if>
                <c:if test="${memberList.department='2'}">
                    <span id="memberDepartment">部门:后端</span>
                </c:if>
                <c:if test="${memberList.department=='3'}">
                    <span id="memberDepartment">部门:产品部</span>
                </c:if>
                <c:if test="${memberList.position == '0'}">
               <span id="memberPosition">职务：负责人</span>
                </c:if>
                <c:if test="${memberList.position == '1'}">
                    <span id="memberPosition">职务：成员</span>
                </c:if>
            </p>
            <p id="memberIntroduce">个人简介：${memberList.introduce}</p>
        </div>
        </c:if>
    </div>
    </c:forEach>

  <a href="${website}member/join"><button value="返回">返回</button></a>
</body>
</html>
