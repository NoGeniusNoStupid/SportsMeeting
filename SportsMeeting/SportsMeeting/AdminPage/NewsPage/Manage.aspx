﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="SportsMeeting.AdminPage.NewsPage.Manage" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
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
                <cite>新闻管理</cite></a>
        </span>
        <a class="layui-btn layui-btn-small" style="line-height: 1.6em; margin-top: 3px; float: right" href="javascript:location.replace(location.href);" title="刷新">
            <i class="layui-icon" style="line-height: 30px">ဂ</i></a>
    </div>
    <div class="x-body">
        <form class="layui-form layui-col-md12 x-so" runat="server">
            <div class="layui-row">
                <asp:TextBox ID="SreachWhere" runat="server" placeholder="请输入新闻标题" lay-verify="Name" autocomplete="off" class="layui-input"  Width="255px"></asp:TextBox>
                <asp:Button class="layui-btn" lay-filter="add" lay-submit="" ID="Sreach" runat="server" Text="查询" OnClick="Sreach_Click" />
            </div>
            <xblock>
                <a href="Add.aspx" class="layui-btn"><i class="layui-icon"></i>添加</a>
                <%--<span class="x-right" style="line-height:40px">共有数据：88 条</span>--%>
      </xblock>
            <table class="layui-table">
                <thead>
                    <tr>
                        <th>编号</th>
                        <th>标题</th>
                        <th>类型</th>
                        <th>内容</th>
                        <th>点击率</th>
                        <th>添加时间</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("Id")%></td>
                                <td><%# Eval("Title")%></td>
                                <td><%# Eval("Type")%></td>
                                <td><%# Eval("Content")%></td>
                                <td><%# Eval("ClickNum")%></td>
                                <td><%# Eval("OperTime")%></td>
                                <td class="td-manage">
                                 
                                    <a title="编辑"  href="Add.aspx?type=1&&id=<%# Eval("Id")%>">
                                        <i class="layui-icon">&#xe642;</i>
                                 
                                  <asp:LinkButton ID="Delete"  title="删除"  runat="server" OnClick="Delete_Click" CommandArgument='<%# Eval("Id") %>' OnClientClick='return confirm("您确定要删除此信息吗？");'>
                                      <i class="layui-icon">&#xe640;</i>
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
        </form>
    </div>
</body>
</html>
