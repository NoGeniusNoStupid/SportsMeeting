<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage/Main.Master" AutoEventWireup="true" CodeBehind="MySignUp.aspx.cs" Inherits="SportsMeeting.FrontPage.MySignUp" %>
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
                  <th>编号</th>
                        <th>项目名称</th>
                        <th>类型</th>
                        <th>初赛时间</th>
                        <th>决赛时间</th>
                        <th>报名时间</th>
                        <th>报名状态</th>
                    
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Id")%></td>
                                <td><%# Eval("SportsItem.Name")%></td>
                                <td><%# Eval("SportsItem.Type")%></td>
                                <td><%# Eval("SportsItem.FirstTime")%></td>
                                <td><%# Eval("SportsItem.FinalTime")%></td>
                                <td><%# Eval("SportsMan.Name")%></td>
                                <td><%# Eval("SportsMan.Sex")%></td>
                                <td><%# Eval("SportsMan.Age")%></td>
                                <td><%# Eval("OperTime")%></td>
                                   <td><%# Eval("State")%></td>
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