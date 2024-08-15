// Author: Ethan Loubser (x4s1gssj5)
// Date: 2023/12/06
// Purpose: The Purpose of this page is to provide the user with means to transfer money to and from their owned accounts.

using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BillionBank2
{
    public partial class Payment : System.Web.UI.Page
    {
        #region Variable decleration
        private int profID;
        private int RecBal;
        private int SenBal;
        int cnt;
        private string SenAcc;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                #region variable decleration
                lblAmmError.Visible = false;
                string[] names;
                #endregion

                #region DBConnection
                profID = Int32.Parse((string)Session["ProfID"]);
                BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
                names = client.AccNameFetch(profID).ToArray<string>();
                #endregion

                #region Functionality
                foreach (string name in names)
                {
                    lbxAccList.Items.Add(name);
                }
                #endregion
            }
        }

        protected void btnConfPay_Click(object sender, EventArgs e)
        {
            #region Controls edit
            lblLIError.Visible = false;
            lblAmmError.Visible = false;
            lblBenefError.Visible = false;
            #endregion

            #region variableDecleration
            profID = Int32.Parse((string)Session["ProfID"]);
            SenAcc = tbxSendAcc.Text;
            string RecAcc = tbxBenef.Text;
            SenBal = Convert.ToInt32(tbxPAccBalance.Text);
            int Amm = Convert.ToInt32(tbxPayAmm.Text);
            string Ref = tbxRef.Text;
            #endregion

            #region Functionality
            if (Amm < SenBal)
            {
                string[] ba;

                BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
                ba = client.AccNameFetch(profID).ToArray<string>();

                foreach (string name in ba)
                {
                    if (RecAcc == name)
                    {
                        cnt++;
                    }
                }

                if (cnt != 0)
                {
                    #region DBConnection
                    BillionBankService.BBWebServiceSoapClient client2 = new BillionBankService.BBWebServiceSoapClient();
                    RecBal = Convert.ToInt32(client2.FetchRecBal(profID, RecAcc));

                    BillionBankService.BBWebServiceSoapClient client3 = new BillionBankService.BBWebServiceSoapClient();
                    client3.Sub(profID, SenAcc, RecAcc, SenBal, Amm, Ref).ToString();

                    BillionBankService.BBWebServiceSoapClient client4 = new BillionBankService.BBWebServiceSoapClient();
                    client4.Add(profID, RecAcc, SenAcc, RecBal, Amm, Ref).ToString();

                    BillionBankService.BBWebServiceSoapClient client5 = new BillionBankService.BBWebServiceSoapClient();
                    client5.InsDBTrans(profID, SenAcc, RecAcc, Amm, Ref);
                    #endregion

                    #region Tbx & Lbl
                    lblPayAccBall.Visible = false;
                    tbxPAccBalance.Visible = false;
                    lblPaymentAmm.Visible = false;
                    tbxPayAmm.Visible = false;
                    lblBeneficiary.Visible = false;
                    tbxBenef.Visible = false;
                    lblReference.Visible = false;
                    tbxRef.Visible = false;
                    btnConfPay.Visible = false;
                    tbxSendAcc.Text = "";
                    #endregion
                }
                else
                {
                    lblBenefError.Visible = true;
                    lblBenefError.Text = "Invalid Beneficiary name!";
                }
            }
            else
            {
                lblAmmError.Visible = true;
                lblAmmError.Text = "Invalid Ammount!";
            }
            #endregion
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            #region Controls edit
            lblLIError.Visible = false;
            lblAmmError.Visible=false;
            lblBenefError.Visible=false;
            #endregion

            #region Variable decleration
            string[] ba;
            string Name = tbxSendAcc.Text;
            profID = Int32.Parse((string)Session["ProfID"]);
            #endregion

            #region DBConnection
            BillionBankService.BBWebServiceSoapClient client1 = new BillionBankService.BBWebServiceSoapClient();
            ba = client1.AccNameFetch(profID).ToArray<string>();
            #endregion

            #region Functionality
            foreach (string name in ba)
            {
                if (Name == name)
                {
                    cnt++;
                }
            }

            if (cnt != 0)
            {
                #region Tbx & Lbl
                lblPayAccBall.Visible = true;
                tbxPAccBalance.Visible = true;
                lblPaymentAmm.Visible = true;
                tbxPayAmm.Visible = true;
                lblBeneficiary.Visible = true;
                tbxBenef.Visible = true;
                lblReference.Visible = true;
                tbxRef.Visible = true;
                btnConfPay.Visible = true;
                #endregion

                #region DBConnection
                SenAcc = tbxSendAcc.Text;

                BillionBankService.BBWebServiceSoapClient client2 = new BillionBankService.BBWebServiceSoapClient();
                SenBal = Convert.ToInt32(client2.FetchSenBal(profID, SenAcc));
                tbxPAccBalance.Text = SenBal.ToString();
                #endregion
            }
            else
            {
                lblLIError.Visible = true;
                lblLIError.Text = "Invalid Account name!";
            }
            #endregion
        }
    }
}