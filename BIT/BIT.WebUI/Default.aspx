<%@ Page Title="BitQuick24" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BIT.WebUI.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function pageLoad() {
            ShowPopup();
            setTimeout(HidePopup, 5000);
        }

        function ShowPopup() {
            $find('mp1').show();
            //$get('Button1').click();
        }

        function HidePopup() {
            $find('mp1').hide();
            //$get('btnCancel').click();
        }
    </script>

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager10" runat="server">
        </asp:ScriptManager>
        <asp:Button ID="Button1" runat="server" Text="Click here to show" />
        <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"
            CancelControlID="Button2" BackgroundCssClass="Background">
        </cc1:ModalPopupExtender>
        <asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" Style="display: none">
            <iframe style="width: 1290px; height: 520px;" id="irm1" src="Admin/Promotion.aspx" runat="server"></iframe>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Close" />
        </asp:Panel>
    </form>
</asp:Content>

