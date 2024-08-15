// Author: Ethan Loubser (x4s1gssj5)
// Date: 2023/12/06
// Purpose: The Purpose of this page is to provide means for a new user to create a BillionBank profile.

using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Diagnostics.Eventing.Reader;
using System.EnterpriseServices.Internal;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Security.Policy;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BillionBank2
{
    public partial class SignUp : System.Web.UI.Page
    {
        private void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSUCreate_Click(object sender, EventArgs e)
        {
            #region Variable decleration
            string Name = tbxSUName.Text;
            string Email = tbxSUEmail.Text;
            string ID = tbxIDNum.Text;
            string Phone = tbxSUPhone.Text;
            string Pword = tbxSUPword.Text;
            string Quest = ddlQuestions.SelectedValue;
            string Answ = tbxSUAnswer.Text;
            int quest = Convert.ToInt32(Quest);
            #endregion

            #region DBConnection
            BillionBankService.BBWebServiceSoapClient client1 = new BillionBankService.BBWebServiceSoapClient();
            int Tnum = Convert.ToInt32(client1.EmailValid(Email));
            #endregion

            #region Functionality
            if (Tnum == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Email Address already in use!";
                tbxSUEmail.Text = string.Empty;
            }
            else if (Tnum == 1)
            {
                BillionBankService.BBWebServiceSoapClient client3 = new BillionBankService.BBWebServiceSoapClient();
                int TTnum = Convert.ToInt32(client3.IDValid(ID, Tnum));
                if (TTnum == 0)
                {
                    lblError.Visible = true;
                    lblError.Text = "ID Number already in use!";
                    tbxSUEmail.Text = string.Empty;
                }
                else if (TTnum == 2)
                {
                    BillionBankService.BBWebServiceSoapClient client4 = new BillionBankService.BBWebServiceSoapClient();
                    int TTTnum = Convert.ToInt32(client4.PhoneValid(Phone, TTnum));
                    if (TTTnum == 0)
                    {
                        lblError.Visible = true;
                        lblError.Text = "Phone Number already in use!";
                        tbxSUEmail.Text = string.Empty;
                    }
                    else if (TTTnum == 3)
                    {
                        BillionBankService.BBWebServiceSoapClient client2 = new BillionBankService.BBWebServiceSoapClient();
                        client2.SignUp(Name, Email, ID, Phone, Pword, quest, Answ);
                        Response.Redirect("LogIn.aspx");
                    }
                }
            }
            #endregion
        }

        protected void btnSUCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }
    }
}