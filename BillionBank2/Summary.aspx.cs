// Author: Ethan Loubser (x4s1gssj5)
// Date: 2023/12/06
// Purpose: The Purpose of this page is to provide the user with a summary of transactions between their owned accounts.
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BillionBank2
{
    public partial class Summary : System.Web.UI.Page
    {
        #region Variable decleration
        private int profID;
        string[] Tlogs;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                #region DBConnection
                profID = Int32.Parse((string)Session["ProfID"]);
                BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
                Tlogs = client.FetchProfTran(profID).ToArray<string>();
                #endregion

                #region Functionality
                foreach (string log in Tlogs)
                {
                    lbxTranList.Items.Add(log);
                }
                #endregion
            }
        }
        protected void btnDispTranInfo_Click(object sender, EventArgs e)
        {
            #region Variable decleration
            int TNum = Convert.ToInt32(tbxTNum.Text);
            string[] TInfo;
            #endregion

            #region DBConnection
            profID = Int32.Parse((string)Session["ProfID"]);
            BillionBankService.BBWebServiceSoapClient client = new BillionBankService.BBWebServiceSoapClient();
            TInfo = client.FetchTranDetails(profID, TNum).ToArray<string>();
            #endregion

            #region Controls edit
            tbxSenAcc.Text = TInfo[0];
            tbxRecAcc.Text = TInfo[1];
            tbxTAmm.Text = TInfo[2];
            tbxRef.Text = TInfo[3];
            #endregion
        }
    }
}