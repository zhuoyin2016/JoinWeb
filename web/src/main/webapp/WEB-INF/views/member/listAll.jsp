<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TestUser
  Date: 2017/10/20
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>列出全部</title>
</head>
<body>

       <c:forEach items="${memberList}"  var="memberList"  varStatus="status">
           <div class="people">
               <c:if test="${memberList.visible=='1'}">
                   <c:if test="${memberList.position == '1'||memberList.position=='2'||memberList.position=='3'}">
                       <div class="content">
                           <p>
                               <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle" >
                           </p>
                           <p>
                               <span >姓名：${memberList.memberName}</span>
                               <span >性别：${memberList.sex}</span>
                               <span >年级：${memberList.grade}</span>
                           </p>
                           <p>
                               <span id="memberMajor">专业：${memberList.major}</span>
                               <c:if test="${memberList.department=='1'}">
                                   <span id="memberDepartment">部门:研究生团队</span>
                               </c:if>
                               <c:if test="${memberList.department=='2'}">
                                   <span id="memberDepartment">部门:前端</span>
                               </c:if>
                               <c:if test="${memberList.department='3'}">
                                   <span id="memberDepartment">部门:后端</span>
                               </c:if>
                               <c:if test="${memberList.department=='4'}">
                                   <span id="memberDepartment">部门:产品部</span>
                               </c:if>
                               <c:if test="${memberList.position == '1'}">
                                   <span id="memberPosition">职务：主任</span>
                               </c:if>
                               <c:if test="${memberList.position == '2'}">
                                   <span id="memberPosition">职务：副主任</span>
                               </c:if>
                               <c:if test="${memberList.position == '3'}">
                                   <span id="memberPosition">职务：负责人</span>
                               </c:if>
                               <c:if test="${memberList.position == '4'}">
                                   <span id="memberPosition">职务：成员</span>
                               </c:if>
                           </p>
                           <p >个人简介：${memberList.introduce}</p>
                           <a href="${website}member/delMember/${memberList.id}"><button>删除</button></a>
                           <a href="${website}member/update/${memberList.id}"><button>修改</button></a>
                       </div>
                   </c:if >
               </c:if>
           </div>
       </c:forEach>

       <%--把2014级的先列出来--%>
       <c:forEach items="${memberList}"  var="memberList" varStatus="status">
           <div class="people">
               <c:if test="${memberList.visible == '1'}">
                   <c:if test="${memberList.grade==2014&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                       <div class="content">
                           <p>
                               <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle" >
                           </p>
                           <p>
                               <span >姓名：${memberList.memberName}</span>
                               <span >性别：${memberList.sex}</span>
                               <span>年级：${memberList.grade}</span>
                           </p>
                           <p>
                               <span >专业：${memberList.major}</span>
                               <c:if test="${memberList.department=='1'}">
                                   <span>部门:研究生团队</span>
                               </c:if>
                               <c:if test="${memberList.department=='2'}">
                                   <span >部门:前端</span>
                               </c:if>
                               <c:if test="${memberList.department='3'}">
                                   <span>部门:后端</span>
                               </c:if>
                               <c:if test="${memberList.department=='4'}">
                                   <span >部门:产品部</span>
                               </c:if>
                               <c:if test="${memberList.position == '1'}">
                                   <span>职务：负责人</span>
                               </c:if>
                               <c:if test="${memberList.position == '2'}">
                                   <span>职务：成员</span>
                               </c:if>
                           </p>
                           <p >个人简介：${memberList.introduce}</p>
                           <a href="${website}member/delMember/${memberList.id}"><button>删除</button></a>
                           <a href="${website}member/update/${memberList.id}"><button>修改</button></a>
                       </div>
                   </c:if>
               </c:if>
           </div>
       </c:forEach>

       <%--把2015级的先列出来--%>
       <c:forEach items="${memberList}"  var="memberList" varStatus="status">
           <div class="people">
               <c:if test="${memberList.visible == '1'}">
                   <c:if test="${memberList.grade==2015&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                       <div class="content">
                           <p>
                               <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle" >
                           <p>
                               <span>姓名：${memberList.memberName}</span>
                               <span >性别：${memberList.sex}</span>
                               <span >年级：${memberList.grade}</span>
                           </p>
                           <p>
                               <span>专业：${memberList.major}</span>
                               <c:if test="${memberList.department=='1'}">
                                   <span >部门:研究生团队</span>
                               </c:if>
                               <c:if test="${memberList.department=='2'}">
                                   <span >部门:前端</span>
                               </c:if>
                               <c:if test="${memberList.department='3'}">
                                   <span >部门:后端</span>
                               </c:if>
                               <c:if test="${memberList.department=='4'}">
                                   <span >部门:产品部</span>
                               </c:if>
                               <c:if test="${memberList.position == '1'}">
                                   <span >职务：主任</span>
                               </c:if>
                               <c:if test="${memberList.position == '2'}">
                                   <span >职务：副主任</span>
                               </c:if>
                               <c:if test="${memberList.position == '3'}">
                                   <span >职务：负责人</span>
                               </c:if>
                               <c:if test="${memberList.position == '4'}">
                                   <span >职务：成员</span>
                               </c:if>
                           </p>
                           <p >个人简介：${memberList.introduce}</p>
                           <a href="${website}member/delMember/${memberList.id}"><button>删除</button></a>
                           <a href="${website}member/update/${memberList.id}"><button>修改</button></a>
                       </div>
                   </c:if>
               </c:if>
           </div>

       </c:forEach>

       <c:forEach items="${memberList}"  var="memberList" varStatus="status">
           <div class="people">
               <c:if test="${memberList.visible == '1'}">
                   <c:if test="${memberList.grade==2016&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                       <div class="content">
                           <p>
                               <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle" >

                           </p>
                           <p>
                               <span id="memberName">姓名：${memberList.memberName}</span>
                               <span id="memberSex">性别：${memberList.sex}</span>
                               <span id="memberGrade">年级：${memberList.grade}</span>
                           </p>
                           <p>
                               <span id="memberMajor">专业：${memberList.major}</span>
                               <c:if test="${memberList.department=='1'}">
                                   <span id="memberDepartment">部门:研究生团队</span>
                               </c:if>
                               <c:if test="${memberList.department=='2'}">
                                   <span id="memberDepartment">部门:前端</span>
                               </c:if>
                               <c:if test="${memberList.department='3'}">
                                   <span id="memberDepartment">部门:后端</span>
                               </c:if>
                               <c:if test="${memberList.department=='4'}">
                                   <span id="memberDepartment">部门:产品部</span>
                               </c:if>
                               <c:if test="${memberList.position == '1'}">
                                   <span id="memberPosition">职务：主任</span>
                               </c:if>
                               <c:if test="${memberList.position == '2'}">
                                   <span id="memberPosition">职务：副主任</span>
                               </c:if>
                               <c:if test="${memberList.position == '3'}">
                                   <span id="memberPosition">职务：负责人</span>
                               </c:if>
                               <c:if test="${memberList.position == '4'}">
                                   <span id="memberPosition">职务：成员</span>
                               </c:if>
                           </p>
                           <p id="memberIntroduce">个人简介：${memberList.introduce}</p>
                           <a href="${website}member/delMember/${memberList.id}"><button>删除</button></a>
                           <a href="${website}member/update/${memberList.id}"><button>修改</button></a>
                       </div>
                   </c:if>
               </c:if>
           </div>

       </c:forEach>
       <a href="${website}member/join"><button value="返回">返回</button></a>

   </table>
</body>
</html>
