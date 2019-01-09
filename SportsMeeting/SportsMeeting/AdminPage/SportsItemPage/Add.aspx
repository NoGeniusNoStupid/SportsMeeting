<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SportsMeeting.AdminPage.SportsItemPage.Add" %>

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
                    <asp:DropDownList ID="Type" runat="server" CssClass="layui-input" AutoPostBack="True" >
                        <asp:ListItem>跑步</asp:ListItem>
                        <asp:ListItem>跳高</asp:ListItem>
                        <asp:ListItem>跳远</asp:ListItem>
                        <asp:ListItem>仰卧起坐</asp:ListItem>
                        <asp:ListItem>跳绳</asp:ListItem>
                        <asp:ListItem>垒球</asp:ListItem>
                        <asp:ListItem>铅球</asp:ListItem>
                        <asp:ListItem>排球</asp:ListItem>
                        <asp:ListItem>实心球</asp:ListItem>
                        <asp:ListItem>游泳</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>男/女限制
                </label>
                <div class="layui-input-inline">
                    <asp:DropDownList ID="Limit" runat="server" CssClass="layui-input">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                        <asp:ListItem>不限</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>裁判规则
                </label>
                <div class="layui-input-inline">
                    <asp:DropDownList ID="Rule" runat="server" CssClass="layui-input">
                        <asp:ListItem>时间</asp:ListItem>
                        <asp:ListItem>分数</asp:ListItem>
                        <asp:ListItem>距离</asp:ListItem>
                        <asp:ListItem>个数</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>裁判
                </label>
                <div class="layui-input-inline">
                    <asp:DropDownList ID="RefereeId" runat="server" CssClass="layui-input">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>报名人数
                </label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="Num" runat="server" lay-verify="Num" autocomplete="off" class="layui-input"></asp:TextBox>
                </div>
            </div>

            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>初赛时间
                </label>
                <div class="layui-input-inline">
                    <input type="datetime-local" id="FirstTime" lay-verify="FirstTime" value="<%=FirstTime %>" name="FirstTime" class="layui-input" />
                </div>
            </div>


            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>决赛时间
                </label>
                <div class="layui-input-inline">
                    <input type="datetime-local" id="FinalTime" lay-verify="FinalTime" value="<%=FinalTime %>" name="FinalTime" class="layui-input" />
                </div>
            </div>




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
                    if (value == "") {
                        return '项目名称不能为空';
                    }
                },
                Num: function (value) {
                    if (value == "") {
                        return '上限人数不能为空！';
                    }
                },
                FirstTime: function (value) {
                    if (value == "") {
                        return '初赛时间不能为空';
                    }
                    var timestamp = Date.parse(new Date());//获取当前时间戳
                    var startTimestamp = Date.parse(value);//获取初赛时间戳
                    if (startTimestamp < timestamp) {
                        return '初赛时间不能小于当前时间';
                    }
                },
                FinalTime: function (value) {
                    if (value == "") {
                        return '决赛时间不能为空';
                    }
                    var startTimestamp = Date.parse(document.getElementById("FirstTime").value);//获取初赛时间戳
                    // console.log(startTimestamp);
                    var endTimetamp = Date.parse(value);//获取决赛时间戳
                    if (endTimetamp < startTimestamp) {
                        return '决赛时间不能小于初赛时间';
                    }
                }
            });
        });
    </script>

</body>

</html>
