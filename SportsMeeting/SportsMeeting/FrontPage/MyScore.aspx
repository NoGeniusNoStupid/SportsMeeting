<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage/Main.Master" AutoEventWireup="true" CodeBehind="MyScore.aspx.cs" Inherits="SportsMeeting.FrontPage.MyScore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="join clearfix" style="width: 1100px; margin-left: auto; margin-right: auto">
        <div class="invite">
            <div>
                <div class="layui-row">
                    <asp:TextBox ID="SreachWhere" runat="server" placeholder="请输入项目名称" lay-verify="Name" autocomplete="off" class="layui-input" Width="255px"></asp:TextBox>
                    <asp:Button class="layui-btn" lay-filter="add" lay-submit="" ID="Sreach" runat="server" Text="查询" OnClick="Sreach_Click" />
                </div>
            </div>
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <th>姓名</th>
                    <th>项目名称</th>
                    <th>初赛时间</th>
                    <th>初赛成绩</th>
                    <th>初赛排名</th>
                    <th>决赛时间</th>
                    <th>决赛成绩</th>
                    <th>决赛排名</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("SportsMan.Name")%></td>
                            <td><%# Eval("SportsItem.Name")%></td>
                            <td><%# Eval("SportsItem.FirstTime")%></td>
                            <td><%# Eval("FirstScore")%></td>
                            <td><%# Eval("Rank")%></td>
                            <td><%# Eval("SportsItem.FinalTime")%></td>
                            <td><%# Eval("FinalScore")%></td>
                            <td><%# Eval("FinalRank")%></td>
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
