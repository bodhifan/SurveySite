<%@ Page Title="主页" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Survey._Default" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <%--<h1><%: Title %>.</h1>--%>
            </hgroup>

            <strong>考试时间：</strong>2014年考试时间为9月13、14日<br>
            <strong>考试科目：</strong>共三门：《测绘综合能力》《测绘管理与法律法规》《测绘案例分析》<br>
            <strong>官网/报名：</strong>您所在地：<strong>武汉</strong><a href="www.hao123.com">进入考试网</a><br>
             <div class="exam-guid">
                <strong>考试指南：</strong>
                 <a href="http://www.hao123.com">考试介绍</a>
                 <a href="http://www.hao123.com">考试内容</a>
                 <a href="http://www.hao123.com">报考条件</a>
                 <a href="http://www.hao123.com">注意事项</a>
             </div>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script src="../Scripts/homepage.js" language="javascript" type="text/javascript"></script>
    <div class="news">
        <label class="lastest">
             最新动态
            <span class="n-nav new"></span>
             <a  class="more" href="~About.aspx" >
                    更多
                    <span class="n-nav more"></span>
             </a>
        </label>
        <div class="items">
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SurveyEntities" DefaultContainerName="SurveyEntities" EnableFlattening="False" EntitySetName="HotNews">
            </asp:EntityDataSource>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <label>[<%#Eval("type")%>]
                    <a href="<%#Eval("url")%>"><%#Eval("title")%></a>
                </label>
                
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="exam-remind">
        <h3 class="remind" style="margin-top:0px;padding-top:0px;">考试提醒</h3>
        <div class="remind-info">
            <p class="p1">报名时间一般于
                <b class="remind">5月份</b>
                开始，具体报名时间请查阅各省人事考试中心网站
            </p>
            <p class="p2">
                距离考试时间还有
                <b class="remind-day">124</b>
                天
            </p>
        </div>
     </div>
   <%-- <div class="body">
        
        <h3>下面是我们的建议:</h3>
        <ol class="round">
            <li class="one">
                <h5>开始使用</h5>
                通过 ASP.NET Web Forms，可以使用一种熟悉的、支持拖放操作的事件驱动模型生成动态网站。
                一个设计图面加上数百个控件和组件，使你能够快速生成复杂且功能强大的、带有数据访问功能的 UI 驱动站点。
                <a href="http://go.microsoft.com/fwlink/?LinkId=245146">了解详细信息...</a>
            </li>
            <li class="two">
                <h5>添加 NuGet 程序包并快速开始编码</h5>
                通过 NuGet，可以轻松地安装和更新免费的库和工具。
                <a href="http://go.microsoft.com/fwlink/?LinkId=245147">了解详细信息...</a>
            </li>
            <li class="three">
                <h5>查找 Web 宿主</h5>
                你可以轻松找到所提供的功能和价格都适合你应用程序的 Web 宿主公司。
                <a href="http://go.microsoft.com/fwlink/?LinkId=245143">了解详细信息...</a>
            </li>
        </ol>
   </div>
    <div class="sperator">
    </div>--%>
</asp:Content>

<asp:Content runat="server" ID="ChapterContent" ContentPlaceHolderID="ChapterContent">
        <div class="chapter-left">
            <ul class="tab-li">
            	<li>
                    <a href="javascript:void(0)" onclick="ShowMe('#firstdiv')">测绘综合能力</a>
            	</li>
                <li>
                    <a href="javascript:void(0)" onclick="ShowMe('#seconddiv')">测绘案例分析</a>
            	</li>
                <li>
                    <a href="javascript:void(0)" onclick="ShowMe('#thirddiv')">管理与法律法规</a>
            	</li>
            </ul>
        </div>
        <div id="divwarpper">
            <div id="firstdiv" class="chapter-right"> 
                <h2>第一个div</h2>
                <asp:TreeView ID="TreeView1" runat="server"></asp:TreeView>
             </div>
             <div id="seconddiv" class="chapter-right"> 
                <h2>第二个div</h2>
             </div>
             <div id="thirddiv" class="chapter-right"> 
                <h2>第三个div</h2>
             </div>
         </div>
</asp:Content>

<asp:Content runat="server" ID="TesterContent" ContentPlaceHolderID="TesterContent">
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2><h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
    <h2>这是模拟测试！！！</h2>
</asp:Content>
