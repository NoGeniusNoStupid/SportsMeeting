<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage/Main.Master" AutoEventWireup="true" CodeBehind="NewsPage.aspx.cs" Inherits="SportsMeeting.FrontPage.NewsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="space_hx">&nbsp;</div>
    <div class="scd clearfix">
        <div class="news clearfix">

            <div class="news" style="">
                <div class="scd_top">
                    <span>全部新闻</span>
                </div>
                <div class="new_m">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="n_m">
                                <div class="title">
                                    <span><%#Eval("OperTime") %></span>
                                    <p class="name"><a href="NewsDetail.aspx?id=<%#Eval("Id") %>"><%#Eval("Title") %></a>
                                     【<%#Eval("Type") %> 】
                                    </p>
                                   
                                </div>
                                <div class="des">
                                   <%#Eval("Content") %>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <div class="space_hx">&nbsp;</div>
        <div class="pages">
            <%=mPageBar %>
        </div>
    </div>

</asp:Content>
