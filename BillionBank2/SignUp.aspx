<%@ Page Title="" Language="C#" MasterPageFile="~/BB2Template.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BillionBank2.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
            height: 600px;
            background-color:rgba(0,0,0,0.6);
        }
        .auto-style16 {
            width: 300px;
            background-color:rgba(0,0,0,0.6);
        }
        .auto-style17 {
            width: 459px;
        }
        .auto-style22 {
            width: 459px;
            height: 40px;
        }
        .auto-style23 {
            width: 459px;
            height: 37px;
        }
        .auto-style40 {
            width: 291px;
            height: 47px;
            text-align:center;
        }
        .auto-style41 {
            width: 459px;
            height: 29px;
        }
        .auto-style42 {
            width: 50px;
        }
        .auto-style43 {
            width: 459px;
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style16" rowspan="27"></td>
            <td class="auto-style42" rowspan="27"></td>
            <td class="auto-style17" colspan="2">
                <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style16" rowspan="27"></td>
        </tr>
        <tr>
            <td class="auto-style41" colspan="2">
                <asp:Label ID="lblSUName" runat="server" Font-Bold="True" Font-Names="Arial" Text="Full Name:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:TextBox ID="tbxSUName" runat="server" Height="32px" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail" runat="server" ControlToValidate="tbxSUName" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style41" colspan="2">
                <asp:Label ID="lblSUEmail" runat="server" Font-Bold="True" Font-Names="Arial" Text="Email Address:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:TextBox ID="tbxSUEmail" runat="server" Height="32px" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail0" runat="server" ControlToValidate="tbxSUEmail" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxSUEmail" ErrorMessage="Invalid Email Address!" Font-Bold="True" Font-Names="Arial" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style41" colspan="2">
                <asp:Label ID="lblIDNum" runat="server" Font-Bold="True" Font-Names="Arial" Text="ID Number:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:TextBox ID="tbxIDNum" runat="server" Height="32px" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail1" runat="server" ControlToValidate="tbxIDNum" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbxIDNum" ErrorMessage="Invalid ID Number, must have 13 digits!" Font-Bold="True" Font-Names="Arial" ForeColor="Red" ValidationExpression="\d{13}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style41" colspan="2">
                <asp:Label ID="lblSUPhone" runat="server" Font-Bold="True" Font-Names="Arial" Text="Phone Number:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:TextBox ID="tbxSUPhone" runat="server" Height="32px" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail2" runat="server" ControlToValidate="tbxSUPhone" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbxSUPhone" ErrorMessage="Invalid Phone Number, must have 10 digits!" Font-Bold="True" Font-Names="Arial" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style41" colspan="2">
                <asp:Label ID="lblSUPword" runat="server" Font-Bold="True" Font-Names="Arial" Text="Password:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:TextBox ID="tbxSUPword" runat="server" Height="32px" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail3" runat="server" ControlToValidate="tbxSUPword" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tbxSUPword" ErrorMessage="Invalid Password, must contain at least: -1 digit, 1 lowercase letter, 1 uppercase letter, 1 special character and must be at least 8 characters long!" Font-Bold="True" Font-Names="Arial" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style41" colspan="2">
                <asp:Label ID="lblSUConfPword" runat="server" Font-Bold="True" Font-Names="Arial" Text="Confirm Password:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="2">
                <asp:TextBox ID="tbxSUConfPword" runat="server" Height="32px" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail4" runat="server" ControlToValidate="tbxSUConfPword" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbxSUPword" ControlToValidate="tbxSUConfPword" ErrorMessage="Passwords must match!" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style41" colspan="2">
                <asp:Label ID="lblSUQuestion" runat="server" Font-Bold="True" Font-Names="Arial" Text="Please choose a question:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" colspan="2">
                <asp:DropDownList ID="ddlQuestions" runat="server" Font-Bold="True" Font-Names="Arial" Height="25px" Width="400px">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem Value="1">What was your first dog&#39;s name?</asp:ListItem>
                    <asp:ListItem Value="2">What is the name of your favorite band?</asp:ListItem>
                    <asp:ListItem Value="3">What is the name of your favorite song?</asp:ListItem>
                    <asp:ListItem Value="4">What was the name of your first best friend?</asp:ListItem>
                    <asp:ListItem Value="5">What is/was the name of your favorite teacher?</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="VEmail5" runat="server" ControlToValidate="ddlQuestions" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style41" colspan="2">
                <asp:Label ID="lblSUAnsw" runat="server" Font-Bold="True" Font-Names="Arial" Text="Please answer the chosen question:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" colspan="2">
                <asp:TextBox ID="tbxSUAnswer" runat="server" Height="32px" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VEmail6" runat="server" ControlToValidate="tbxSUAnswer" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style40">
                <asp:Button ID="btnSUCreate" runat="server" Font-Bold="True" Font-Names="Arial" Height="42px" Text="Create Account" Width="222px" OnClick="btnSUCreate_Click" />
            </td>
            <td class="auto-style40">
                <asp:Button ID="btnSUCancel" runat="server" Font-Bold="True" Font-Names="Arial" Height="42px" Text="Cancel" Width="222px" OnClick="btnSUCancel_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
