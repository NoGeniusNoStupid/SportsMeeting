<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SportsMeeting.AdminPage.Index" %>

<!DOCTYPE html>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>运动会管理系统</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
    <script src="js/jquery.min.js"></script>
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>

</head>
<body>
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="./index.html">运动会后台管理</a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>
       <%-- <ul class="layui-nav left fast-add" lay-filter="">
            <li class="layui-nav-item">
                <a href="javascript:;">+新增</a>
                <dl class="layui-nav-child">
                    <!-- 二级菜单 -->
                    <dd><a onclick="x_admin_show('资讯','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>资讯</a></dd>
                    <dd><a onclick="x_admin_show('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>
                    <dd><a onclick="x_admin_show('用户','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>用户</a></dd>
                </dl>
            </li>
        </ul>--%>
        <ul class="layui-nav right" lay-filter="">
            <li class="layui-nav-item">
                <a href="javascript:;">管理员：<%=pageModel.Name %></a>
                <dl class="layui-nav-child">
                    <!-- 二级菜单 -->
                    <dd><a _href="/AdminPage/AdminPage/UpdatePwd.aspx"></a></dd>
                    <dd><a href="/AdminPage/Login.aspx">退出</a></dd>
                </dl>
            </li>
         <%--   <li class="layui-nav-item">
                <a href="javascript:;">admin</a>
                <dl class="layui-nav-child">
                    <!-- 二级菜单 -->
                    <dd><a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a></dd>
                    <dd><a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
                    <dd><a href="./login.html">退出</a></dd>
                </dl>
            </li>--%>
            <li class="layui-nav-item to-index"><a href="/FrontPage/Default.aspx">前台首页</a></li>
        </ul>

    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
    <!-- 左侧菜单开始 -->
    <div class="left-nav">
        <div id="side-nav">
            <ul id="nav">
                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe726;</i>
                        <cite>管理员管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="/AdminPage/AdminPage/Add.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>添加管理员</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="/AdminPage/AdminPage/Manage.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>管理员管理</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6b8;</i>
                        <cite>用户管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>

                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="/AdminPage/SportsManPage/Manage.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>用户管理</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe723;</i>
                        <cite>裁判管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="/AdminPage//RefereePage/Add.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>添加裁判</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="/AdminPage//RefereePage/Manage.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>裁判管理</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe723;</i>
                        <cite>运动会项目管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="/AdminPage/SportsItemPage/Add.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>项目添加</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="/AdminPage/SportsItemPage/Manage.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>项目管理</cite>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe723;</i>
                        <cite>新闻管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="/AdminPage/NewsPage/Add.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>新闻添加</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="/AdminPage/NewsPage/Manage.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>新闻管理</cite>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6ce;</i>
                        <cite>报名管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="/AdminPage/SignUpPage/Manage.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>报名审核</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="/AdminPage/SignUpPage/Manage.aspx?type='success'">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>历史记录</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6b4;</i>
                        <cite>成绩管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="/AdminPage/Score/Manage.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>成绩管理</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6b5;</i>
                        <cite>排行榜</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="/AdminPage/Rank/SelfManage.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>个人榜</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="/AdminPage/Rank/Manage.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>班级榜</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6b5;</i>
                        <cite>系统设置</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="/AdminPage/AdminPage/UpdatePwd.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>密码修改</cite>
                            </a>
                        </li>
                        <li>
                            <a href="/AdminPage/Login.aspx">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>退出</cite>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- <div class="x-slide_left"></div> -->
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
            <ul class="layui-tab-title">
                <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe src='/AdminPage/Welcome.aspx' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <%-- <div class="footer">
        <div class="copyright">Copyright ©2017 x-admin 2.3 All Rights Reserved  更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></div>
    </div>--%>
    <!-- 底部结束 -->

</body>
</html>
