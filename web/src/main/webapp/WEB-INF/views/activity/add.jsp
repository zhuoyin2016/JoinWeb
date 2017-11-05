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
    <title>add activity</title>
</head>
<body>
<form action="${website}activity/addActivity" method="POST"  enctype="multipart/form-data">
    <div class="people">
        <input type="file" name="file" class="file" id="fileField" size="28" onchange="document.getElementById('textfield').value=this.value" />

        <div class="content">
            <p>
                <span id="activityTitle" >活动标题:<input type="text" name="activityTitle" required="required"/></span>
                <span id="activityTime">活动时间：<input type="text" name="activityTime" required="required"></span>
             </span>
            </p>
            <p id="activityContent" >活动内容：<input type="text" name="activityContent" required="required" /></p>
            <input type='text'  id='activityImg1'  class='txt' required="required"/>
        </div>
    </div>
    <input type="submit" value="确认添加" />
    ${message}
</form>
</body>
</html>
