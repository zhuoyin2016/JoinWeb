<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fujia
  Date: 2016/3/21
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息修改</title>
</head>
<body>
<form method="post" action="${website}student/update">
  <td>学号&nbsp&nbsp： <input name="studentNum" type="text" size="25" /></td><p>
  <td>姓名&nbsp&nbsp： <input name="studentName" type="text" size="25" /></td><p>
  <td>性别： <input name="sex" type="text" size="25" /></td><p>
  <td>年级&nbsp&nbsp： <input name="grade" type="text" size="25" /></td><p>
  <td>班级&nbsp&nbsp： <input name="classNum" type="text" size="25" /></td><p>
  <td>学院： <input name="college" type="text" size="25" /></td><p>
  <td>生日&nbsp&nbsp： <input name="birthday" type="text" size="25" /></td><p>
  <td>是否好学生&nbsp&nbsp(1=YES&0=NO)： <input name="goodStudent" type="text" size="25" /></td><p>
  <p>
  <p>
    <label>
      <input type="submit" name="Submit" value="更新" />
    </label>
  </p>
</form>
</body>
</html>
