<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SportsMeeting.AdminPage.AdminPage.Add" %>

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
                    <span class="x-red">*</span>账号
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
            });

           
        });
    </script>

</body>

</html>
