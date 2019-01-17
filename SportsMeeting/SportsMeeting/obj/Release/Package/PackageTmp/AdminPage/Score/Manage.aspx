<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="SportsMeeting.AdminPage.Score.Manage" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>运动会管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
</head>

<body class="layui-anim layui-anim-up">
    <div class="x-nav">
        <span class="layui-breadcrumb">
            <a href="../Welcome.aspx">首页</a>
            <a>
                <cite>成绩管理</cite></a>
        </span>
        <a class="layui-btn layui-btn-small" style="line-height: 1.6em; margin-top: 3px; float: right" href="javascript:location.replace(location.href);" title="刷新">
            <i class="layui-icon" style="line-height: 30px">ဂ</i></a>
    </div>
    <div class="x-body">
        <form class="layui-form layui-col-md12 x-so" runat="server">
            <div class="layui-row">
                <asp:TextBox ID="SreachWhere" runat="server" placeholder="请输入项目名称" lay-verify="Name" autocomplete="off" class="layui-input" Width="255px"></asp:TextBox>
                <asp:Button class="layui-btn" lay-filter="add" lay-submit="" ID="Sreach" runat="server" Text="查询" OnClick="Sreach_Click" />
            </div>
            <table class="layui-table">
                <thead>
                    <tr>
                        <th>编号</th>
                        <th>姓名</th>
                        <th>类型</th>
                        <th>限制</th>
                        <th>裁判</th>
                        <th>规则</th>
                        <th>初赛时间</th>
                        <th>决赛时间</th>
                        <th>状态</th>
                        <th>添加时间</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("Id")%></td>
                                <td><%# Eval("Name")%></td>
                                <td><%# Eval("Type")%></td>
                                <td><%# Eval("Limit")%></td>
                                <td><%# Eval("Referee.Name")%></td>
                                <td><%# Eval("Rule")%></td>
                                <td><%# Eval("FirstTime")%></td>
                                <td><%# Eval("FinalTime")%></td>
                                   <td><%# Eval("State")%></td>
                                <td><%# Eval("OperTime")%></td>
                                <td class="td-manage">
                                    <a title="初赛成绩" href="ItemDetail.aspx?id=<%# Eval("Id")%>">
                                        <i class="layui-icon">&#xe642;</i></a>

                                    <a title="决赛成绩" href="FinalDetail.aspx?id=<%# Eval("Id")%>">
                                        <i class="layui-icon">&#xe643;</i></a>

                                   <asp:LinkButton ID="Release" runat="server"  title="发布成绩"  OnClick="Release_Click" CommandArgument='<%# Eval("Id") %>' OnClientClick='return confirm("您确定要发布成绩吗？");'>
                                      <i class="layui-icon">&#xe644;</i>
                                  </asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
           
            <div class="page">
                <%=mPageBar %>
            </div>
             <div class="page">
                *系统默认规则：1、比赛项目：默认设置决赛人数六人，不足六人报名的初赛后直接进入决赛。
                 
            </div>
        </form>
    </div>
</body>
</html>
