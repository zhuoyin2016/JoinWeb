<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TestUser
  Date: 2017/11/8
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <title>卓音工作室后端</title>
    <link rel="stylesheet" type="text/css" href="../../../css/member/icomoon.css">
    <link rel="stylesheet" type="text/css" href="../../../css/member/front.css">
    <link rel="stylesheet" type="text/css" href="../../../css/member/reset.css">
    <link rel="stylesheet" href="../../../css/member/foot.css"/>
    <link rel="stylesheet" href="../../../css/member/side.css"/>
    <script src="../../../js/common/jquery.js"></script>
    <script src="../../../js/member/mumber-common.js"></script>
</head>
<body>
<div class="page">
    <div class="subNav">
        <div class="sublist">
            <a href="javascript:;" class="sublist-text">成员介绍</a>
            <ul class="sublevel1">
                <li><a href="${website}member/queryByDepartment2/${1}" target="_blank">研究生团队</a></li>
                <li><a href="${website}member/queryByDepartment2/${2}" target="_blank">前端成员</a></li>
                <li><a href="${website}member/queryByDepartment2/${3}" target="_blank">后端成员</a></li>
                <li><a href="#"></a></li>
                <li><a href="#handler">前端负责人</a></li>
                <li><a href="#normal">部员</a></li>
            </ul>
        </div>
    </div>
    <h1>卓音工作室技术部后端</h1>
    <div class="show">
        <ul>
            <c:forEach items="${memberList}" var="memberList" varStatus="status">
                <c:if test="${memberList.visible=='1'}">
                    <c:if test="${memberList.position=='3'}">
                        <li>
                            <img src="../../../image/memberImage/${memberList.memberPhoto}" alt="负责人">
                            <div class="tip">
                                <p class="front" id="big">负责人</p>
                                <p class="after">
                                    <span>${memberList.memberName}</span>
                                    <span>${memberList.grade} ${memberList.major}</span>
                                </p>
                            </div>
                        </li>
                    </c:if>
                </c:if>
            </c:forEach>
            <c:forEach items="${memberList}" var="memberList" varStatus="status">
                <c:if test="${memberList.visible=='1'}">
                    <c:if test="${memberList.position=='1'}">
                        <li>
                            <img src="../../../image/memberImage/${memberList.memberPhoto}" alt="主任">
                            <div class="tip">
                                <p class="front" id="big">主任</p>
                                <p class="after">
                                    <span>${memberList.memberName}</span>
                                    <span>${memberList.grade} ${memberList.major}</span>
                                </p>
                            </div>
                        </li>
                    </c:if>
                </c:if>
            </c:forEach>
            <c:forEach items="${memberList}" var="memberList" varStatus="status">
                <c:if test="${memberList.visible=='1'}">
                    <c:if test="${memberList.position=='1'}">
                        <li>
                            <img src="../../../image/memberImage/${memberList.memberPhoto}" alt="副主任">
                            <div class="tip">
                                <p class="front" id="big">副主任</p>
                                <p class="after">
                                    <span>${memberList.memberName}</span>
                                    <span>${memberList.grade} ${memberList.major}</span>
                                </p>
                            </div>
                        </li>
                    </c:if>
                </c:if>
            </c:forEach>
            <c:forEach items="${memberList}" var="memberList" varStatus="status">
                <c:if test="${memberList.visible=='1'}">
                    <c:if test="${memberList.position=='2'}">
                        <li>
                            <img src="../../../image/memberImage/${memberList.memberPhoto}" alt="副主任">
                            <div class="tip">
                                <p class="front" id="big">副主任</p>
                                <p class="after">
                                    <span>${memberList.memberName}</span>
                                    <span>${memberList.grade} ${memberList.major}</span>
                                </p>
                            </div>
                        </li>
                    </c:if>
                </c:if>
            </c:forEach>


            <c:forEach items="${memberList}" var="memberList" varStatus="status">
                <c:if test="${memberList.visible=='1'}">
                    <c:if test="${memberList.grade==2014&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                        <li>
                            <img src="../../../image/memberImage/${memberList.memberPhoto}" alt="部员">
                            <div class="tip">
                                <p class="front">14级部员</p>
                                <p class="after">
                                    <span>${memberList.memberName}</span>
                                    <span>${memberList.grade} ${memberList.major}</span>
                                </p>
                            </div>
                        </li>
                    </c:if>
                </c:if>
            </c:forEach>


            <c:forEach items="${memberList}" var="memberList" varStatus="status">
                <c:if test="${memberList.visible=='1'}">
                    <c:if test="${memberList.grade==2015&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                        <li>
                            <img src="../../../image/memberImage/${memberList.memberPhoto}" alt="部员">
                            <div class="tip">
                                <p class="front">15级部员</p>
                                <p class="after">
                                    <span>${memberList.memberName}</span>
                                    <span>${memberList.grade} ${memberList.major}</span>
                                </p>
                            </div>
                        </li>
                    </c:if>
                </c:if>
            </c:forEach>

            <c:forEach items="${memberList}" var="memberList" varStatus="status">
                <c:if test="${memberList.visible=='1'}">
                    <c:if test="${memberList.grade==2016&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                        <li>
                            <img src="../../../image/memberImage/${memberList.memberPhoto}" alt="部员">
                            <div class="tip">
                                <p class="front">16级部员</p>
                                <p class="after">
                                    <span>${memberList.memberName}</span>
                                    <span>${memberList.grade} ${memberList.major}</span>
                                </p>
                            </div>
                        </li>
                    </c:if>
                </c:if>
            </c:forEach>

            <c:forEach items="${memberList}" var="memberList" varStatus="status">
                <c:if test="${memberList.visible=='1'}">
                    <c:if test="${memberList.grade==2017&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                        <li>
                            <img src="../../../image/memberImage/${memberList.memberPhoto}" alt="部员">
                            <div class="tip">
                                <p class="front">17级部员</p>
                                <p class="after">
                                    <span>${memberList.memberName}</span>
                                    <span>${memberList.grade} ${memberList.major}</span>
                                </p>
                            </div>
                        </li>
                    </c:if>
                </c:if>
            </c:forEach>
        </ul>
    </div>


    <div class="handler" id="handler">
        <h2>负责人</h2>
        <c:forEach items="${memberList}" var="memberList" varStatus="status">
            <c:if test="${memberList.visible=='1'}">
                <c:if test="${memberList.position=='3'}">
                    <div class="people">
                        <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                        <div class="content">
                            <p>
                                <span><i class="icomoon">&#xe9ef;</i>姓名：${memberList.memberName}</span>
                                <span><i class="icomoon">&#xe9b2;</i>性别：${memberList.sex}</span>
                                <span><i class="icomoon">&#xead0;</i>年级：${memberList.grade}</span>
                            </p>
                            <p>
                                <span><i class="icomoon">&#xea81;</i>专业：${memberList.major}</span>
                                <span><i class="icomoon">&#xea04;</i>部门：后端

                             </span>
                                <span>
                                    <i class="icomoon">&#xea58;</i>职务：
                                   <c:if test="${memberList.position == '1'}">
                                       主任
                                   </c:if>
                        <c:if test="${memberList.position == '2'}">
                            副主任
                        </c:if>
                        <c:if test="${memberList.position == '3'}">
                            负责人
                        </c:if>
                        <c:if test="${memberList.position == '4'}">
                            成员
                        </c:if>
                             </span>
                            </p>
                            <p class="mumberIntroduce">
                                <i class="icomoon">&#xeac6;</i>个人简介：${memberList.introduce}
                            </p>
                        </div>
                    </div>
                </c:if>
            </c:if>
        </c:forEach>
    </div>


    <div class="normal" id="normal">
        <h2>部员</h2>
        <c:forEach items="${memberList}" var="memberList" varStatus="status">
            <c:if test="${memberList.visible=='1'}">
                <c:if test="${memberList.position=='1'}">
                    <div class="people">
                        <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                        <div class="content">
                            <p>
                                <span><i class="icomoon">&#xe9ef;</i>姓名：${memberList.memberName}</span>
                                <span><i class="icomoon">&#xe9b2;</i>性别：${memberList.sex}</span>
                                <span><i class="icomoon">&#xead0;</i>年级：${memberList.grade}</span>
                            </p>
                            <p>
                                <span><i class="icomoon">&#xea81;</i>专业：${memberList.major}</span>
                                <span><i class="icomoon">&#xea04;</i>部门：后端

                             </span>
                                <span>
                                    <i class="icomoon">&#xea58;</i>职务：
                                   <c:if test="${memberList.position == '1'}">
                                       主任
                                   </c:if>
                        <c:if test="${memberList.position == '2'}">
                            副主任
                        </c:if>
                        <c:if test="${memberList.position == '3'}">
                            负责人
                        </c:if>
                        <c:if test="${memberList.position == '4'}">
                            成员
                        </c:if>
                             </span>
                            </p>
                            <p class="mumberIntroduce">
                                <i class="icomoon">&#xeac6;</i>个人简介：${memberList.introduce}
                            </p>
                        </div>
                    </div>
                </c:if>
            </c:if>
        </c:forEach>

        <c:forEach items="${memberList}" var="memberList" varStatus="status">
            <c:if test="${memberList.visible=='1'}">
                <c:if test="${memberList.position=='2'}">
                    <div class="people">
                        <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                        <div class="content">
                            <p>
                                <span><i class="icomoon">&#xe9ef;</i>姓名：${memberList.memberName}</span>
                                <span><i class="icomoon">&#xe9b2;</i>性别：${memberList.sex}</span>
                                <span><i class="icomoon">&#xead0;</i>年级：${memberList.grade}</span>
                            </p>
                            <p>
                                <span><i class="icomoon">&#xea81;</i>专业：${memberList.major}</span>
                                <span><i class="icomoon">&#xea04;</i>部门：后端

                             </span>
                                <span>
                                    <i class="icomoon">&#xea58;</i>职务：
                                   <c:if test="${memberList.position == '1'}">
                                       主任
                                   </c:if>
                        <c:if test="${memberList.position == '2'}">
                            副主任
                        </c:if>
                        <c:if test="${memberList.position == '3'}">
                            负责人
                        </c:if>
                        <c:if test="${memberList.position == '4'}">
                            成员
                        </c:if>
                             </span>
                            </p>
                            <p class="mumberIntroduce">
                                <i class="icomoon">&#xeac6;</i>个人简介：${memberList.introduce}
                            </p>
                        </div>
                    </div>
                </c:if>
            </c:if>
        </c:forEach>

        <c:forEach items="${memberList}" var="memberList" varStatus="status">
            <c:if test="${memberList.visible == '1'}">
                <c:if test="${memberList.grade==2014&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                    <div class="people">
                        <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                        <div class="content">
                            <p>
                                <span><i class="icomoon">&#xe9ef;</i>姓名：${memberList.memberName}</span>
                                <span><i class="icomoon">&#xe9b2;</i>性别：${memberList.sex}</span>
                                <span><i class="icomoon">&#xead0;</i>年级：${memberList.grade}</span>
                            </p>
                            <p>
                                <span><i class="icomoon">&#xea81;</i>专业：${memberList.major}</span>
                                <span><i class="icomoon">&#xea04;</i>部门：后端</span>
                                <span><i class="icomoon">&#xea58;</i>职务：
                                <c:if test="${memberList.position == '1'}">
                                         主任
                                         </c:if>
                            <c:if test="${memberList.position == '2'}">
                                副主任
                            </c:if>
                            <c:if test="${memberList.position == '3'}">
                               负责人
                            </c:if>
                            <c:if test="${memberList.position == '4'}">
                               成员
                            </c:if>

                            </p>
                            <p class="mumberIntroduce">
                                <i class="icomoon">&#xeac6;</i>个人简介：
                                    ${memberList.introduce}
                            </p>
                        </div>
                    </div>
                </c:if>
            </c:if>

        </c:forEach>

        <c:forEach items="${memberList}" var="memberList" varStatus="status">

            <c:if test="${memberList.visible == '1'}">
                <c:if test="${memberList.grade==2015&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                    <div class="people">
                        <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                        <div class="content">
                            <p>
                                <span><i class="icomoon">&#xe9ef;</i>姓名：${memberList.memberName}</span>
                                <span><i class="icomoon">&#xe9b2;</i>性别：${memberList.sex}</span>
                                <span><i class="icomoon">&#xead0;</i>年级：${memberList.grade}</span>
                            </p>
                            <p>
                                <span><i class="icomoon">&#xea81;</i>专业：${memberList.major}</span>
                                <span><i class="icomoon">&#xea04;</i>部门：后端</span>
                                <span><i class="icomoon">&#xea58;</i>职务：
                                <c:if test="${memberList.position == '1'}">
                                         主任
                                         </c:if>
                            <c:if test="${memberList.position == '2'}">
                                副主任
                            </c:if>
                            <c:if test="${memberList.position == '3'}">
                               负责人
                            </c:if>
                            <c:if test="${memberList.position == '4'}">
                               成员
                            </c:if>

                            </p>
                            <p class="mumberIntroduce">
                                <i class="icomoon">&#xeac6;</i>个人简介：
                                    ${memberList.introduce}
                            </p>
                        </div>
                    </div>
                </c:if>
            </c:if>

        </c:forEach>

        <c:forEach items="${memberList}" var="memberList" varStatus="status">

            <c:if test="${memberList.visible == '1'}">
                <c:if test="${memberList.grade==2016&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                    <div class="people">
                        <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                        <div class="content">
                            <p>
                                <span><i class="icomoon">&#xe9ef;</i>姓名：${memberList.memberName}</span>
                                <span><i class="icomoon">&#xe9b2;</i>性别：${memberList.sex}</span>
                                <span><i class="icomoon">&#xead0;</i>年级：${memberList.grade}</span>
                            </p>
                            <p>
                                <span><i class="icomoon">&#xea81;</i>专业：${memberList.major}</span>
                                <span><i class="icomoon">&#xea04;</i>部门：后端</span>
                                <span><i class="icomoon">&#xea58;</i>职务：
                                <c:if test="${memberList.position == '1'}">
                                         主任
                                         </c:if>
                            <c:if test="${memberList.position == '2'}">
                                副主任
                            </c:if>
                            <c:if test="${memberList.position == '3'}">
                               负责人
                            </c:if>
                            <c:if test="${memberList.position == '4'}">
                               成员
                            </c:if>

                            </p>
                            <p class="mumberIntroduce">
                                <i class="icomoon">&#xeac6;</i>个人简介：
                                    ${memberList.introduce}
                            </p>
                        </div>
                    </div>
                </c:if>
            </c:if>

        </c:forEach>

        <c:forEach items="${memberList}" var="memberList" varStatus="status">
            <c:if test="${memberList.visible == '1'}">
                <c:if test="${memberList.grade==2017&&memberList.position!='1'&&memberList.position!='2'&&memberList.position!='3'}">
                    <div class="people">
                        <img src="../../../image/memberImage/${memberList.memberPhoto}" class="circle">
                        <div class="content">
                            <p>
                                <span><i class="icomoon">&#xe9ef;</i>姓名：${memberList.memberName}</span>
                                <span><i class="icomoon">&#xe9b2;</i>性别：${memberList.sex}</span>
                                <span><i class="icomoon">&#xead0;</i>年级：${memberList.grade}</span>
                            </p>
                            <p>
                                <span><i class="icomoon">&#xea81;</i>专业：${memberList.major}</span>
                                <span><i class="icomoon">&#xea04;</i>部门：后端</span>
                                <span><i class="icomoon">&#xea58;</i>职务：
                                <c:if test="${memberList.position == '1'}">
                                         主任
                                         </c:if>
                            <c:if test="${memberList.position == '2'}">
                                副主任
                            </c:if>
                            <c:if test="${memberList.position == '3'}">
                               负责人
                            </c:if>
                            <c:if test="${memberList.position == '4'}">
                               成员
                            </c:if>

                            </p>
                            <p class="mumberIntroduce">
                                <i class="icomoon">&#xeac6;</i>个人简介：
                                    ${memberList.introduce}
                            </p>
                        </div>
                    </div>
                </c:if>
            </c:if>
        </c:forEach>


    </div>
</div>
<div class="footer">
    <img class="foot-bg" src="../../../img/nav/foot-bg2.jpg">
    <div class="foot-left">
        <div class="about">
            <ul>
                <li class="title">关于我们 About</li>
                <li>
                    <a href="http://www.nenu.edu.cn" target="_blank">东北师范大学</a>
                </li>
                <li>卓音工作室</li>
                <li>案例展示</li>
            </ul>
        </div>
        <div class="connect">
            <ul>
                <li class="title">联系我们 Connection</li>
                <li>QQ：xxxxxxxx</li>
                <li>手机：13111111111</li>
                <li>邮箱：13111111111@qq.com</li>
            </ul>
        </div>
    </div>
    <div class="foot-right">
        <img src="../../../img/nav/join.jpg" class="saoma"/>
        <img src="../../../img/nav/tubiao.jpg" class="tubiao"/>
    </div>
    <div class="copyright">
        <span>Copyright &copy; 卓音工作室</span>
    </div>
</div>
<div class="fix-nav">
    <img src="../../../img/nav/right.jpg" class="close"/>
    <img src="../../../img/nav/side.jpg" class="side">
    <img src="../../../img/nav/left.jpg" class="open"/>
</div>
</div>
</body>
</html>
