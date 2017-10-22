<%--
  Created by IntelliJ IDEA.
  User: 芋头
  Date: 2017/10/21
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>报名信息显示</title>
</head>
<body>
<div>
    <center style="margin-top: 50px">
            <h2>东北师范大学卓音工作室2017报名表</h2>
            <table border="1" >
                <tr>
                    <td  align="right">姓名：</td>
                    <td>${joiner.joinerName}</td>
                    <td align="right">性别：</td>
                    <td>${joiner.joinerSex}</td>
                    <td align="right">年级：</td>
                    <td>${joiner.joinerGrade}</td>
                    <td rowspan="3" align="center" >
                        照片
                        ${joiner.joinerPhoto}
                    </td>
                </tr>
                <tr>
                    <td align="right">学院：</td>
                    <td>${joiner.joinerCollege}</td>
                    <td align="right">专业：</td>
                    <td>${joiner.joinerMajor}</td>
                    <td align="right">年级排名：</td>
                    <td>${joiner.joinerRanking}</td>
                </tr>
                <tr>
                    <td align="right">意向部门：</td>
                    <td>${joiner.joinerDep}</td>
                    <td align="right">联系电话：</td>
                    <td>${joiner.joinerNum}</td>
                    <td align="right">QQ：</td>
                    <td>${joiner.joinerQQ}</td>
                </tr>
                <tr>
                    <td align="right">籍贯：</td>
                    <td colspan="6">${joiner.joinerBir}</td>

                </tr>
                <tr>
                    <td align="right">自我介绍</td>
                    <td colspan="6">
                        <textarea  style="width: 690px;height: 200px;">
                            ${joiner.joinerIntro}
                        </textarea>
                    </td>

                </tr>
                <tr>
                    <td align="right">加入工作<br>
                        室的理由</td>
                    <td colspan="6">
                        <textarea name="joinerReason" style="width: 690px;height: 150px;" >
                            ${joiner.joinerReason}
                        </textarea>
                    </td>
                </tr>
            </table>
            ${message}
        <a href="${website}joiner/list"><input type="button" name="button" value="返回"/></a>
    </center>
    </div>
</body>
</html>
