<%@ Page Title="" Language="C#" MasterPageFile="~/BB2Template.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="BillionBank2.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
            height: 554px;
            background-color:rgba(0,0,0,0.6);
        }
        .auto-style21 {
            width: 35px;
            height: 467px;
        }
        .auto-style24 {
            width: 583px;
            height: 467px;
        }
        .auto-style28 {
            height: 35px;
            background-color:rgba(0,0,0,0.6);
        }
        .auto-style46 {
            width: 20px;
        }
        .auto-style51 {
            width: 388px;
            height: 55px;
        }
        .auto-style61 {
            width: 388px;
            height: 44px;
        }
        .auto-style67 {
            width: 388px;
            height: 35px;
        }
        .auto-style68 {
            width: 828px;
            height: 35px;
        }
        .auto-style69 {
            width: 388px;
            height: 50px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style28" colspan="7"></td>
        </tr>
        <tr>
            <td class="auto-style21" rowspan="11"></td>
            <td class="auto-style24" rowspan="11">
                <asp:ListBox ID="lbxAccList" runat="server" Height="461px" Width="321px" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large"></asp:ListBox>
            </td>
            <td class="auto-style46" rowspan="11"></td>
            <td class="auto-style67">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Text="Please specify the sending Account:"></asp:Label>
                <asp:Label ID="lblLIError" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style46" rowspan="11"></td>
            <td class="auto-style67">
                <asp:Label ID="lblPayAccBall" runat="server" Font-Bold="True" Font-Names="Arial" Text="Account Balance:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style21" rowspan="11"></td>
        </tr>
        <tr>
            <td class="auto-style69">
                <asp:TextBox ID="tbxSendAcc" runat="server" Width="240px" Font-Bold="True" Font-Names="Arial" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail" runat="server" ControlToValidate="tbxSendAcc" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style69">
                <asp:TextBox ID="tbxPAccBalance" runat="server" Width="240px" Font-Bold="True" Font-Names="Arial" Height="30px" Visible="False" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style51"></td>
            <td class="auto-style51"></td>
        </tr>
        <tr>
            <td class="auto-style67">
            <asp:Button ID="btnPay" runat="server" Height="49px" Text="Make Payment" Width="182px" Font-Bold="True" Font-Names="Arial" OnClick="btnPay_Click" />
            </td>
            <td class="auto-style68">
                <asp:Label ID="lblPaymentAmm" runat="server" Font-Bold="True" Font-Names="Arial" Text="Payment Ammount:" Visible="False"></asp:Label>
                <asp:Label ID="lblAmmError" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style69"></td>
            <td class="auto-style69">
                <asp:TextBox ID="tbxPayAmm" runat="server" Width="240px" Font-Bold="True" Font-Names="Arial" Height="30px" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail0" runat="server" ControlToValidate="tbxPayAmm" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style67">
            <asp:Button ID="btnConfPay" runat="server" Height="49px" Text="Confirm Payment" Width="182px" Font-Bold="True" Font-Names="Arial" OnClick="btnConfPay_Click" Visible="False" />
            </td>
            <td class="auto-style51"></td>
        </tr>
        <tr>
            <td class="auto-style67"></td>
            <td class="auto-style68">
                <asp:Label ID="lblBeneficiary" runat="server" Font-Bold="True" Font-Names="Arial" Text="Beneficiary:" Visible="False"></asp:Label>
                <asp:Label ID="lblBenefError" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style69"></td>
            <td class="auto-style69">
                <asp:TextBox ID="tbxBenef" runat="server" Width="240px" Font-Bold="True" Font-Names="Arial" Height="28px" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail1" runat="server" ControlToValidate="tbxBenef" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style61"></td>
            <td class="auto-style51">
            </td>
        </tr>
        <tr>
            <td class="auto-style67"></td>
            <td class="auto-style68">
                <asp:Label ID="lblReference" runat="server" Font-Bold="True" Font-Names="Arial" Text="Reference:" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style69"></td>
            <td class="auto-style69">
                <asp:TextBox ID="tbxRef" runat="server" Font-Bold="True" Font-Names="Arial" Height="30px" Visible="False" Width="241px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail2" runat="server" ControlToValidate="tbxRef" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" colspan="7"></td>
        </tr>
    </table>
</asp:Content>
