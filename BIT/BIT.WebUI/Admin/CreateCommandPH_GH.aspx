﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="CreateCommandPH_GH.aspx.cs" Inherits="BIT.WebUI.Admin.CreateCommandPH_GH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="wrapper">
        <br />
        <header class="panel-heading">
            <h3>Create command PH - GH</h3>
        </header>
        <div class="panel-body">

            <div class="row">
                <div class="col-md-6">
                    <h4>PH list</h4>
                    <!--ss Gridview PH-->
                    <section class="panel">
                        <div class="table-responsive">
                            <asp:GridView ID="grdPH" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="50"
                                OnPageIndexChanging="grdPH_OnPageIndexChanging" CssClass="table table-hover p-table" UseAccessibleHeader="true" GridLines="None">
                                <Columns>
                                    <asp:TemplateField HeaderText="No." ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Account" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("Username") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="PH Time" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCreateDate" runat="server" Text='<%# Eval("CreateDate" , "{0:dd/MM/yyyy HH:mm}") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Amount" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("Amount") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </section>
                    <!--end of ss Gridview PH-->

                    <div class="text-right">
                        <b>Total amount PH:  </b>
                        <asp:Label ID="lblTotalAmountPH" runat="server" CssClass="control-label" Text="5" ForeColor="Blue"></asp:Label>
                    </div>


                </div>

                <div class="col-md-6">
                    <h4>GH list</h4>
                    <!--ss Gridview GH-->
                    <section class="panel">
                        <div class="table-responsive">
                            <asp:GridView ID="grdGH" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="50"
                                OnPageIndexChanging="grdGH_OnPageIndexChanging" CssClass="table table-hover p-table" UseAccessibleHeader="true" GridLines="None">
                                <Columns>
                                    <asp:TemplateField HeaderText="No." ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Account" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("Username") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="PH Time" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCreateDate" runat="server" Text='<%# Eval("CreateDate" , "{0:dd/MM/yyyy HH:mm}") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Amount" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("Amount") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </section>
                    <!--end of ss Gridview GH-->

                    <div class="text-right">
                        <b>Total amount GH:  </b>
                        <asp:Label ID="lblTotalAmountGH" runat="server" CssClass="control-label" Text="5" ForeColor="Blue"></asp:Label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="col-md-2">
                        <asp:TextBox ID="txtNumberPH" runat="server" placeholder="Number PH" CssClass="form-control col-md-1"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtUserPH" runat="server" placeholder="UserName1,UserName2..." CssClass="form-control col-md-1" Text=""></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnLoadPHbyNumber" runat="server" Text="LOAD PH" CssClass="btn btn-primary" OnClick="btnLoadPHbyNumber_Click" />
                    </div>
                    <div class="col-md-2">
                        <%--<asp:Button ID="btnLoadAllPH" runat="server" Text="ALL" CssClass="btn btn-primary" />--%>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-2">
                        <asp:TextBox ID="txtNumberGH" runat="server" placeholder="Number GH" CssClass="form-control col-md-1" Text="100"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtUserName" runat="server" placeholder="UserName1,UserName2..." CssClass="form-control col-md-1" Text=""></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnLoadGHbyNumber" runat="server" Text="LOAD GH" CssClass="btn btn-primary" OnClick="btnLoadGHbyNumber_Click" />
                    </div>
                    <div class="col-md-2">
                        <%--<asp:Button ID="btnLoadAllPH" runat="server" Text="ALL" CssClass="btn btn-primary" />--%>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-6">
                </div>
                <div class="col-md-6">
                    <h4>Admin account list</h4>
                    <!--ss Gridview admin GH-->
                    <section class="panel">
                        <div class="table-responsive">
                            <asp:GridView ID="grdAdminList" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="50"
                                OnPageIndexChanging="grdAdminList_OnPageIndexChanging" CssClass="table table-hover p-table" UseAccessibleHeader="true" GridLines="None">
                                <Columns>
                                    <asp:TemplateField HeaderText="No." ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Account" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("Username") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="PH Time" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCreateDate" runat="server" Text='<%# Eval("CreateDate" , "{0:dd/MM/yyyy HH:mm}") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Amount" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <%--<asp:Label ID="lblAmount" runat="server" Text='<%# Eval("Amount") %>' />--%>
                                            <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" placeholder="Amount of GH">5.5</asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkIsSelected" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:HiddenField ID="hidCodeId" runat="server" Value='<%# Eval("CodeId") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </section>
                    <!--end of ss Gridview admin GH-->
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnTranferToGHList" runat="server" Text="UP TO GH LIST" CssClass="btn btn-primary" OnClick="btnTranferToGHList_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnResetAllList" runat="server" Text="RESET LIST" CssClass="btn btn-primary" OnClick="btnResetAllList_Click" />
                </div>
            </div>

            <br />
            <div>
                <asp:Button ID="btnCreateCommand" runat="server" Text="CREATE COMMAND" CssClass="btn btn-primary" OnClick="btnCreateCommand_Click" OnClientClick="javascript:return confirm('Are you absolutely sure you want to create command?')" />
                &nbsp;&nbsp;
                <asp:Button ID="btnSaveCommand" runat="server" Text="SAVE COMMAND" CssClass="btn btn-primary" OnClick="btnSaveCommand_Click" OnClientClick="javascript:return confirm('Are you absolutely sure you want to save command?')" />
            </div>

            <div class="row">
                <div class="col-md-12">
                    <h4>Command list</h4>
                    <!--ss Gridview Command List-->
                    <section class="panel">
                        <div class="table-responsive">
                            <asp:GridView ID="grdCommandDetails" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="50"
                                OnPageIndexChanging="grdCommandDetails_OnPageIndexChanging" CssClass="table table-hover p-table" UseAccessibleHeader="true" GridLines="None">
                                <Columns>
                                    <asp:TemplateField HeaderText="No." ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Sender" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSender" runat="server" Text='<%# AccountBriefInfoByCodeId(Eval("CodeId_From").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Receiver" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSender" runat="server" Text='<%# AccountBriefInfoByCodeId(Eval("CodeId_To").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Create date" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCreateDate" runat="server" Text='<%# Eval("DateCreate" , "{0:dd/MM/yyyy HH:mm}") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Amount" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("Amount") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status" ItemStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStatus" runat="server" Text='<%# StatusToString((int)Eval("Status")) %>' CssClass='<%# CssStatus((int)Eval("Status")) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>

                        </div>
                    </section>
                    <!--end of ss Gridview Command List-->
                </div>
            </div>
        </div>

    </section>
</asp:Content>
