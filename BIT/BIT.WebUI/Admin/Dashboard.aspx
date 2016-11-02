<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BIT.WebUI.Admin.Dashboard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="clear: both;"></div>
    <div class="label_b" style="padding: 25px 0;">
        <div class="row state-overview">
            <div class="col-lg-3 col-sm-6">
                <div class="flip">
                    <section class="panel front divdashboard">
                        <div class="symbol">
                            <img src="../images/c.png" />
                        </div>
                        <div class="value">
                            <p>C Wallet</p>
                            <h1 class="count">
                                <asp:Label ID="lblC_Wallet" runat="server" />
                                BTC
                            </h1>

                        </div>
                    </section>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6">
                <div class="flip">
                    <section class="panel front divdashboard">
                        <div class="symbol">
                            <img src="../images/pin.png" />
                        </div>
                        <div class="value">
                            <p>Pin</p>
                            <h1 class="count">
                                <asp:Label ID="lblPIN_Wallet" runat="server" />
                            </h1>
                        </div>
                    </section>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6">
                <div class="flip">
                    <section class="panel front divdashboard">
                        <div class="symbol">
                            <img src="../images/direct.png" />
                        </div>
                        <div class="value">
                            <p>Direct Downline</p>
                            <h1 class="count">
                                <asp:Label ID="lblDirectDownline" runat="server" />
                            </h1>

                        </div>
                    </section>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6">
                <div class="flip">
                    <section class="panel front divdashboard">
                        <div class="symbol">
                            <img src="../images/total.png" />
                        </div>
                        <div class="value">
                            <p>Total Downline</p>
                            <h1 class="count">
                                <asp:Label ID="lblTotalDownline" runat="server" />
                            </h1>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!--state overview end-->

        <!--state overview start-->
        <div class="row state-overview">
            <div class="col-lg-3 col-sm-6">
                <div class="flip">
                    <section class="panel front divdashboard">
                        <div class="symbol">
                            <img src="../images/PD.png" />
                        </div>
                        <div class="value">
                            <p>Total PH</p>
                            <h1 class="count">
                                <asp:Label ID="lblTotalPH" runat="server" />
                            </h1>

                        </div>
                    </section>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6">
                <div class="flip">
                    <section class="panel front divdashboard">
                        <div class="symbol">
                            <img src="../images/GD.png" />
                        </div>
                        <div class="value">
                            <p>Total GH</p>
                            <h1 class="count">
                                <asp:Label ID="lblTotalGH" runat="server" />
                            </h1>
                        </div>
                    </section>
                </div>
            </div>
        </div>

        <div class="row state-overview infor_b">
            <div class="col-lg-8 col-sm-6">
                <section class="panel front divdashboard">
                    <div class="panel-body">
                        <header class="panel-heading">
                            <h3>*Chương trình PR dành cho thị trường Việt Nam*</h3>
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <div class="form-group col-lg-12">
                                    <h4>-  VIP1: Được rút hoa hồng 5BTC/ tháng</h4>
                                </div>
                                <div class="form-group col-lg-12">
                                    <h4>-  VIP2: Tặng IPhone 7 trị giá 1,5 BTC</h4>
                                </div>

                                <div class="form-group col-lg-12">
                                    <h4>-  VIP3: Tặng Macbook Pro trị giá 2 BTC</h4>
                                </div>

                                <div class="form-group col-lg-12">
                                    <h4>-  VIP4: Tặng SH150i VN trị giá 7 BTC</h4>
                                </div>

                                <div class="form-group col-lg-12">
                                    <h4>-  VIP5: Tặng xe hơi VIOS 1.5 VN trị giá 50 BTC</h4>
                                </div>

                                <br />
                                <div class="form-group col-lg-12">
                                    <h3>*Chương trình kéo dài tới hết ngày 10/11/2016. Phần thưởng sẽ được quy đổi ra Bitcoin và nhận trực tiếp về ví BlockChain của ID đạt thành tích.*</h3>
                                </div>
                                <div class="form-group col-lg-12">
                                    <h4>Lưu ý:</h4>
                                    <br />
                                    <ul>
                                        <li>
                                            <h4><i class="glyphicon glyphicon-chevron-right"></i>Chụp ảnh cây hệ thống</h4>
                                        </li>
                                        <li>
                                            
                                            <h4><i class="glyphicon glyphicon-chevron-right"></i>Check in chân dung cá nhân cùng chứng minh thư của ID đạt thành tích</h4>
                                        </li>
                                        <li>
                                            
                                            <h4><i class="glyphicon glyphicon-chevron-right"></i>Gửi kèm theo địa chỉ ví Blockchain của ID.</h4>
                                        </li>
                                    </ul>
                                    <br />
                                    <h4>Mọi thông tin gửi về Email: <a href="#">support@bitquick24.org</a></h4>
                                </div>
                            </div>
                        </div>
                        <h3>BitQuick24.</h3>
			<p></p>

                    </div>
                </section>
            </div>
            <%--            <div class="col-lg-4 col-sm-6">
                <section class="panel front divdashboard">
                    <div class="panel-heading">
                        <strong>NOTIFICATION FOR AUGUST</strong>
                    </div>
                    <div class="panel-body">
                        <p>
                            Hello members!<br/>
                            Currently the amount PD - GD went into a stable process. To fit the sustainable development of BitQuick24 we gift for you is 6 days waiting for command activated automatic PIN instead of 9 days as before.<br/>
                            We thank you for accompanying us during the past!<br/>
                        </p>

                    </div>
                </section>
            </div>--%>
        </div>
    </div>
</asp:Content>
