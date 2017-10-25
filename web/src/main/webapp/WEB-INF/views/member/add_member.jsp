<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: TestUser
  Date: 2017/10/19
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${website}member/toaddMember" method="POST"  enctype="multipart/form-data">
<div class="people">
    <input type='text'  name='memberPhoto' id='textfield' class='txt' />
    <input type="file" name="file" class="file" id="fileField" size="28" onchange="document.getElementById('textfield').value=this.value" />

        <div class="content">
            <p>
                <span id="memberName" >姓名:<input type="text" name="memberName"  value=""/></span>
             <span id="memberSex">性别：
               <select id="sex" name="sex" >
               <option value="">请选择...</option>
               <option value="女">女</option>
               <option value="男">男</option>
               </select>
             </span>
             <span id="memberGrade">年级：
               <select id="grade" name="grade">
               <option value="0">请选择...</option>
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
              </select>
                </span>
            </p>
            <p>
                <span id="memberMajor">专业：<input type="text" name="major" value=""/></span>
             <span id="memberDepartment">部门:
               <select id="department" name="department">
               <option value="0">请选择...</option>
               <option value="1">研究生团队</option>
               <option value="2">前端</option>
               <option value="3">后端</option>
              <option value="4">产品部</option>
              </select>
           </span>
            <span id="memberPosition">职务：
               <select id="position" name="position">
               <option value="0">请选择...</option>
               <option value="1">主任</option>
               <option value="2">副主任</option>
               <option value="3">负责人</option>
               <option value="4">成员</option>

              </select>
            </span>
             </p>
            <p id="memberIntroduce" >个人简介：<input type="text" name="introduce" value="" /></p>
            <p id="visible" hidden>可见：<input type="text" name="visible" value="1" /></p>
        </div>
</div>
            <input type="submit" value="确认添加" />
           ${message}
</form>
</body>
</html>
