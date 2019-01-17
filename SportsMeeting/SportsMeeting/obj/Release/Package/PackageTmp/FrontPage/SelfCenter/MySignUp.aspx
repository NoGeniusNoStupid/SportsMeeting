<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage/Main.Master" AutoEventWireup="true" CodeBehind="MySignUp.aspx.cs" Inherits="SportsMeeting.FrontPage.SelfCenter.MySignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="join clearfix" style="width: 1100px; margin-left: auto; margin-right: auto">
        <div class="invite">
            <div>
                <div class="layui-row">
                    <asp:TextBox ID="SreachWhere" runat="server" placeholder="请输入用户姓名" lay-verify="Name" autocomplete="off" class="layui-input" Width="255px"></asp:TextBox>
                    <asp:Button class="layui-btn" lay-filter="add" lay-submit="" ID="Sreach" runat="server" Text="查询" OnClick="Sreach_Click" />
                </div>
            </div>
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <th>姓名</th>
                    <th>金牌次数</th>
                    <th>银牌次数</th>
                    <th>铜牌次数</th>
                    <th>总奖牌数</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("SportsMan.Name")%></td>
                            <td><%# Eval("FirstNum")%></td>
                            <td><%# Eval("SecondNum")%></td>
                            <td><%# Eval("ThirdNum")%></td>
                            <td><%# Eval("AllNum")%></td>
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