<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SportsMeeting.AdminPage.SportsItem.Add" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
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
                    <span class="x-red">*</span>项目名称
                </label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="Name" runat="server" lay-verify="Name" autocomplete="off" class="layui-input"></asp:TextBox>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>项目类型
                </label>
                <div class="layui-input-inline">
                    <asp:DropDownList ID="Type" runat="server" CssClass="layui-input">
                        <asp:ListItem>个人赛</asp:ListItem>
                        <asp:ListItem>团体赛</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>裁判
                </label>
                <div class="layui-input-inline">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="layui-input">
                        <asp:ListItem>XXX</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>初赛时间
                </label>
                <div class="layui-input-inline">
                    <input type="datetime-local" id="FirstTime" name="FirstTime" class="layui-input" />
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>决赛时间
                </label>
                <div class="layui-input-inline">
                    <input type="datetime-local" id="FinalTime" name="FinalTime" class="layui-input" />
                </div>
            </div>

            <%-- <div class="layui-form-item">
              <label for="L_pass" class="layui-form-label">
                  <span class="x-red">*</span>密码
              </label>
              <div class="layui-input-inline">
                  <input type="password" id="L_pass" name="pass" required="" lay-verify="pass"
                  autocomplete="off" class="layui-input">
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
                  <input type="password" id="L_repass" name="repass" required="" lay-verify="repass"
                  autocomplete="off" class="layui-input">
              </div>
          </div>--%>
            <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">
                </label>
                <asp:Button class="layui-btn" lay-filter="add" lay-submit="" ID="Button1" runat="server" Text="增加" OnClick="Button1_Click" />
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
                Name: function (value) {
                    if (value.length = "") {
                        return '项目名称不能为空';
                    }
                }
                //, pass: [/(.+){6,12}$/, '密码必须6到12位']
                //, repass: function (value) {
                //    if ($('#L_pass').val() != $('#L_repass').val()) {
                //        return '两次密码不一致';
                //    }
                //}

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
