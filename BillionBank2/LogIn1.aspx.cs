// Author: Ethan Loubser (x4s1gssj5)
// Date: 2023/12/06
// Purpose: The Purpose of this page is to authenticate a user before allowing them access to the Billion Bank features.

using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Xml.Linq;

namespace BillionBank2
{
    public partial class LogIn1 : System.Web.UI.Page
    {
        #region Variable decleration
        public string ProfID;
        private OleDbConnection connection = new OleDbConnection();
        public int count;
        #endregion

        private void Page_Load(object sender, EventArgs e)
        {
                Session["ProfID"] = "0";
        }

        protected void btnLILogIn_Click(object sender, EventArgs e)
        {
            #region Variable Declaration
            string Email = tbxLIEmail.Text;
            string Pword = tbxLIPword.Text;
            #endregion

            #region DBConnection
            BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
            string profID = client.LogIN(Email, Pword);
            #endregion

            #region Functionality
            if (profID != null)
            {
                Session["ProfID"] = profID;
                Response.Redirect("BB2Home.aspx");
            }
            else
            {
                lblLIError.Text = "Invalid Email Address or Password!";
            }
            #endregion
        }


        #region Redirect buttons
        protected void btnLINPword_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forget.aspx");
        }

        protected void btnLISignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
        #endregion
    }
}