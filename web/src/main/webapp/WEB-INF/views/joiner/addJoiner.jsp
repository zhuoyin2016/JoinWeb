<%--
  Created by IntelliJ IDEA.
  User: 芋头
  Date: 2017/11/9
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>报名表</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../../../css/joiner/common/signIn.css">
    <link rel="stylesheet" type="text/css" href="../../../css/joiner/base/reset.css">
</head>
<body>
<p class="topic">报名表</p>
<form action ="${website}joiner/addJoiner" method="post"  enctype="multipart/form-data" class="content">
    <div class="sub-content">
        <div class="topLeft">
            <label class="two-letter">姓名</label>
            <input type="text" name="joinerName"/><br>
            <label class="two-letter">性别</label>
            <label for="male">男</label>
            <input type="radio" name="joinerSex" value="男" id="male" checked="checked"/>
            <label for="female">女</label>
            <input type="radio" name="joinerSex" value="女" id="female"  checked="checked"/>
            <div class="college-major">
                <span class="two-letter">学院</span>
                <select id="college" onchange="change2(this);" name="joinerCollege">
                    <option value="0">请选择</option>
                </select>
                <span>专业</span>
                <select id="major" name="joinerMajor">
                </select>
            </div>
            <label class="two-letter">年级</label>
            <select name="joinerGrade">
                <option value="2017">2017级</option>
                <option value="2016">2016级</option>
                <option value="2015">2015级</option>
                <option value="2014">2014级</option>
            </select><br>
            <label class="four-letter">年级排名</label>
            <input type="text" name="joinerRanking"/>
            <div class="native-place">
                <span class="two-letter">籍贯</span>
                <select id="pro" onchange="change(this);" name="joinerBir">
                    <option value="0">请选择</option>
                </select>
                <select id="city" name="joinerBir"></select>
            </div>
            <label class="four-letter">联系电话</label>
            <input type="text" name="joinerNum" id="phone"/><br>
            <p class="errow">您的手机号码有误</p>
            <label class="Eletter">QQ</label>
            <input type="text" name="joinerQQ" id="QQ"/><br>
            <label class="four-letter">意向部门</label>
            <select name="joinerDep">
                <option value="产品部">产品部</option>
                <option value="前端">前端</option>
                <option value="后端">后端</option>
            </select>
        </div>
        <div class="topRight">
            <img class="image" src="" name="joinerPhoto"><br>
            <input type="file" name="file" id="photo" onchange="getImg();">
        </div>
        <div class="mid">
            <p>自我介绍</p>
            <textarea name="joinerIntro"></textarea><br>
            <p>加入工作室的理由</p>
            <textarea name="joinerReason"></textarea>
        </div>
        <input type="submit" name="submit" id="submit" value="提交信息" onclick="tips();">
    </div>
</form>
<script type="text/javascript" src="../../../js/joiner/jquery.js"></script>
<script src="../../../js/joiner/signIn.js"></script>
</body>
</html>





<%--//测试代码--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>申请报名</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div>--%>
<%--<center style="margin-top: 50px">--%>
<%--<form action="${website}joiner/addJoiner" method="post"  enctype="multipart/form-data">--%>
<%--<h2>东北师范大学卓音工作室2018报名表</h2>--%>
<%--<table border="1" style="table-layout: fixed;width: 812px">--%>
<%--<tr>--%>
<%--<td  align="right">姓名：</td>--%>
<%--<td><input type="text" name="joinerName" style="width: 110px"/></td>--%>
<%--<td align="right">性别：</td>--%>
<%--<td>--%>
<%--<select name="joinerSex" style="width: 110px">--%>
<%--<option value="男"/>男</option>--%>
<%--<option value="女"/>女</option>--%>
<%--</select>--%>
<%--</td>--%>
<%--<td align="right">年级：</td>--%>
<%--<td>--%>
<%--<select name="joinerGrade" style="width: 110px">--%>
<%--<option value="2017" selected = "selected"/>2017级</option>--%>
<%--<option value="2016"/>2016级</option>--%>
<%--<option value="2015"/>2015级</option>--%>
<%--<option value="2014"/>2014级</option>--%>
<%--<option value="研究生"/>研究生</option>--%>
<%--</select>--%>
<%--</td>--%>
<%--<td rowspan="3" align="center" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;">--%>
<%--<br> 照片<br>--%>
<%--<input type='text'  name='joinerPhoto' id='textfield' class='text' style="width: 110px" /><br>--%>
<%--<input type="file" name="file" class="file" id="fileField" size="28" onchange="document.getElementById('textfield').value=this.value" />--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td align="right">学院：</td>--%>
<%--<td>--%>
<%--<select name="joinerCollege" style="width: 110px">--%>
<%--<option value="信息科学与技术学院" selected = "selected"/>信息科学与技术学院</option>--%>
<%--<option value="传媒学院"/>传媒学院</option>--%>
<%--<option value="政法学院"/>政法学院</option>--%>
<%--<option value="音乐学院"/>音乐学院</option>--%>
<%--<option value="美术学院"/>美术学院</option>--%>
<%--<option value="外国语学院"/>外国语学院</option>--%>
<%--<option value="商学院"/>商学院</option>--%>
<%--<option value="经济学院"/>经济学院</option>--%>
<%--<option value="纽瓦克学院"/>纽瓦克学院</option>--%>
<%--<option value="其他学院"/>其他</option>--%>
<%--</select>--%>
<%--</td>--%>
<%--<td align="right">专业：</td>--%>
<%--<td>--%>
<%--<select name="joinerMajor" style="width: 110px">--%>
<%--<option value="软件工程" />软件工程</option>--%>
<%--<option value="计算机（普班）"/>计算机（普班）</option>--%>
<%--<option value="计算机（中美）"/>计算机（中美）</option>--%>
<%--<option value="图书情报与档案管理"/>图书情报与档案管理</option>--%>
<%--<option value="教育技术学"/>教育技术学</option>--%>
<%--<option value="其他"/>其他</option>--%>
<%--</select>--%>
<%--</td>--%>
<%--<td align="right">年级排名：</td>--%>
<%--<td><input type="text" name="joinerRanking" style="width: 110px"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td align="right">意向部门：</td>--%>
<%--<td>--%>
<%--<select name="joinerDep" style="width: 110px">--%>
<%--<option value="前端" />前端</option>--%>
<%--<option value="后端"/>后端</option>--%>
<%--<option value="产品部"/>产品部</option>--%>

<%--</select>--%>
<%--</td>--%>
<%--<td align="right">联系电话：</td>--%>
<%--<td><input type="text" name="joinerNum" style="width: 110px"/></td>--%>
<%--<td align="right">QQ：</td>--%>
<%--<td><input type="text" name="joinerQQ" style="width: 110px"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td align="right">籍贯：</td>--%>
<%--<td colspan="6"><input type="text" name="joinerBir" size="112"/></td>--%>

<%--</tr>--%>
<%--<tr>--%>
<%--<td align="right">自我介绍</td>--%>
<%--<td colspan="6">--%>
<%--<textarea name="joinerIntro" style="width: 690px;height: 200px;">特长，爱好，技术--%>
<%--</textarea>--%>
<%--</td>--%>

<%--</tr>--%>
<%--<tr>--%>
<%--<td align="right">加入工作<br>--%>
<%--室的理由</td>--%>
<%--<td colspan="6">--%>
<%--<textarea name="joinerReason" style="width: 690px;height: 150px;" >--%>
<%--</textarea>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</table>--%>
<%--<input type="submit" name="submit" value="提交"/>--%>
<%--</form>--%>
<%--</center>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
