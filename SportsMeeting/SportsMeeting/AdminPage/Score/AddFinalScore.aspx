<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFinalScore.aspx.cs" Inherits="SportsMeeting.AdminPage.Score.AddFinalScore" %>

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
                    <span class="x-red">*</span>裁判规则
                </label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="Rule" ReadOnly="true" runat="server" lay-verify="Account" autocomplete="off" class="layui-input"></asp:TextBox>     
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>初赛成绩
                </label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" lay-verify="Account" autocomplete="off" class="layui-input"></asp:TextBox>     
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>决赛成绩
                </label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="Score" runat="server" lay-verify="Account" autocomplete="off" class="layui-input"></asp:TextBox>  
                </div>
            </div>
             <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    
                </label>
                <div class="layui-input-inline">
                   <label>*按时间单位录入,例如1分10秒23记做：01:10.23</label>
                   <br />
                   <label>*按距离单位录入,例如1米82记做：1.82</label>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">
                </label>
                <asp:Button class="layui-btn" lay-filter="add" lay-submit="" ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" />
                  <a href="#"  onclick="self.location=document.referrer;" class="layui-btn">返回</a>
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
                Score: function (value) {
                    if (value == "") {
                        return '成绩不能为空';
                    } 
                }
            });
        });
    </script>

</body>

</html>
