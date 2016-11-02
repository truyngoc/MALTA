﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BIT.Objects;
using BIT.Common;
using BIT.Controller;
using System.Text;

namespace BIT.WebUI.Admin
{
    public partial class ConfirmGH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!Singleton<BITCurrentSession>.Inst.isLoginUser)
                {
                    Response.Redirect("~/Admin/Login.aspx");
                }
                else
                {
                    if (Session["GH_DETAIL_COMMAND_DETAIL_ID"] != null)
                    {
                        LoadDataToForm();
                        Session["GH_DETAIL_COMMAND_DETAIL_ID"] = null;
                    }
                    else
                    {
                        //Response.Redirect("PH_DETAIL");
                        btnConfirmGH.Enabled = false;
                        //TNotify.Toastr.Information("Your session working is expired, back to PH detail for continue", "Notify", TNotify.NotifyPositions.toast_top_full_width, true);
                    }
                }
            }
        }

        public void LoadDataToForm()
        {
            if (Session["GH_DETAIL_COMMAND_DETAIL_ID"] != null)
            {
                var ctlCmdDetail = new COMMAND_DETAIL_BC();
                var ctlMem = new MEMBERS_BC();

                this.hidID.Value = Session["GH_DETAIL_COMMAND_DETAIL_ID"].ToString();

                int CMD_DETAIL_ID = Convert.ToInt32(Session["GH_DETAIL_COMMAND_DETAIL_ID"]);
                
                // lay command detail ID
                COMMAND_DETAIL cmdDetail = ctlCmdDetail.SelectItem(CMD_DETAIL_ID);
                MEMBERS member = ctlMem.SelectItem(cmdDetail.CodeId_To);

                imgGHWallet.ImageUrl = string.Format("http://chart.googleapis.com/chart?chs=200x200&cht=qr&chl={0}", member.Wallet.Trim()).Trim();
                lblGHWallet.Text = "Address: " + member.Wallet;
                txtTotalAmount.Text = cmdDetail.Amount.ToString();
                linkTransaction.NavigateUrl = "https://blockchain.info/tx/" + cmdDetail.TransactionId.Trim();
                linkTransaction.Text = cmdDetail.TransactionId;
            }
        }

        protected void btnConfirmGH_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var ctlMember = new MEMBERS_BC();

                string codeId = Singleton<BITCurrentSession>.Inst.SessionMember.CodeId;

                string passPIN = txtPasswordPIN.Text;
                if (ctlMember.CheckPasswordPIN(codeId, passPIN))
                {
                    var ctlCommandDetail = new COMMAND_DETAIL_BC();
                    try
                    {
                        var cmdDetail = ctlCommandDetail.SelectItem(Convert.ToInt32(hidID.Value));
                        cmdDetail.ConfirmGH = true;
                        cmdDetail.DateConfirmGH = DateTime.Now;
                        cmdDetail.Status = (int)Constants.COMMAND_STATUS.Success;
                        //ctlCommandDetail.ConfirmGH(new COMMAND_DETAIL { ID = Convert.ToInt32(hidID.Value), ConfirmGH = true, DateConfirmGH = DateTime.Now, Status = (int)Constants.COMMAND_STATUS.Success });


                        ctlCommandDetail.GH_CONFIRM(cmdDetail);
                        //TUNGND: GUI MAIL CHO SENDER
                        SendMailToSENDER(cmdDetail);
                        TNotify.Toastr.Success("Confirm GH successfull", "Confirm GH", TNotify.NotifyPositions.toast_top_full_width, true);

                        Response.Redirect("GH_DETAIL.aspx");
                    }
                    catch (System.Threading.ThreadAbortException ex)
                    {
                        // C2: catch exception nay khi redirect
                    }
                    catch (Exception ex)
                    {
                        TNotify.Alerts.Danger(ex.ToString(), true);
                    }
                }
                else
                {
                    // thong bao password pin ko dung
                    TNotify.Alerts.Warning("Password PIN is not valid", true);
                }

            }   
        }

        public void SendMailToSENDER(COMMAND_DETAIL command)
        {
            var ctlMem = new MEMBERS_BC();
            var userFrom = ctlMem.SelectItem(command.CodeId_From);
            var userTo = ctlMem.SelectItem(command.CodeId_To);

            string sSubject = "BITQUICK24 PH-GH";

            // PH
            StringBuilder strBuilder = new StringBuilder();

            strBuilder.Append("<html>");
            strBuilder.Append("<head></head>");
            strBuilder.Append("<body>");
            strBuilder.Append("<table>");
            strBuilder.AppendLine("<tr><td><b>Hello  " + userFrom.Username + "</b><br/></td></tr>");
            strBuilder.AppendLine("<tr><td><b>Your PH with: " + userTo.Username + "/" + userTo.Phone + " has approved. </b><br/></td></tr>");
            strBuilder.AppendLine("<tr><td><b>Amount: " + command.Amount.ToString() + " BTC </b><br/></td></tr>");
            strBuilder.AppendLine("<b><a href='http://bitquick24.org'>http://bitquick24.org </a></b><br/>");
            strBuilder.AppendLine("<tr><td><b>Please contact to your upline or  BITQUICK24's support to support you everything. </b><br/></td></tr>");
            strBuilder.AppendLine("<tr><td><b><br/><br/><br/>Thanks & Best regards</b><br/></td></tr>");
            strBuilder.AppendLine("<tr><td><b><br/>BITQUICK24</b><br/></td></tr>");
            strBuilder.Append("</table>");
            strBuilder.Append("</body>");
            strBuilder.Append("</html>");

            Mail.Send(userFrom.Email, sSubject, strBuilder.ToString());
        }
    }
}