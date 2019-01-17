<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemDetail.aspx.cs" Inherits="SportsMeeting.AdminPage.Score.ItemDetail" %>

<!DOCTYPE html>

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

            <% if (Session["RefereeId"] == null)
               { %>
             <a href="Manage.aspx"><cite>成绩管理</cite></a>
            <%}
               else
               { %>
              <a href="Manage.aspx?type=1"><cite>成绩管理</cite></a>
            <%} %>
         


            <a><cite>初赛成绩</cite></a>
        </span>

        <a class="layui-btn layui-btn-small" style="line-height: 1.6em; margin-top: 3px; float: right" href="javascript:location.replace(location.href);" title="刷新">
            <i class="layui-icon" style="line-height: 30px">ဂ</i></a>

        <%--  <% if (Session[""] == null)
           { %>
        <a class="layui-btn layui-btn-small" style="line-height: 1.6em; margin-top: 3px; float: right" href="Manage.aspx" title="返回">返回</a>
        <%}
           else
           { %>
        <a class="layui-btn layui-btn-small" style="line-height: 1.6em; margin-top: 3px; float: right" href="Manage.aspx?type=1" title="返回">返回</a>
        <%} %>--%>
    </div>
    <div class="x-body">
        <form class="layui-form layui-col-md12 x-so" runat="server">
            <div class="layui-row">
                <asp:TextBox ID="SreachWhere" runat="server" placeholder="请输入姓名" lay-verify="Name" autocomplete="off" class="layui-input" Width="255px"></asp:TextBox>
                <asp:Button class="layui-btn" lay-filter="add" lay-submit="" ID="Sreach" runat="server" Text="查询" OnClick="Sreach_Click" />
            </div>
            <table class="layui-table">
                <thead>
                    <tr>
                        <th>编号</th>
                        <th>项目名称</th>
                        <th>规则</th>
                        <th>姓名</th>
                        <th>年龄</th>
                        <th>班级</th>
                        <th>初赛时间</th>
                        <th>初赛成绩</th>
                        <th>决赛时间</th>
                        <th>决赛成绩</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("Id")%></td>
                                <td><%# Eval("SportsItem.Name")%></td>
                                <td><%# Eval("SportsItem.Rule")%></td>
                                <td><%# Eval("SportsMan.Name")%></td>
                                <td><%# Eval("SportsMan.Age")%></td>
                                <td><%# Eval("SportsMan.Class")%></td>
                                <td><%# Eval("SportsItem.FirstTime")%></td>
                                <td><%# Eval("FirstScore")%></td>
                                <td><%# Eval("SportsItem.FinalTime")%></td>
                                <td><%# Eval("FinalScore")%></td>
                                <td class="td-manage">
                                    <a title="初赛成绩" href="AddFristScore.aspx?id=<%# Eval("Id")%>">初赛成绩 
                                    </a>

                                    <%-- <a title="决赛成绩"  href="AddFinalScore.aspx?id=<%# Eval("Id")%>">
                                        决赛成绩
                                     </a>--%>
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
