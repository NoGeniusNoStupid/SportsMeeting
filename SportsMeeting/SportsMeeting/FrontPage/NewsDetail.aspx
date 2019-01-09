<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage/Main.Master" AutoEventWireup="true" CodeBehind="NewsDetail.aspx.cs" Inherits="SportsMeeting.FrontPage.NewsDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
	<div class="scd_top">
    	<span>新闻详情</span>
        <div class="pst">
        	当前位置：<a href="">首页</a>-<a href="">新闻中心</a>
        </div>
    </div>
    <div class="scd_m clearfix">
    	<div class="scd_ml">
        	<h1><%=newsInfo.Title %></h1>
            <div class="time">
            	<span><%=newsInfo.OperTime %></span>
                <span>浏览次数  <%=newsInfo.ClickNum %></span>
                <span>新闻类型  <%=newsInfo.Type %></span>
            </div>
            <div class="ctn">
            	<%--<div class="des">
                	<p>[摘要] 10月29日，在第十五屆中國國際社會公共安全博覽會上，卓越集團與深圳光啓智能光子開展深度戰略合作，這是10月16日卓越E+商務2.0正式發布後，又一夢想合夥人正式攜手卓越集團，締造智能硬件在商務辦公空間安防領域的完美應用案例。卓越集團聯席執行總裁王衛鋒出席了簽約儀式。</p>
                </div>--%>
                <div class="ctn_m">

                    <div style="text-align:center">
                        <% if(!string.IsNullOrEmpty(newsInfo.Image)){ %>
                          <img src="<%=newsInfo.Image %>" width="540" height="295" alt=""/>
                         <%}%>
                      
                    </div>
                    <br/>
                    <p><%=newsInfo.Content %></p>
                </div>
            </div>
        </div>
       
</div>
</asp:Content>
