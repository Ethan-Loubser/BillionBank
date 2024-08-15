<%@ Page Title="" Language="C#" MasterPageFile="~/BB2Template.Master" AutoEventWireup="true" CodeBehind="BB2Home.aspx.cs" Inherits="BillionBank2.BB2Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 288px;
    }
    .auto-style3 {
            width: 46px;
            height: 63px;
        }
    .auto-style7 {
        height: 63px;
        width: 169px;
    }
        .auto-style15 {
            width: 46px;
            background-color:transparent;
        }
        .auto-style17 {
            width: 100%;
            height: 601px;
            background-color: rgba(0, 0, 0, 0.6);
            margin-bottom: 0px;
        }
        .auto-style49 {
            height: 33px;
            background-color: rgba(0,0,0,0.6);
        }
        .auto-style56 {
            width: 8px;
            background-color: transparent;
        }
        .auto-style57 {
            background-color: transparent;
            width: 255px;
        }
        .auto-style67 {
            width: 260px;
            }
        .auto-style69 {
            width: 148px;
        }
        .auto-style70 {
            width: 250px;
        }
        .auto-style87 {
            width: 250px;
            height: 12px;
        }
        .auto-style88 {
            width: 250px;
            height: 63px;
        }
        .auto-style89 {
            width: 250px;
            height: 26px;
        }
        .auto-style90 {
            width: 250px;
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
    <tr>
        <td class="auto-style49" colspan="9">
        </td>
    </tr>
    <tr>
        <td class="auto-style3" rowspan="13">
            &nbsp;</td>
        <td class="auto-style69" rowspan="13">
            <asp:ListBox ID="lbxAccList" runat="server" Height="522px" Width="235px" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large"></asp:ListBox>
        </td>
        <td class="auto-style56" rowspan="13">
            &nbsp;</td>
        <td class="auto-style70">
            <asp:Label ID="lblCreateAccount" runat="server" Font-Bold="True" Font-Names="Arial" Text="SPECIFY ACCOUNT NAME"></asp:Label>
        </td>
        <td class="auto-style56" rowspan="13"></td>
        <td class="auto-style57" rowspan="13">
            <asp:ListBox ID="lbxAccTransactions" runat="server" Height="522px" Width="290px" Font-Bold="True" Font-Names="Arial" Font-Size="Large"></asp:ListBox>
        </td>
        <td class="auto-style56" rowspan="13"></td>
        <td class="auto-style67">
            <asp:Label ID="lblAccountInfo" runat="server" Font-Bold="True" Font-Names="Arial" Text="ACCOUNT INFO" Visible="False"></asp:Label>
        </td>
        <td class="auto-style15" rowspan="13">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style88">
            <asp:Label ID="lblAccName1" runat="server" Text="Account Name:" Font-Bold="True" Font-Names="Arial"></asp:Label>
            <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red" Visible="False"></asp:Label>
        </td>
        <td class="auto-style88">
            <asp:Label ID="lblAccName2" runat="server" Text="Account Name:" Font-Bold="True" Font-Names="Arial" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style70">
            <asp:TextBox ID="tbxAccName1" runat="server" Height="24px" Width="230px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="VAccName" runat="server" ControlToValidate="tbxAccName1" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style70">
            <asp:TextBox ID="tbxAccName2" runat="server" Height="24px" Width="230px" Visible="False" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style70">
            &nbsp;</td>
        <td class="auto-style70">
        </td>
    </tr>
    <tr>
        <td class="auto-style88">
            <asp:Button ID="btnDispAccInfo" runat="server" Height="49px" Text="Account Info" Width="182px" Font-Bold="True" Font-Names="Arial" OnClick="btnDispAccInfo_Click" />
        </td>
        <td class="auto-style88">
            <asp:Label ID="lblAccNum" runat="server" Text="Account Number:" Font-Bold="True" Font-Names="Arial" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style87">
            </td>
        <td class="auto-style87">
            <asp:TextBox ID="tbxAccNum" runat="server" Height="24px" Width="230px" Visible="False" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style89">
        </td>
        <td class="auto-style89">
            </td>
    </tr>
    <tr>
        <td class="auto-style88">
            <asp:Button ID="btnCreateAcc" runat="server" Height="49px" Text="Create Account" Width="182px" Font-Bold="True" Font-Names="Arial" OnClick="btnCreateAcc_Click" />
        </td>
        <td class="auto-style88">
            <asp:Label ID="lblAccCDate" runat="server" Text="Account Creation Date:" Font-Bold="True" Font-Names="Arial" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style90">
            </td>
        <td class="auto-style90">
            <asp:TextBox ID="tbxAccCDate" runat="server" Height="24px" Width="230px" Visible="False" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style89">
            </td>
        <td class="auto-style89">
            </td>
    </tr>
    <tr>
        <td class="auto-style88">
            <asp:Button ID="btnDeleteAcc" runat="server" Height="49px" Text="Delete Account" Width="182px" Font-Bold="True" Font-Names="Arial" OnClick="btnDeleteAcc_Click" />
            </td>
        <td class="auto-style88">
            <asp:Label ID="lblBalance" runat="server" Text="Account Balance:" Font-Bold="True" Font-Names="Arial" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style70" rowspan="2">
            </td>
        <td class="auto-style70">
            <asp:TextBox ID="tbxAccBalance" runat="server" Height="24px" Width="230px" Visible="False" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style89"></td>
    </tr>
    <tr>
        <td class="auto-style49" colspan="9"></td>
    </tr>
</table>
</asp:Content>
