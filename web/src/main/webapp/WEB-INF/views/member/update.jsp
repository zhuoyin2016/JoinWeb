<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TestUser
  Date: 2017/10/20
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户修改页面</title>
</head>
<body>
 <form action="${website}member/toUpdate" method="get">
    <div class="content">
      <p hidden>
                <input type="hidden" name="id" value="${member.id}" >
     </p>
       <p><img src="../../../image/memberImage/${member.memberPhoto}" class="circle"  ></p>
       <p>
           <input type="hidden" name="memberPhoto" value="${member.memberPhoto}" >
       </p>
        <p>
            姓名：<input type="text" name="memberName" value="${member.memberName}" readonly><br>
            性别：<input type="text" name="sex" value="${member.sex}" readonly><br>
            年级：
            <select id="grade" name="grade">
            <option value="${member.grade}">${member.grade}</option>
            <option value="2014">2014</option>
            <option value="2015">2015</option>
            <option value="2016">2016</option>
            <option value="2017">2017</option>
            <option value="2018">2018</option>
            <option value="2019">2019</option>
            <option value="2020">2020</option>
            <option value="2021">2021</option>
            <option value="2021">2022</option>
            <option value="2022">2023</option>
            <option value="2024">2024</option>
            <option value="2025">2025</option>
        </select><br>
        </p>
        <p>
            <input type="text" value="${member.major}" name="major" /> <br>
            部门：
            <span id="memberDepartment">
               <select id="department" name="department">
               <option value="">请选择...</option>
               <option value="1">研究生团队</option>
               <option value="2">前端</option>
               <option value="3">后端</option>
               <option value="4">产品部</option>
              </select>
           </span> <br>

          职务：
            <span id="memberPosition">
               <select id="position" name="position">
                   <option value="">请选择...</option>
                   <option value="1">主任</option>
                   <option value="2">副主任</option>
               <option value="3">负责人</option>
               <option value="2">成员</option>
              </select>
                </span>
        </p>
        <br>
       个人简介：<input  type="text" value="${member.introduce}" name="introduce"/></p>
        <input type="submit" value="确认提交">确认修改</input>
        <p hidden>
            <input type="hidden" name="visible" value="${member.visible}" >
        </p>
    </div>
    <br>
${message}

</form>
</body>
</html>
