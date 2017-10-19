<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- **********************************************************************************
*Description: 登录页
*author:      mayuan
*date:        2015.8.25
************************************************************************************************* -->
<!DOCTYPE html>
<html>
<head>
    <title>跳转页面</title>
</head>
<body>
<%
   response.sendRedirect("/member/join");
%>
</body>
</html>