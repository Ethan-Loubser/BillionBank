// Author: Ethan Loubser (x4s1gssj5)
// Date: 2023/12/06
// Purpose: The Purpose of this page is to provide the user with the means to navigate through pages of the BillionBank WebApp.

using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillionBank2
{
    public partial class BB2Header : System.Web.UI.UserControl
    {
        #region Variable decleration
        private int profID;
        private string UserName;
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            profID = Int32.Parse((string)Session["ProfID"]);
            #region Variable decleration
            Menu1.Visible = false;
            #endregion

            #region Functionality
            if (profID != 0)
            {
                #region DBConnection
                string[] details;
                profID = Int32.Parse((string)Session["ProfID"]);
                BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
                details = client.FetchUserDetails(profID).ToArray<string>();
                #endregion

                #region Control edit
                UserName = details[0];
                lblLogInStatus.Text = "You are currently signed in as " + UserName;
                HyperLink1.NavigateUrl = "BB2Home.aspx";
                HyperLink2.NavigateUrl = "Summary.aspx";
                HyperLink3.NavigateUrl = "Cards.aspx";
                HyperLink4.NavigateUrl = "Payment.aspx";
                Menu1.Visible = true;
                #endregion
            }
            else
            {
                lblLogInStatus.Text = "Please sign into your Billion Banking profile!";
            }
            #endregion
        }
    }
}