<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="SportsMeeting.AdminPage.welcome" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>运动会管理系统</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="./css/font.css">
        <link rel="stylesheet" href="./css/xadmin.css">
    </head>
    <body>
    <div class="x-body layui-anim layui-anim-up">
        <blockquote class="layui-elem-quote">欢迎管理员：
            <span class="x-red"><%=pageModel.Name %></span>！当前时间:<%=date %></blockquote>
        <fieldset class="layui-elem-field">
            <legend>数据统计</legend>
            <div class="layui-field-box">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body">
                            <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside" lay-arrow="none" style="width: 100%; height: 90px;">
                                <div carousel-item="">
                                    <ul class="layui-row layui-col-space10 layui-this">
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>运动会项目数</h3>
                                                <p>
                                                    <cite><%=SportsItemNum %></cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>用户数</h3>
                                                <p>
                                                    <cite><%=SportsManNum %></cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>裁判数</h3>
                                                <p>
                                                    <cite><%=RefereeNum %></cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>报名数</h3>
                                                <p>
                                                    <cite><%=SignUpNum %></cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                           <%-- <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>文章数</h3>
                                                <p>
                                                    <cite>67</cite></p>
                                            </a>--%>
                                        </li>
                                        <li class="layui-col-xs2">
                                           <%-- <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>文章数</h3>
                                                <p>
                                                    <cite>6766</cite></p>
                                            </a>--%>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
        <fieldset class="layui-elem-field">
            <legend>系统通知</legend>
            <div class="layui-field-box">
                <table class="layui-table" lay-skin="line">
                    <tbody>
                        <tr>
                            <td >
                                <a class="x-a" href="/" target="_blank">新版运动会管理系统上线啦</a>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <a class="x-a" href="/" target="_blank">作者:XXXX &nbsp&nbsp 联系方式:XXXXX</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </fieldset>
        <fieldset class="layui-elem-field">
            <legend>系统信息</legend>
            <div class="layui-field-box">
                <table class="layui-table">
                    <tbody>
                        <tr>
                            <th>运动会管理系统版本</th>
                            <td>1.0</td></tr>
                        <tr>
                            <th>服务器地址</th>
                            <td>localhost</td></tr>
                        <tr>
                            <th>操作系统</th>
                            <td>Windows</td></tr>
                        <tr>
                            <th>运行环境</th>
                            <td>ASP.NET</td></tr>
                        
                        <tr>
                            <th>SqlServer版本</th>
                            <td>2008R2</td></tr>
                       
                    </tbody>
                </table>
            </div>
        </fieldset>
      
    </div>
    
    </body>
</html>
