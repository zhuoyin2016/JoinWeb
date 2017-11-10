<%--
  Created by IntelliJ IDEA.
  User: TestUser
  Date: 2017/11/8
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>卓音工作室官网</title>
    <link rel="stylesheet" href="../../css/member/reset.css"/>
    <link rel="stylesheet" href="../../css/member/index.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/member/mumberIntroduce.css">
    <script src="../../js/common/jquery.js"></script>
    <script src="../../js/member/index.js"></script>
    <script src="../../js/member/mumberIntroduce.js"></script>
</head>
<body>
<div class="wrap">
    <!--#include file="head.html"
    #include file="side.html"-->

    <div class="main">
        <div class="section" id="section1">
            <div class="banner">
                <div class="banner-list">
                    <div class="img03">
                        <p>JOIN STUDIO</p>
                    </div>
                    <div class="img01">
                        <p>JOIN STUDIO</p>
                        <p class="txt2">卓音工作室</p>
                        <p>Information to create competitiveness</p>
                    </div>
                    <div class="img02">
                        <p>Information to create competitiveness</p>
                        <p class="txt2">信息创造竞争力</p>
                    </div>
                    <div class="img03">
                        <p>JOIN STUDIO</p>
                    </div>
                    <div class="img01">
                        <p>JOIN STUDIO</p>
                        <p class="txt2">卓音工作室</p>
                        <p>Information to create competitiveness</p>
                    </div>

                </div>
                <div class="dots">
                    <span class="on"></span>
                    <span></span>
                    <span></span>
                </div>
                <a href="javascript:;" id="prev" class="arrow">&lt;</a>
                <a href="javascript:;" id="next" class="arrow">&gt;</a>
            </div>
        </div>
        <div class="section" id="section2">
            <div class="sec2-top">
                <div class="menu">JoinStudio</div>
                <div class="sec-head">
                    <h1>工作室简介</h1>
                    <div class="sec2-more">
                        <a href="http://www.myjoin.cn" target="_blank">卓音工作室--卓音在线</a>
                        <a href="http://v.youku.com/v_show/id_XMTA1NDYwMDE2.html" target="_blank">卓音工作室宣传片</a>
                        <a href="http://byb.myjoin.cn/special/1" target="_blank">媒体报道</a>
                    </div>
                </div>
            </div>
            <div class="sec2-bottom">
                <div class="sec-content">
                    <h2>东北师范大学卓音工作室--JOINSTUDIO</h2>
                    <p>是东北师范大学学生就业指导服务中心直属的负责网络工作的机构</p>
                    <p>是由若干在校本科生组成的一个非营利性组织，卓音工作室的使命是建设国内一流的高校就业工作信息支持系统。</p>
                    <p>2000年3月25日，卓音工作室正式成立。“卓音”即“Jo_In”，本意为“JobInformation”，又与英文Join同音，暗含卓越、团结之意。</p>
                    <p>卓音从成立之初到现在，在学校领导的关怀和支持下，以高度的责任感和追求完美的精神，克服了一系列困难，硕果累累，成长为致力于大学生就业信息服务的最优秀的团队之一。</p>
                </div>
            </div>
        </div>
        <div class="section" id="section3">
            <div class="sec-head">
                <h1>项目介绍</h1>
            </div>
            <div class="sec-content">
                <a class="work-content">
                    <a class="work-item" href="#">
                        <h4>1</h4>
                        <h6>PROJECT-1</h6>
                        <p>Aliquam volutpat sapien vitae elit porta fermentum. Nam condimentum rhoncus nisl.</p>
                    </a>
                    <a class="work-item" href="#">
                        <h4>2</h4>
                        <h6>PROJECT-2</h6>
                        <p>Aliquam volutpat sapien vitae elit porta fermentum. Nam condimentum rhoncus nisl.</p>
                    </a>
                    <a class="work-item" href="#">
                        <h4>3</h4>
                        <h6>PROJECT-3</h6>
                        <p>Aliquam volutpat sapien vitae elit porta fermentum. Nam condimentum rhoncus nisl.</p>
                    </a>
                    <a class="work-item" href="#">
                        <h4>4</h4>
                        <h6>PROJECT-4</h6>
                        <p>Aliquam volutpat sapien vitae elit porta fermentum. Nam condimentum rhoncus nisl.</p>
                    </a>
                    <a class="work-item" href="#">
                        <h4>5</h4>
                        <h6>PROJECT-5</h6>
                        <p>Aliquam volutpat sapien vitae elit porta fermentum. Nam condimentum rhoncus nisl.</p>
                    </a>
                    <a class="work-item" href="#">
                        <h4>6</h4>
                        <h6>PROJECT-6</h6>
                        <p>Aliquam volutpat sapien vitae elit porta fermentum. Nam condimentum rhoncus nisl.</p>
                    </a>
            </div>
        </div>
    </div>
    <div class="section mumber" id="section4">
        <h1>关于我们</h1>
        <div class="mumber-center">
            <a href="${website}member/queryByDepartment2/${1}" target="_blank">             <!-- 成员介绍 -->
                <div class="part" id="part1">
                    <div class="box1"></div>
                    <div class="box2">
                        <h2 class="special">研究生成员</h2>  <!-- 研究生 -->
                        <p></p>
                    </div>
                    <div class="box3"></div>
                </div>
            </a>


            <a href="${website}member/queryByDepartment2/${2}" target="_blank">
                <div class="part" id="part2">
                    <div class="box1"></div>
                    <div class="box2">
                        <h2>前端</h2>                     <!-- 前端 -->
                        <p>web页面开发,学习HTML，css，js等技术</p>
                    </div>
                    <div class="box3"></div>
                </div>
            </a>
            <a href="${website}member/queryByDepartment2/${3}" target="_blank">
                <div class="part" id="part3">
                    <div class="box1"></div>
                    <div class="box2">
                        <h2>后端</h2>                          <!-- 后端 -->
                        <p>后台开发，学习php，java，asp等技术</p>
                    </div>
                    <div class="box3"></div>
                </div>
            </a>
            <a href="${website}member/queryByDepartment2/${4}" target="_blank">
                <div class="part" id="part4">
                    <div class="box1"></div>
                    <div class="box2">
                        <h2>产品部</h2>                               <!-- 产品部 -->
                        <p>规划工作室发展，管理项目进度，组织工作室日常活动。</p>
                    </div>
                    <div class="box3"></div>
                </div>
            </a>
            <div class="clear"></div>
        </div>

    </div>
    <div class="section" id="section5">
        <div class="sec-head">
            <h1>加入我们</h1>
        </div>
        <div class="sec-content">
            <div class="joinus">
                <h2>JOIN THE STUDIO</h2>
                <span></span>
                <h4>WELCOME TO REGISTER</h4>
                <img src="../../../img/index/JoinUs.jpg"/>
                <p>jdlashdoiahdfoiashfoiashfioashfoishfioshfishfiossfhkashfa</p>
                <a href="#">加入我们</a>
            </div>
        </div>
    </div>
</div>

<!--#include file="foot.html"-->
</div>
</body>
</html>
