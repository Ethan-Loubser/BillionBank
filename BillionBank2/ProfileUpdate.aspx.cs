// Author: Ethan Loubser (x4s1gssj5)
// Date: 2023/12/06
// Purpose: The Purpose of this page is to provide the user with means to edit or view their profile information.

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
    public partial class ProfileUpdate : System.Web.UI.Page
    {
        #region Variable decleration
        string Name;
        ArrayList al = new ArrayList();
        private int profID;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                #region Variable decleration
                string[] details;
                profID = Int32.Parse((string)Session["ProfID"]);
                #endregion

                #region DBConnection
                BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
                details = client.FetchUserDetails(profID).ToArray<string>();
                #endregion

                #region Forms Init
                Name = details[0];
                tbxChangeName.Text = Name;
                tbxChangeMail.Text = details[1];
                tbxChangeID.Text = details[3];
                tbxChangePhone.Text = details[4];
                tbxChangePword.Text = details[2];
                tbxChangeQuest.Text = details[6];
                ddlChangeQuest.Text = details[5];
                #endregion
            }

        }

        protected void btnUpdateDetails_Click(object sender, EventArgs e)
        {
            #region Variable decleration
            profID = Int32.Parse((string)Session["ProfID"]);
            Name = tbxChangeName.Text;
            string Mail = tbxChangeMail.Text;
            string ID = tbxChangeID.Text;
            string Phone = tbxChangePhone.Text;
            string Pword = tbxChangePword.Text;
            string Answ = tbxChangeQuest.Text;
            string Quest = ddlChangeQuest.SelectedValue;
            int quest = Convert.ToInt32(Quest);
            #endregion

            #region WebService connection
            BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
            client.UserUpdate(profID, Name, Mail, ID, Phone, Pword, quest, Answ).ToString();
            #endregion
        }
        protected void btnSUCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("BB2Home.aspx");
        }
    }
}