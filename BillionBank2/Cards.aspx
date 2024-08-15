<%@ Page Title="" Language="C#" MasterPageFile="~/BB2Template.Master" AutoEventWireup="true" CodeBehind="Cards.aspx.cs" Inherits="BillionBank2.Cards" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
            height: 545px;
            background-color:rgba(0,0,0,0.6);
        }
        .auto-style21 {
            width: 35px;
            height: 450px;
        }
        .auto-style24 {
            width: 662px;
            height: 450px;
            text-align: center;
        }
        .auto-style28 {
            height: 46px;
            width: 875px;
        }
        .auto-style30 {
            height: 35px;
            background-color:rgba(0,0,0,0.6);
        }
        .auto-style32 {
            margin-left: 0px;
        }
        .auto-style33 {
            height: 47px;
            width: 319px;
        }
        .auto-style39 {
            height: 47px;
            width: 875px;
        }
        .auto-style44 {
            width: 567px;
            height: 24px;
        }
        .auto-style46 {
            height: 47px;
            width: 567px;
        }
        .auto-style47 {
            width: 567px;
            height: 100px;
        }
        .auto-style50 {
            width: 567px;
            height: 13px;
        }
        .auto-style52 {
            width: 567px;
            height: 8px;
        }
        .auto-style53 {
            height: 32px;
            width: 567px;
        }
        .auto-style54 {
            width: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style30" colspan="8">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" rowspan="6"></td>
            <td class="auto-style24" rowspan="6">
            <asp:ListBox ID="lbxCardAccount" runat="server" Height="522px" Width="290px" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large"></asp:ListBox>
            </td>
            <td class="auto-style54" rowspan="6"></td>
            <td class="auto-style44"></td>
            <td class="auto-style54" rowspan="6"></td>
            <td class="auto-style28" colspan="2" rowspan="5">
                <asp:Image ID="pbCard" runat="server" CssClass="auto-style32" Height="231px" Width="433px" Visible="False" />
            </td>
            <td class="auto-style21" rowspan="6"></td>
        </tr>
        <tr>
            <td class="auto-style50">
            <asp:Label ID="lblAccName1" runat="server" Text="Account Name:" Font-Bold="True" Font-Names="Arial"></asp:Label>
                <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style52">
            <asp:TextBox ID="tbxAccName1" runat="server" Height="24px" Width="230px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="VAccName" runat="server" ControlToValidate="tbxAccName1" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style53">
            <asp:Button ID="btnDispCardInfo" runat="server" Height="49px" Text="Card Info" Width="182px" Font-Bold="True" Font-Names="Arial" OnClick="btnDispCardInfo_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style47"></td>
        </tr>
        <tr>
            <td class="auto-style46"></td>
            <td class="auto-style33">
                <asp:Button ID="btnOrder" runat="server" CssClass="auto-style32" Height="47px" Text="Order" Width="166px" Font-Bold="True" Font-Names="Arial" OnClick="btnOrder_Click" Visible="False" />
            </td>
            <td class="auto-style39">
                <asp:Button ID="btnBlock" runat="server" CssClass="auto-style32" Height="47px" Text="Block" Width="166px" Font-Bold="True" Font-Names="Arial" OnClick="btnBlock_Click" Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style30" colspan="8"></td>
        </tr>
    </table>
</asp:Content>
