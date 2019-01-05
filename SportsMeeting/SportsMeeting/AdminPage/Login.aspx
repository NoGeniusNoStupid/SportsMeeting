<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SportsMeeting.AdminPage.Login" %>

<!DOCTYPE html>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.0</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
     <script src="js/jquery.min.js"></script>
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>

</head>
<body class="login-bg">

    <div class="login layui-anim layui-anim-up">
        <div class="message">运动会管理系统-登录</div>
        <div id="darkbannerwrap"></div>

        <form method="post" class="layui-form" runat="server">
            <%--   <input name="username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
                        <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">--%>
            <asp:TextBox ID="username" placeholder="用户名" lay-verify="required" runat="server" class="layui-input"></asp:TextBox>
            <hr class="hr15">
            <asp:TextBox ID="password" TextMode="Password" placeholder="密码" lay-verify="required" runat="server" class="layui-input"></asp:TextBox>
            <hr class="hr15">
           <%-- <asp:TextBox ID="VerCode" placeholder="验证码" lay-verify="required" runat="server" class="layui-input"></asp:TextBox>
            <img id="img" src="/Handel/CheckCode.ashx?id=1" style="height: 24px;" />
            <a href="javascript:void(0)" onclick="changeCheckCode();return false;">看不清，换一张</a>--%>
            <hr class="hr15">
            <%--   <input value="登录"  style="width:100%;" type="submit">--%>
            <asp:Button ID="Button1" lay-submit lay-filter="login" runat="server" Text="登录" OnClick="Button1_Click" />
            <hr class="hr20">
        </form>
    </div>

    <script>
        //$(function () {
        //    layui.use('form', function () {
        //        var form = layui.form;
        //        // layer.msg('玩命卖萌中', function(){
        //        //   //关闭后的操作
        //        //   });
        //        //监听提交
        //        form.on('submit(login)', function (data) {
        //            // alert(888)
        //            layer.msg(JSON.stringify(data.field), function () {
        //                location.href = 'index.html'
        //            });
        //            return false;
        //        });
        //    });
        //})


    </script>


    <!-- 底部结束 -->

</body>
</html>
