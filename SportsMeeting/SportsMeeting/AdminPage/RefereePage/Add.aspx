<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SportsMeeting.AdminPage.RefereePage.Add" %>

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

<body>
    <div class="x-body layui-anim layui-anim-up">
        <form class="layui-form" runat="server">
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>裁判账号
                </label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="Account" runat="server" lay-verify="Account" autocomplete="off" class="layui-input"></asp:TextBox>
                </div>
            </div>

            <asp:Panel ID="panel" runat="server">
                <div class="layui-form-item">
                    <label for="L_pass" class="layui-form-label">
                        <span class="x-red">*</span>密码
                    </label>
                    <div class="layui-input-inline">
                        <asp:TextBox ID="Pwd" runat="server" TextMode="Password" lay-verify="Pwd" autocomplete="off" class="layui-input"></asp:TextBox>

                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        6到16个字符
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                        <span class="x-red">*</span>确认密码
                    </label>
                    <div class="layui-input-inline">
                        <asp:TextBox ID="repass" runat="server" TextMode="Password" lay-verify="repass" autocomplete="off" class="layui-input"></asp:TextBox>
                    </div>
                </div>
            </asp:Panel>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>裁判姓名
                </label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="Name" runat="server" lay-verify="Name" autocomplete="off" class="layui-input"></asp:TextBox>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>年龄
                </label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="Age" runat="server" lay-verify="Age" autocomplete="off" class="layui-input"></asp:TextBox>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>性别
                </label>
                <div class="layui-input-inline">
                    <asp:DropDownList ID="Sex" runat="server" CssClass="layui-input">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>电话
                </label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="Tel" runat="server" lay-verify="Tel" autocomplete="off" class="layui-input"></asp:TextBox>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">
                </label>
                <asp:Button class="layui-btn" lay-filter="add" lay-submit="" ID="Button1" runat="server" Text="增加" OnClick="Button1_Click" />
                <%--  <a href="#"  onclick="self.location=document.referrer;" class="layui-btn"><i class="layui-icon"></i>返回</a>--%>
            </div>
        </form>
    </div>
    <script>
        layui.use(['form', 'layer'], function () {
            $ = layui.jquery;
            var form = layui.form
            , layer = layui.layer;

            //自定义验证规则
            form.verify({
                Account: function (value) {
                    if (value == "") {
                        return '账号不能为空';
                    }
                    if (value.length < 6) {
                        return '账号小于6位数';
                    }
                }
                , Pwd: [/(.+){6,12}$/, '密码必须6到12位']
                , repass: function (value) {
                    if ($('#Pwd').val() != $('#repass').val()) {
                        return '两次密码不一致';
                    }
                }
                 , Name: function (value) {
                     if (value == "") {
                         return '姓名不能为空';
                     }
                 }
                , Age: function (value) {
                    if (value == "") {
                        return '年龄不能为空';
                    }
                    if (value % 1 != 0) {
                        return '年龄必须为整数';
                    }
                }
                 , Tel: function (value) {
                     if (value.length == 0) {
                         return '手机号码不能为空';
                     }
                     if (value.length != 11) {

                         return '请输入有效的手机号码，需是11位';
                     }
                     var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
                     if (!myreg.test(value)) {
                         return '请输入有效的手机号码';
                     }
                 }
            });

            ////监听提交
            //form.on('submit(add)', function (data) {
            //    console.log(data);
            //    console.log(JSON.stringify(data.field));
            //    //发异步，把数据提交给php
            //    $.ajax({
            //        type: 'post',
            //        url: '/AdminPage/SportsItem/Add.ashx',
            //        data: JSON.stringify(data.field),
            //        success: function (re) {
            //            layer.alert(re, { icon: 6 }, function () {
            //                // 获得frame索引
            //                var index = parent.layer.getFrameIndex(window.name);
            //                //关闭当前frame
            //                parent.layer.close(index);
            //            });
            //        }
            //    })              
            //    return false;
            //});
        });
    </script>

</body>

</html>
