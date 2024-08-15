<%@ Page Title="" Language="C#" MasterPageFile="~/BB2Template.Master" AutoEventWireup="true" CodeBehind="LogIn1.aspx.cs" Inherits="BillionBank2.LogIn1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
            height: 679px;
            background-color:rgba(0,0,0,0.6);
        }
        .auto-style41 {
            width: 194px;
            height: 20px;
        }
        .auto-style61 {
            height: 47px;
            width: 357px;
        }
        .auto-style64 {
            width: 357px;
            background-color: rgba(0,0,0,0.6);
            text-align: center;
        }
        .auto-style67 {
            margin-left: 0px;
        }
        .auto-style75 {
            width: 194px;
            height: 81px;
        }
        .auto-style76 {
            width: 194px;
            height: 6px;
        }
        .auto-style77 {
            width: 194px;
            height: 45px;
        }
        .auto-style78 {
            width: 357px;
            background-color: rgba(0,0,0,0.6);
            text-align: center;
            height: 20px;
        }
        .auto-style79 {
            margin-left: 0px;
            margin-right: 0px;
        }
        .auto-style81 {
            width: 42px;
        }
        .auto-style83 {
            width: 300px;
            background-color: rgba(0,0,0,0.6);
        }
        .auto-style84 {
            height: 20px;
            width: 357px;
        }
        .auto-style88 {
            width: 357px;
            background-color: rgba(0,0,0,0.6);
            text-align: center;
            height: 6px;
        }
        .auto-style90 {
            height: 40px;
            width: 357px;
        }
        .auto-style91 {
            text-align: center;
            height: 47px;
        }
        .auto-style93 {
            width: 194px;
            height: 23px;
        }
        .auto-style94 {
            width: 357px;
            background-color: rgba(0,0,0,0.6);
            text-align: center;
            height: 23px;
        }
        .auto-style99 {
            height: 21px;
            width: 357px;
        }
        .auto-style100 {
            height: 20px;
            text-align: center;
        }
        .auto-style101 {
            width: 179px;
            height: 20px;
        }
        .auto-style102 {
            width: 179px;
            height: 40px;
        }
        .auto-style103 {
            width: 144px;
            height: 20px;
            text-align: center;
        }
        .auto-style104 {
            width: 144px;
            height: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style83" rowspan="11"></td>
            <td class="auto-style91" colspan="4">
                <asp:Label ID="lblLIError" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style61"></td>
            <td class="auto-style83" rowspan="11"></td>
        </tr>
        <tr>
            <td class="auto-style81" rowspan="9"></td>
            <td class="auto-style41" colspan="2">
                <asp:Label ID="lblLIEmail" runat="server" Font-Bold="True" Font-Names="Arial" Text="Email Address:"></asp:Label>
            </td>
            <td rowspan="6" class="auto-style81"></td>
            <td class="auto-style84"></td>
        </tr>
        <tr>
            <td class="auto-style77" colspan="2">
                <asp:TextBox ID="tbxLIEmail" runat="server" Height="32px" Width="310px" Font-Bold="True" Font-Names="Arial" ForeColor="#999999">Type here</asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail" runat="server" ControlToValidate="tbxLIEmail" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style64" rowspan="2">
                <asp:Label ID="lblLINew" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" Text="New Here?"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style75" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style41" colspan="2">
                <asp:Label ID="lblLIPword" runat="server" Font-Bold="True" Font-Names="Arial" Text="Password:"></asp:Label>
            </td>
            <td class="auto-style78">
            </td>
        </tr>
        <tr>
            <td class="auto-style76" colspan="2">
                <asp:TextBox ID="tbxLIPword" runat="server" Height="32px" Width="310px" Font-Bold="True" Font-Names="Arial" ForeColor="#999999">Type here</asp:TextBox>
                <asp:RequiredFieldValidator ID="VPword" runat="server" ControlToValidate="tbxLIPword" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style88">
                <asp:Label ID="Label1" runat="server" Font-Names="Arial" Text="Sign up today, by clicking here:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style93" colspan="2"></td>
            <td class="auto-style94">
                <asp:Button ID="btnLISignUp" runat="server" Height="42px" Text="SIgn Up" Width="180px" CssClass="auto-style67" Font-Bold="True" Font-Names="Arial" OnClick="btnLISignUp_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style100" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style101">
                <asp:Label ID="lblLICancel" runat="server" Font-Bold="True" Font-Names="Arial" Text="Have Account?"></asp:Label>
            </td>
            <td class="auto-style101">
                <asp:Label ID="lblLIForget" runat="server" Font-Bold="True" Font-Names="Arial" Text="    Forgot password?"></asp:Label>
            </td>
            <td rowspan="2" class="auto-style81"></td>
            <td class="auto-style99"></td>
        </tr>
        <tr>
            <td class="auto-style104">
                <asp:Button ID="btnLILogIn" runat="server" Text="Log In" Height="42px" Width="222px" Font-Bold="True" Font-Names="Arial" OnClick="btnLILogIn_Click" />
            </td>
            <td class="auto-style102">
                <asp:Button ID="btnLINPword" runat="server" Text="Create new password" Height="42px" Width="222px" CssClass="auto-style79" Font-Bold="True" Font-Names="Arial" OnClick="btnLINPword_Click" />
            </td>
            <td class="auto-style90"></td>
        </tr>
        <tr>
            <td class="auto-style91" colspan="4"></td>
            <td class="auto-style61"></td>
        </tr>
    </table>
</asp:Content>
