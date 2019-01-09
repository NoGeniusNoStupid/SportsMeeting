<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage/Main.Master" AutoEventWireup="true" CodeBehind="OnlineSignUp.aspx.cs" Inherits="SportsMeeting.FrontPage.OnlineSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="join clearfix" style="width: 1100px; margin-left: auto; margin-right: auto">
        <div class="invite">
            <div>
                <div class="layui-row">
                    <asp:TextBox ID="SreachWhere" runat="server" placeholder="请输入项目名称" lay-verify="Name" autocomplete="off" class="layui-input"></asp:TextBox>
                    <asp:Button class="layui-btn" lay-filter="add" lay-submit="" ID="Sreach" runat="server" Text="查询" OnClick="Sreach_Click" />
                </div>
            </div>
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <th scope="col">编号</th>
                    <th scope="col">项目</th>
                    <th scope="col">类型</th>
                    <th scope="col">限制</th>
                    <th scope="col">裁判</th>
                    <th scope="col">开始时间</th>
                    <th scope="col">结束时间</th>
                    <th scope="col">添加时间</th>
                    <th scope="col">操作</th>
                </tr>

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Id")%></td>
                            <td><%# Eval("Name")%></td>
                            <td><%# Eval("Type")%></td>
                             <td><%# Eval("Limit")%></td>
                            <td><%# Eval("Referee.Name")%></td>
                            <td><%# Eval("FirstTime")%></td>
                            <td><%# Eval("FinalTime")%></td>
                            <td><%# Eval("OperTime")%></td
                            <td class="td-manage"></td>
                            <td class="td-manage">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="SigngUp_Click" CommandArgument='<%# Eval("Id") %>' OnClientClick='return confirm("您确定要报名该项目吗？");'>
                                      报名
                                </asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>

            <div class="space_hx">&nbsp;</div>
            <div class="pages">
                <%=mPageBar %>
            </div>
        </div>
    </div>

</asp:Content>
