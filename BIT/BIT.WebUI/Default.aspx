<%@ Page Title="Malta" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BIT.WebUI.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        //function pageLoad() {
        //    ShowPopup();
        //    setTimeout(HidePopup, 5000);
        //}

        //function ShowPopup() {
        //    $find('mp1').show();
        //    //$get('Button1').click();
        //}

        //function HidePopup() {
        //    $find('mp1').hide();
        //    //$get('btnCancel').click();
        //}
    </script>

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager10" runat="server">
        </asp:ScriptManager>
        
        <!-- youtube -->
        <div id="youtube" style="padding-bottom: 15px 0;">
            <div class="container">
                <!-- ABOUT US -->
                <div style="" class="col-lg-12">
                    <div class="col-lg-7">
                        <div class="video">
                            <iframe src="https://www.youtube.com/embed/xf9hjsuICgw" allowfullscreen="" width="100%" height="340" frameborder="0"></iframe>
                            <img src="../images/video-shadow.png" />
                        </div>
                    </div>
                    <div class="col-lg-4 txtpadding">
                        <div class="advantages">
                            <div class="adv-description">
                                <h2>ADVANTAGES</h2>
                                <ul class="marker">
                                    <li>Official company</li>
                                    <li>High income<br>
                                        <span>(0.75% per business day, payments on a daily basis)</span></li>
                                    <li>a Deposit of just 20 business days</li>
                                    <li>Reinvestment funds</li>
                                    <li>Diversification of invested assets</li>
                                    <li>Deposit Insurance</li>
                                    <li>High-Quality online customer support</li>
                                    <li>A company Website is securely protected from external attacks</li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end youtube -->

         <!-- Image_line -->
        <div class="Image_line" style="padding-bottom: 15px;">
            <div class="container">
               
                <div style="" class="col-lg-12">
                    <div class="col-lg-4">
                        <img src="images/1.jpg" alt="">
                    </div>
                    <div class="col-lg-4">
                        <img src="images/2.jpg" alt="">
                    </div>

                    <div class="col-lg-4">
                        <img src="images/3.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
         <!--end of Image_line -->

        <!--NEWS-->
        <div id="" style="padding-bottom: 15px 0;">
            <div class="container">
                <!-- ABOUT US -->
                <div style="" class="col-lg-12">
                    <div class="col-lg-7">
                        <img src="images/pic_js.png" />
                    </div>
                    <div class="col-lg-4 txtpadding" style="background-color: #ffffff;">
                        <div class="graf-news">
                            <div class="news">
                                <h2>LASTED NEWS</h2>
                                <div class="news-item">
                                    <div class="date">31 October 2016</div>
                                    <a href="/en/news/vremenno-otklyuchen-platezhnaya-sistema-qiwi/">Temporarily disabled payment system QIWI
                                    </a>
                                </div>
                                <div class="news-item">
                                    <div class="date">13 October 2016</div>
                                    <a href="/en/news/podderzhka-bez-vyhodnyh/">Support seven days a week
                                    </a>
                                </div>
                                <div class="news-item">
                                    <div class="date">28 September 2016</div>
                                    <a href="/en/news/5-000-000/">5 000 000 $
                                    </a>
                                </div>
                                <div class="news-item">
                                    <div class="date">25 July 2016</div>
                                    <a href="/en/news/podklyuchena-platezhnaya-sistema-payeer/">Payment system connected PAYEER
                                    </a>
                                </div>
                                <a href="/en/news/">all news</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of NEWS-->

        <!--About-->
        <div id="about" style="padding-bottom: 15px 0;">
            <div class="container">
                <div class="about-main">
                    <h2>ABOUT COMPANY</h2>
                    <p>
                        Malta privat investment is right for you. The company operates on the financial market since 2013. The business scope includes exchange markets, futures, stock market, precious metals, startups, options. The company has experts in each field. Diversification of the invested funds as well as deposit insurance allows the company to provide a guaranteed income.<br>
                        <a href="/en/about/">Show more</a>
                    </p>
                </div>
            </div>
        </div>
        <!--end of About-->

        <!--show popup-->
        <%--<asp:Button ID="Button1" runat="server" Text="Click here to show" />
        <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"
            CancelControlID="Button2" BackgroundCssClass="Background">
        </cc1:ModalPopupExtender>--%>
        <%--<asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" Style="display: none">
            <iframe style="width: 1290px; height: 520px;" id="irm1" src="Admin/Promotion.aspx" runat="server"></iframe>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Close" />
        </asp:Panel>--%>
        <!--end of show popup-->
    </form>
</asp:Content>

