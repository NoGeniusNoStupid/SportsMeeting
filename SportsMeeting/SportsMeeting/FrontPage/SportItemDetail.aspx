<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage/Main.Master" AutoEventWireup="true" CodeBehind="SportItemDetail.aspx.cs" Inherits="SportsMeeting.FrontPage.SportItemDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="join clearfix" style="width: 1100px; margin-left: auto; margin-right: auto">
        <div class="invite">
            <div>
                <div class="layui-row">
                    <asp:TextBox ID="SreachWhere" runat="server" placeholder="请输入姓名" lay-verify="Name" autocomplete="off" class="layui-input"></asp:TextBox>
                    <asp:Button class="layui-btn" lay-filter="add" lay-submit="" ID="Sreach" runat="server" Text="查询" OnClick="Sreach_Click" />
                </div>
            </div>
            <table cellpadding="0" cellspacing="0">
                <tr>
                   
                    <th scope="col">姓名</th>
                    <th scope="col">班级</th>
                    <th scope="col">决赛排名</th>
                    <th scope="col">决赛成绩</th>
                    <th scope="col">初赛排名</th>
                    <th scope="col">初赛成绩</th>
                  
                </tr>

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("SportsMan.Name")%></td>
                            <td><%# Eval("SportsMan.Class")%></td>
                            <td><%# Eval("SportsItem.FirstTime")%></td>
                            <td><%# Eval("FirstScore")%></td>
                            <td><%# Eval("SportsItem.FinalTime")%></td>
                            <td><%# Eval("FinalScore")%></td>
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
