// Author: Ethan Loubser (x4s1gssj5)
// Date: 2023/12/06
// Purpose: The Purpose of this page is to provide the user with means to view Account info as well as create and delete accounts.
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;
using System.Xml.Linq;

namespace BillionBank2
{
    public partial class BB2Home : System.Web.UI.Page
    {
        #region Variable decleration
        private int profID;
        int cnt;
        int AccCnt;
        string Name;
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                #region DBConnection
                string[] names;
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

        protected void btnCreateAcc_Click(object sender, EventArgs e)
        {
            lbxAccTransactions.Items.Clear();
            #region Variable Decleration
            string[] Names;
            Name = tbxAccName1.Text;
            profID = Int32.Parse((string)Session["ProfID"]);
            lblError.Visible = false;
            string[] ba;
            #endregion

            #region DBConnection
            BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
            ba = client.AccNameFetch(profID).ToArray<string>();
            #endregion

            #region Functionality
            foreach (string name in ba)
            {
                if(Name == name)
                {
                    cnt++;
                }
            }

            if (cnt == 0)
            {
                BillionBankService.BBWebServiceSoapClient client2 = new BillionBankService.BBWebServiceSoapClient();
                Names = client2.NewAccountDetails().ToArray<string>();

                string CDate = Names[1];
                int AccNum = Convert.ToInt32(Names[0]);
                int Card = Convert.ToInt32(Names[2]);
                int AccBal = Convert.ToInt32(Names[3]);

                AccCnt = ba.Count<String>();

                if (AccCnt == 0)
                {
                    AccBal = 100;
                }

                BillionBankService.BBWebServiceSoapClient client3 = new BillionBankService.BBWebServiceSoapClient();
                client3.CreateAccount(profID, Name, AccNum, CDate, Card, AccBal).ToString();

                lbxAccList.Items.Add(Name);
                btnDispAccInfo_Click(sender, e);
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Account Already exists!";
            }
            #endregion
        }

        protected void btnDeleteAcc_Click(object sender, EventArgs e)
        {
            lbxAccTransactions.Items.Clear();
            #region Variable decleration
            Name = tbxAccName1.Text;
            lblError.Visible = false;
            string[] VAcc;
            #endregion

            #region DBConnection
            profID = Int32.Parse((string)Session["ProfID"]);
            BillionBankService.BBWebServiceSoapClient client1 = new BillionBankService.BBWebServiceSoapClient();
            VAcc = client1.AccNameFetch(profID).ToArray<string>();
            #endregion

            #region Functionality
            foreach (string name in VAcc)
            {
                if (name == Name)
                {
                    cnt++;
                }
            }

            if (cnt != 0)
            {
                profID = Int32.Parse((string)Session["ProfID"]);
                BillionBankService.BBWebServiceSoapClient client2 = new BillionBankService.BBWebServiceSoapClient();
                client2.DeleteAccount(profID, Name);

                #region Tbx & Lbl
                lbxAccList.Items.Remove(Name);
                tbxAccName1.Text = "";
                lblAccountInfo.Visible = false;
                lblAccName2.Visible = false;
                tbxAccName2.Visible = false;
                lblAccNum.Visible = false;
                tbxAccNum.Visible = false;
                lblAccCDate.Visible = false;
                tbxAccCDate.Visible = false;
                lblBalance.Visible = false;
                tbxAccBalance.Visible = false;
                #endregion
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Invalid Account Name!";
            }
            #endregion
        }

        protected void btnDispAccInfo_Click(object sender, EventArgs e)
        {
            #region Variable decleration
            string Name = tbxAccName1.Text;
            lblError.Visible = false;
            profID = Int32.Parse((string)Session["ProfID"]);
            string[] sa;
            string[] tr;
            #endregion

            #region DBConnection
            BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
            sa = client.FetchDetails(profID, Name).ToArray<string>();
            #endregion

            #region DBConnection
            if (sa[0] != null)
            {
                #region Tbx & Lbl
                lblAccountInfo.Visible = true;
                lblAccName2.Visible = true;
                tbxAccName2.Visible = true;
                lblAccNum.Visible = true;
                tbxAccNum.Visible = true;
                lblAccCDate.Visible = true;
                tbxAccCDate.Visible = true;
                lblBalance.Visible = true;
                tbxAccBalance.Visible = true;
                #endregion

                tbxAccName2.Text = Name;
                tbxAccNum.Text = sa[0].ToString();
                tbxAccCDate.Text = sa[1].ToString();
                tbxAccBalance.Text = sa[2].ToString();

                BillionBankService.BBWebServiceSoapClient client2 = new BillionBankService.BBWebServiceSoapClient();
                tr = client2.FetchAccTrans(profID, Name).ToArray<string>();

                foreach (string Trans in tr)
                {
                    lbxAccTransactions.Items.Add(Trans);
                }
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Invalid Account name!";
            }
            #endregion
        }

    }
}