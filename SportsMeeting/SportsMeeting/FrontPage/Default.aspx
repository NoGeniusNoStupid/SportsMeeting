<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SportsMeeting.FrontPage.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <!--幻灯片-->
    <div id="banner" class="banner">
        <div id="owl-demo" class="owl-carousel">
            <a class="item" target="_blank" href="" style="background-image: url(Assets/upload/banner1.jpg)">
                <img src="Assets/upload/banner1.jpg" alt="">
            </a>
            <a class="item" target="_blank" href="" style="background-image: url(Assets/upload/banner2.jpg)">
                <img src="Assets/upload/banner2.jpg" alt="">
            </a>
        </div>
    </div>
    <!--幻灯片-->--%>
    <div class="space_hx">&nbsp;</div>
    <div class="i_ma">
        <div class="i_name">
            我们的荣誉
        <p>Our Honor</p>
        </div>
        <div class="space_hx">&nbsp;</div>
        <ul class="clearfix">
            <li>
                <a href="">
                    <img src="Assets/images/p1.png" alt="" />
                    <h6>XXXX第一名</h6>
                    <div class="des">
                        XXXX班XXX学生
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="Assets/images/p2.png" alt="" />
                    <h6>创客公寓</h6>
                    <div class="des">
                        A guest apartment
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="Assets/images/p3.png" alt="" />
                    <h6>孵化器</h6>
                    <div class="des">
                        Business incubator
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="Assets/images/p4.png" alt="" />
                    <h6>智慧俱乐部</h6>
                    <div class="des">
                        Wisdom Made Club
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="Assets/images/p5.png" alt="" />
                    <h6>商务办公</h6>
                    <div class="des">
                        Business Office
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="Assets/images/p6.png" alt="" />
                    <h6>商业街</h6>
                    <div class="des">
                        Theme-oriented Commercial Street
                    </div>
                </a>
            </li>
        </ul>
    </div>
    <div class="i_mb clearfix"></div>

</asp:Content>
