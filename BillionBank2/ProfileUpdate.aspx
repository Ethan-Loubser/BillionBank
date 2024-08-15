<%@ Page Title="" Language="C#" MasterPageFile="~/BB2Template.Master" AutoEventWireup="true" CodeBehind="ProfileUpdate.aspx.cs" Inherits="BillionBank2.ProfileUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
            height: 130px;
            background-color: rgba(0,0,0,0.6);
        }
        .auto-style17 {
            width: 266px;
            background-color: rgba(0,0,0,0.6);
        }
        .auto-style19 {
            width: 112px;
            height: 46px;
        }
        .auto-style20 {
            width: 51px;
        }
        .auto-style22 {
            height: 35px;
        }
        .auto-style23 {
            width: 11px;
        }
        .auto-style24 {
            height: 40px;
        }
        .auto-style26 {
            height: 26px;
        }
        .auto-style27 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style17" rowspan="24">&nbsp;</td>
            <td class="auto-style20" rowspan="24">&nbsp;</td>
            <td colspan="2" class="auto-style26"></td>
            <td rowspan="24" class="auto-style23">&nbsp;</td>
            <td rowspan="24" class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style27">
                <asp:Label ID="lblChangeName" runat="server" Font-Bold="True" Font-Names="Arial" Text="Change Name:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style24">
                <asp:TextBox ID="tbxChangeName" runat="server" Font-Bold="True" Font-Names="Arial" Height="30px" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style22"></td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style27">
                <asp:Label ID="lblChangeMail" runat="server" Font-Bold="True" Font-Names="Arial" Text="Change Email:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style24">
                <asp:TextBox ID="tbxChangeMail" runat="server" Font-Bold="True" Font-Names="Arial" Height="30px" Width="220px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxChangeMail" ErrorMessage="Invalid Email Address!" Font-Bold="True" Font-Names="Arial" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style22"></td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style27">
                <asp:Label ID="lblChangeID" runat="server" Font-Bold="True" Font-Names="Arial" Text="Change ID Number:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style24">
                <asp:TextBox ID="tbxChangeID" runat="server" Font-Bold="True" Font-Names="Arial" Height="30px" Width="220px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbxChangeID" ErrorMessage="Invalid ID Number, must have 13 digits!" Font-Bold="True" Font-Names="Arial" ForeColor="Red" ValidationExpression="\d{13}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style22"></td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style27">
                <asp:Label ID="lblChangePhone" runat="server" Font-Bold="True" Font-Names="Arial" Text="Change Phone Number:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style24">
                <asp:TextBox ID="tbxChangePhone" runat="server" Font-Bold="True" Font-Names="Arial" Height="30px" Width="220px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbxChangePhone" ErrorMessage="Invalid Phone Number, must have 10 digits!" Font-Bold="True" Font-Names="Arial" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style22"></td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style27">
                <asp:Label ID="lblChangePword" runat="server" Font-Bold="True" Font-Names="Arial" Text="Change Password:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style24">
                <asp:TextBox ID="tbxChangePword" runat="server" Font-Bold="True" Font-Names="Arial" Height="30px" Width="220px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tbxChangePword" ErrorMessage="Invalid Password, must contain at least: -1 digit, 1 lowercase letter, 1 uppercase letter, 1 special character and must be at least 8 characters long!" Font-Bold="True" Font-Names="Arial" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style22"></td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style27">
                <asp:Label ID="lblChangeQuest" runat="server" Font-Bold="True" Font-Names="Arial" Text="Change 2step Question:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style24">
                <asp:DropDownList ID="ddlChangeQuest" runat="server" Font-Bold="True" Font-Names="Arial" Height="40px" Width="400px">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem Value="1">What was your first dog&#39;s name?</asp:ListItem>
                    <asp:ListItem Value="2">What is the name of your favorite band?</asp:ListItem>
                    <asp:ListItem Value="3">What is the name of your favorite song?</asp:ListItem>
                    <asp:ListItem Value="4">What was the name of your first best friend?</asp:ListItem>
                    <asp:ListItem Value="5">What is/was the name of your favorite teacher?</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style27">
                <asp:Label ID="lblChangeAnsw" runat="server" Font-Bold="True" Font-Names="Arial" Text="Change Answer:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style24">
                <asp:TextBox ID="tbxChangeQuest" runat="server" Font-Bold="True" Font-Names="Arial" Height="30px" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Button ID="btnUpdateDetails" runat="server" Font-Bold="True" Font-Names="Arial" Height="42px" Text="Update Details" Width="222px" OnClick="btnUpdateDetails_Click" />
            </td>
            <td class="auto-style19">
                <asp:Button ID="btnCancel" runat="server" Font-Bold="True" Font-Names="Arial" Height="42px" Text="Cancel" Width="222px" OnClick="btnSUCancel_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
