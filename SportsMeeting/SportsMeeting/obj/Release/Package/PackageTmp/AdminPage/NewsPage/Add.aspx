<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="Add.aspx.cs" Inherits="SportsMeeting.AdminPage.NewsPage.Add" %>

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
    <%--<script src="ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
             CKEDITOR.replace('editor');
    </script>--%>
</head>

<body>
    <div class="x-body layui-anim layui-anim-up">
        <form class="layui-form" runat="server" enctype="multipart/form-data">
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>新闻内容
                </label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="Title" runat="server" lay-verify="Title" autocomplete="off" class="layui-input"></asp:TextBox>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>新闻类型
                </label>
                <div class="layui-input-inline">
                    <asp:DropDownList ID="Type" runat="server" CssClass="layui-input">
                        <asp:ListItem>精彩新闻</asp:ListItem>
                        <asp:ListItem>比赛信息</asp:ListItem>
                        <asp:ListItem>荣誉表彰</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>展示图片
                </label>
                <div class="layui-input-inline">
                      <input type="file"  id="ImagePath"  lay-verify="ImagePath" name="ImagePath"  />
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>新闻内容
                </label>
                <div class="layui-input-inline" style="width:600px">
                    <textarea name="editor" id="editor" lay-verify="editor"  cols="30" rows="10">
                       <%=content %>
                    </textarea>
                    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
                    <script type="text/javascript">
                        CKEDITOR.replace('editor');
                    </script>
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
                Title: function (value) {
                    if (value == "") {
                        return '新闻名称不能为空';
                    }
                },
                editor: function () {
                    if (CKEDITOR.instances.editor.getData() == "") {
                        return '新闻内容不能为空';
                    }
                },
                //ImagePath: function (value) {
                //    if (value == "") {
                //        return '图片不能为空';
                //    }
                //}
            });
        });
    </script>

</body>

</html>
