<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SportsMeeting.FrontPage.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="join clearfix" style="width: 500px; margin-left: auto; margin-right: auto">
        <ul class="book">
            <li class="clearfix">
                <p>请如实填写个人信息</p>
            </li>
            <li class="clearfix">

                <div class="li_r">
                    <asp:TextBox ID="Account" runat="server" placeholder="账号："></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必填" ControlToValidate="Account" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </li>
            <li class="clearfix">

                <div class="li_r">
                    <asp:TextBox ID="Pwd" TextMode="Password" runat="server" placeholder="密码："></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="必填" ControlToValidate="Pwd" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </li>
            <li class="clearfix">
                <span class="title">&nbsp;</span>
                <div class="li_r">
                    <asp:Button ID="Button1" runat="server" Text="登陆" OnClick="Button1_Click" />
                </div>
            </li>
        </ul>
    </div>
</asp:Content>
