<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SportsMeeting.FrontPage.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="join clearfix" style="width: 800px; margin-left: auto; margin-right: auto">
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

                <div class="li_r">
                    <asp:TextBox ID="SurePwd"  TextMode="Password" runat="server" placeholder="确认密码："></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="必填" ControlToValidate="SurePwd" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </li>
            <li class="clearfix">

                <div class="li_r">
                    <asp:TextBox ID="Name" runat="server" placeholder="确认姓名："></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="必填" ControlToValidate="Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </li>
            <li class="clearfix">

                <div class="li_r">
                    <asp:TextBox ID="Age" runat="server" placeholder="年龄："></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="必填" ControlToValidate="Age" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </li>
            <li class="clearfix">

                <div class="li_r">
                    <asp:DropDownList ID="Sex" runat="server" Style="width: 340px; height: 40px; border: 1px solid #ddd; padding: 0 5px;">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </li>
            <li class="clearfix">
                <div class="li_r">
                    <asp:TextBox ID="Class" runat="server" placeholder="班级："></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="必填" ControlToValidate="Class" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </li>
            <li class="clearfix">

                <div class="li_r">
                    <asp:TextBox ID="Tel" runat="server" placeholder="电话："></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="必填" ControlToValidate="Tel" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </li>

            <li class="clearfix">
                <span class="title">&nbsp;</span>
                <div class="li_r">
                    <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" />
                </div>
            </li>
        </ul>
    </div>

</asp:Content>
