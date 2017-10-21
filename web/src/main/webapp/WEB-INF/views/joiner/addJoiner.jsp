<%--
  Created by IntelliJ IDEA.
  User: 芋头
  Date: 2017/10/20
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>申请报名</title>
</head>
<body>
<div>
    <center style="margin-top: 50px">
        <form action="${website}joiner/addJoiner" method="post">
            <h2>东北师范大学卓音工作室2017报名表</h2>
            <table border="1" >
                <tr>
                    <td  align="right">姓名：</td>
                    <td><input type="text" name="joinerName"/></td>
                    <td align="right">性别：</td>
                    <td>
                        <select name="joinerSex">
                            <option value="男"/>男</option>
                            <option value="女"/>女</option>
                        </select>
                    </td>
                    <td align="right">年级：</td>
                    <td>
                        <select name="joinerGrade">
                            <option value="2017" selected = "selected"/>2017级</option>
                            <option value="2016"/>2016级</option>
                            <option value="2015"/>2015级</option>
                            <option value="2014"/>2014级</option>
                            <option value="研究生"/>研究生</option>
                        </select>
                    </td>
                    <td rowspan="3" align="center" >
                        照片<br>
                        <br>
                        <input type="file" name="joinerPhoto" style="width: 60px "/>
                    </td>
                </tr>
                <tr>
                    <td align="right">学院：</td>
                    <td>
                        <select name="joinerCollege">
                            <option value="信息科学与技术学院" selected = "selected"/>信息科学与技术学院</option>
                            <option value="传媒学院"/>传媒学院</option>
                            <option value="政法学院"/>政法学院</option>
                            <option value="音乐学院"/>音乐学院</option>
                            <option value="美术学院"/>美术学院</option>
                            <option value="外国语学院"/>外国语学院</option>
                            <option value="商学院"/>商学院</option>
                            <option value="经济学院"/>经济学院</option>
                            <option value="纽瓦克学院"/>纽瓦克学院</option>
                            <option value="其他学院"/>其他</option>
                        </select>
                    </td>
                    <td align="right">专业：</td>
                    <td>
                        <select name="joinerMajor">
                            <option value="软件工程" />软件工程</option>
                            <option value="计算机（普班）"/>计算机（普班）</option>
                            <option value="计算机（中美）"/>计算机（中美）</option>
                            <option value="图书情报与档案管理"/>图书情报与档案管理</option>
                            <option value="教育技术学"/>教育技术学</option>
                        </select>
                    </td>
                    <td align="right">年级排名：</td>
                    <td><input type="text" name="joinerRanking"/></td>
                </tr>
                <tr>
                    <td align="right">意向部门：</td>
                    <td>
                        <select name="joinerDep">
                            <option value="前端" />前端</option>
                            <option value="后端"/>后端</option>
                            <option value="产品部"/>产品部</option>

                        </select>
                    </td>
                    <td align="right">联系电话：</td>
                    <td><input type="text" name="joinerNum"/></td>
                    <td align="right">QQ：</td>
                    <td><input type="text" name="joinerQQ"/></td>
                </tr>
                <tr>
                    <td align="right">籍贯：</td>
                    <td colspan="6"><input type="text" name="joinerBir" size="112"/></td>

                </tr>
                <tr>
                    <td align="right">自我介绍</td>
                    <td colspan="6">
                        <textarea name="joinerIntro" style="width: 690px;height: 200px;">特长，爱好，技术
                        </textarea>
                    </td>

                </tr>
                <tr>
                    <td align="right">加入工作<br>
                        室的理由</td>
                    <td colspan="6">
                        <textarea name="joinerReason" style="width: 690px;height: 150px;" >
                        </textarea>
                    </td>
                </tr>
            </table>
            <input type="submit" name="submit" value="提交"/>
        </form>
    </center>
</div>
</body>
</html>
