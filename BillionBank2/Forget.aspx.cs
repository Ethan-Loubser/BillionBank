// Author: Ethan Loubser (x4s1gssj5)
// Date: 2023/12/06
// Purpose: The Purpose of this page is to provide the user with means to reset their password.

using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillionBank2
{
    public partial class Forget : System.Web.UI.Page
    {
        #region Variable decleration
        ArrayList al = new ArrayList();
        int Tnum;
        string QuestNum;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            al.Add("What was your first dog's name?");
            al.Add("What is the name of your favorite band?");
            al.Add("What is the name of your favorite song?");
            al.Add("What was the name of your first best friend?");
            al.Add("What is/was the name of your favorite teacher?");
        }

        protected void btnEmail_Click(object sender, EventArgs e)
        {
            #region Variable decleration
            lblError.Visible = false;
            string Email = tbxForgEmail.Text;
            #endregion

            #region DBConnection
            BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
            QuestNum = client.Forget(Email).ToString();
            tbxForgQuestion.Text = al[Convert.ToInt32(QuestNum)].ToString();
            #endregion

            #region Functionality
            if (QuestNum != null)
            {
                int Num = Int32.Parse(QuestNum);
                lblForgQuestion.Visible = true;
                tbxForgQuestion.Visible = true;
                lblForgAnsw.Visible = true;
                tbxUserAnsw.Visible = true;
                btnAnswer.Visible = true;
                tbxForgQuestion.Text = al[Num-1].ToString();
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Invalid Email Address";
            }
            #endregion
        }

        protected void btnAnswer_Click(object sender, EventArgs e)
        {
            #region Variable decleration
            lblError.Visible = false;
            string Answer = tbxUserAnsw.Text;
            string Email = tbxForgEmail.Text;
            #endregion

            #region DBConnection
            BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
            Tnum = Convert.ToInt32(client.ForgAnsw(Answer, Email));
            #endregion

            #region Functionality
            if (Tnum == 1)
            {
                lblNewPword.Visible = true;
                tbxNPword.Visible = true;
                lblConfNewPword.Visible = true;
                tbxCNPword.Visible = true;
                btnConfNPword.Visible = true;
                btnForgCancel.Visible = true;
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "2-Step answer is incorrect!";
                tbxUserAnsw.Text = " ";
            }
            #endregion
        }

        protected void btnConfNPword_Click(object sender, EventArgs e)
        {
            #region Variable decleration
            lblError.Visible = false;
            #endregion

            #region Functionality
            if (tbxNPword.Text == tbxCNPword.Text)
            {

                #region DBConnection
                string Email = tbxForgEmail.Text;
                string Pword = tbxCNPword.Text;
                BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
                client.PwordUpdate(Email, Pword);
                #endregion

                Response.Redirect("LogIn1.aspx");
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Passwords must match!";
                tbxNPword.Text = " ";
            }
            #endregion
        }

        protected void btnForgCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }
    }
}