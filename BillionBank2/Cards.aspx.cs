// Author: Ethan Loubser (x4s1gssj5)
// Date: 2023/12/06
// Purpose: The Purpose of this page is to provide the user with means to manage their BillionBank Account cards.

using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillionBank2
{
    public partial class Cards : System.Web.UI.Page
    {
        #region Variable decleration
        private int profID;
        int cnt;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                #region DBConnectiom
                string[] names;

                profID = Int32.Parse((string)Session["ProfID"]);
                BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
                names = client.AccNameFetch(profID).ToArray<string>();
                #endregion

                #region Functionality
                foreach (string name in names)
                {
                    lbxCardAccount.Items.Add(name);
                }
                #endregion
            }
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            #region Variable decleration
            string Name = tbxAccName1.Text;
            int nCard = 1;
            #endregion

            #region DBConnection
            profID = Int32.Parse((string)Session["ProfID"]);
            BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
            client.CardSet(profID, Name, nCard).ToString();
            btnDispCardInfo_Click(sender, e);
            #endregion
        }

        protected void btnBlock_Click(object sender, EventArgs e)
        {
            #region Variable decleration
            string Name = tbxAccName1.Text;
            int nCard = 0;
            #endregion

            #region DBConnection
            profID = Int32.Parse((string)Session["ProfID"]);
            BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
            client.CardSet(profID, Name, nCard).ToString();
            btnDispCardInfo_Click(sender, e);
            #endregion
        }

        protected void btnDispCardInfo_Click(object sender, EventArgs e)
        {
            #region Variable decleration
            string Name = tbxAccName1.Text;
            lblError.Visible = false;
            #endregion

            #region DBConnection
            profID = Int32.Parse((string)Session["ProfID"]);
            BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
            string Photo = client.CardHolder(profID, Name).ToString();

            string[] ba;

            BillionBankService.BBWebServiceSoapClient client2 = new BillionBankService.BBWebServiceSoapClient();
            ba = client2.AccNameFetch(profID).ToArray<string>();
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
                #region Tbx & Pb
                pbCard.Visible = true;
                btnOrder.Visible = true;
                btnBlock.Visible = true;
                pbCard.ImageUrl = Photo;
                #endregion
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