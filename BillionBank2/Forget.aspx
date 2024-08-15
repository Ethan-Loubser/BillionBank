<%@ Page Title="" Language="C#" MasterPageFile="~/BB2Template.Master" AutoEventWireup="true" CodeBehind="Forget.aspx.cs" Inherits="BillionBank2.Forget" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
            height: 600px;
            background-color:rgba(0,0,0,0.6);
        }
        .auto-style31 {
            width: 457px;
            height: 30px;
        }
        .auto-style32 {
            width: 457px;
            height: 40px;
        }
        .auto-style33 {
            width: 457px;
            height: 37px;
        }
        .auto-style34 {
            
        }
        .auto-style35 {
            width: 11%;
        }
        .auto-style39 {
            height: 40px;
        }
        .auto-style48 {
            width: 456px;
        }
        .auto-style49 {
            width: 456px;
            height: 30px;
        }
        .auto-style50 {
            width: 456px;
            height: 40px;
        }
        .auto-style51 {
            width: 456px;
            height: 37px;
        }
        .auto-style52 {
            height: 50px;
        }
        .auto-style53 {
            width: 22px;
            height: 30px;
        }
        .auto-style54 {
            width: 22px;
        }
        .auto-style55 {
            width: 24px;
            height: 40px;
        }
        .auto-style56 {
            width: 22px;
            height: 37px;
        }
        .auto-style57 {
            width: 406px;
            height: 30px;
        }
        .auto-style58 {
            width: 20%;
            background-color: rgba(0,0,0,0.6);
        }
        .auto-style59 {
            width: 22px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style58" rowspan="19"></td>
            <td class="auto-style34" colspan="8"></td>
            <td class="auto-style58" rowspan="19"></td>
        </tr>
        <tr>
            <td class="auto-style35" rowspan="17"></td>
            <td class="auto-style49" colspan="3">
                <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style53">
                &nbsp;</td>
            <td class="auto-style31" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:Label ID="lblForgQuestion0" runat="server" Font-Bold="True" Font-Names="Arial" Text="Please enter your Email Address:"></asp:Label>
            </td>
            <td class="auto-style31" colspan="5">
                &nbsp;</td>
            <td class="auto-style57">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style48" colspan="3">
                <asp:TextBox ID="tbxForgEmail" runat="server" Height="32px" Width="310px" Font-Bold="True" Font-Names="Arial" ForeColor="#999999">Type here</asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail" runat="server" ControlToValidate="tbxForgEmail" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style54">
                &nbsp;</td>
            <td colspan="3">
                <asp:Button ID="btnEmail" runat="server" Height="42px" Text="Submit Email" Width="222px" Font-Bold="True" Font-Names="Arial" OnClick="btnEmail_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style49" colspan="3">
                &nbsp;</td>
            <td class="auto-style53">
                &nbsp;</td>
            <td class="auto-style31" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style49" colspan="3">
                <asp:Label ID="lblForgQuestion" runat="server" Font-Bold="True" Font-Names="Arial" Text="Two step verification question:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style53">
                &nbsp;</td>
            <td class="auto-style31" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50" colspan="3">
                <asp:TextBox ID="tbxForgQuestion" runat="server" Height="32px" Width="310px" Font-Bold="True" Font-Names="Arial" Visible="False" ForeColor="#999999"></asp:TextBox>
            </td>
            <td class="auto-style59">
                &nbsp;</td>
            <td class="auto-style32" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51" colspan="3"></td>
            <td class="auto-style56"></td>
            <td class="auto-style33" colspan="3"></td>
        </tr>
        <tr>
            <td class="auto-style49" colspan="3">
                <asp:Label ID="lblForgAnsw" runat="server" Font-Bold="True" Font-Names="Arial" Text="Your Answer:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style53">
                &nbsp;</td>
            <td class="auto-style31" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50" colspan="3">
                <asp:TextBox ID="tbxUserAnsw" runat="server" Height="32px" Width="310px" Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="#999999">Type here</asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail0" runat="server" ControlToValidate="tbxUserAnsw" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style59">
                &nbsp;</td>
            <td class="auto-style39" colspan="3">
                <asp:Button ID="btnAnswer" runat="server" Height="42px" Text="Submit Answer" Width="222px" Font-Bold="True" Font-Names="Arial" OnClick="btnAnswer_Click" Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style51" colspan="3"></td>
            <td class="auto-style56"></td>
            <td class="auto-style33" colspan="3"></td>
        </tr>
        <tr>
            <td class="auto-style49" colspan="3">
                <asp:Label ID="lblNewPword" runat="server" Font-Bold="True" Font-Names="Arial" Text="Your new password:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style53">
                &nbsp;</td>
            <td class="auto-style31" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50" colspan="3">
                <asp:TextBox ID="tbxNPword" runat="server" Height="32px" Width="310px" Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="#999999">Type here</asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail1" runat="server" ControlToValidate="tbxNPword" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style59">
                &nbsp;</td>
            <td class="auto-style32" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51" colspan="3"></td>
            <td class="auto-style56"></td>
            <td class="auto-style33" colspan="3"></td>
        </tr>
        <tr>
            <td class="auto-style49" colspan="3">
                <asp:Label ID="lblConfNewPword" runat="server" Font-Bold="True" Font-Names="Arial" Text="Confirm your new password:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style53">
                &nbsp;</td>
            <td class="auto-style31" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50" colspan="3">
                <asp:TextBox ID="tbxCNPword" runat="server" Height="32px" Width="310px" Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="#999999">Type here</asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail2" runat="server" ControlToValidate="tbxCNPword" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style59">
                &nbsp;</td>
            <td class="auto-style32" colspan="3">
                <asp:CompareValidator ID="VPword" runat="server" ControlToCompare="tbxNPword" ControlToValidate="tbxCNPword" ErrorMessage="CompareValidator" Font-Bold="True" Font-Names="Arial" ForeColor="Red">Passwords must match!</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style51" colspan="3"></td>
            <td class="auto-style56"></td>
            <td class="auto-style33" colspan="3"></td>
        </tr>
        <tr>
            <td class="auto-style52" colspan="2">
                <asp:Button ID="btnConfNPword" runat="server" Height="42px" Text="Confirm new password" Width="222px" Font-Bold="True" Font-Names="Arial" OnClick="btnConfNPword_Click" Visible="False" />
            </td>
            <td class="auto-style55" colspan="3">
                &nbsp;</td>
            <td class="auto-style52" colspan="2">
                <asp:Button ID="btnForgCancel" runat="server" Height="42px" Text="Cancel" Width="222px" Font-Bold="True" Font-Names="Arial" Visible="False" OnClick="btnForgCancel_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style34" colspan="8"></td>
        </tr>
    </table>
</asp:Content>
