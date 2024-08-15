<%@ Page Title="" Language="C#" MasterPageFile="~/BB2Template.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="BillionBank2.Summary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
            height: 540px;
            background-color:rgba(0,0,0,0.6)
        }
        .auto-style34 {
            height: 35px;
            background-color:rgba(0,0,0,0.6);
        }
        .auto-style35 {
            height: 463px;
            width: 72px;
        }
        .auto-style47 {
            height: 40px;
            width: 817px;
        }
        .auto-style48 {
            margin-top: 0px;
        }
        .auto-style50 {
            height: 30px;
            width: 732px;
        }
        .auto-style61 {
            height: 30px;
            width: 405px;
        }
        .auto-style62 {
            width: 405px;
        }
        .auto-style66 {
            width: 72px;
        }
        .auto-style68 {
            width: 920px;
            height: 35px;
        }
        .auto-style69 {
            height: 35px;
            width: 80px;
        }
        .auto-style70 {
            height: 35px;
            width: 817px;
        }
        .auto-style71 {
            height: 30px;
            width: 80px;
        }
        .auto-style72 {
            height: 30px;
            width: 817px;
        }
        .auto-style73 {
            width: 80px;
            height: 40px;
        }
        .auto-style74 {
            width: 920px;
            height: 40px;
        }
        .auto-style76 {
            width: 920px;
            height: 30px;
        }
        .auto-style77 {
            height: 35px;
        }
        .auto-style79 {
            height: 30px;
        }
        .auto-style83 {
            width: 72px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style34" colspan="6"></td>
        </tr>
        <tr>
            <td class="auto-style79" colspan="6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35" rowspan="11"></td>
            <td class="auto-style61">
            </td>
            <td class="auto-style71">
            </td>
            <td class="auto-style50">
                <asp:Label ID="lblTrans" runat="server" Text="specify transaction num:" Font-Bold="True" Font-Names="Arial"></asp:Label>
            </td>
            <td class="auto-style72">
                <asp:Label ID="lblSenAcc" runat="server" Font-Bold="True" Font-Names="Arial" Text="Sending Account:"></asp:Label>
            </td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style62" rowspan="10">
                <asp:ListBox ID="lbxTranList" runat="server" Height="460px" Width="363px" AutoPostBack="True" CssClass="auto-style48" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large"></asp:ListBox>
            </td>
            <td class="auto-style69">
            </td>
            <td class="auto-style68">
                <asp:TextBox ID="tbxTNum" runat="server" Width="230px" Font-Bold="True" Font-Names="Arial" Height="30px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="VAccName" runat="server" ControlToValidate="tbxTNum" ErrorMessage="*" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style70">
                <asp:TextBox ID="tbxSenAcc" runat="server" Width="260px" Font-Bold="True" Font-Names="Arial" Height="30px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style73">
                </td>
            <td class="auto-style74">
            <asp:Button ID="btnDispTranInfo" runat="server" Height="49px" Text="Transaction Info" Width="182px" Font-Bold="True" Font-Names="Arial" OnClick="btnDispTranInfo_Click" />
                </td>
            <td class="auto-style47"></td>
            <td class="auto-style83"></td>
        </tr>
        <tr>
            <td class="auto-style71">
                </td>
            <td class="auto-style76">
                </td>
            <td class="auto-style72">
                <asp:Label ID="lblRecAcc" runat="server" Font-Bold="True" Font-Names="Arial" Text="Receiving Account:"></asp:Label>
            </td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style69">
                </td>
            <td class="auto-style68">
                </td>
            <td class="auto-style70">
                <asp:TextBox ID="tbxRecAcc" runat="server" Width="260px" Font-Bold="True" Font-Names="Arial" Height="30px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style73">
                </td>
            <td class="auto-style74">
                </td>
            <td class="auto-style47"></td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style71">
                </td>
            <td class="auto-style76">
                </td>
            <td class="auto-style72">
                <asp:Label ID="lblSummTrans" runat="server" Font-Bold="True" Font-Names="Arial" Text="Transaction Ammount:"></asp:Label>
            </td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style69">
                </td>
            <td class="auto-style68">
                </td>
            <td class="auto-style70">
                <asp:TextBox ID="tbxTAmm" runat="server" Width="260px" Font-Bold="True" Font-Names="Arial" Height="30px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style73">
                </td>
            <td class="auto-style74">
                </td>
            <td class="auto-style47"></td>
            <td class="auto-style83"></td>
        </tr>
        <tr>
            <td class="auto-style71">
                </td>
            <td class="auto-style76">
                </td>
            <td class="auto-style72">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial" Text="Reference:"></asp:Label>
            </td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style77">
                </td>
            <td class="auto-style77">
                </td>
            <td class="auto-style70">
                <asp:TextBox ID="tbxRef" runat="server" Width="260px" Font-Bold="True" Font-Names="Arial" Height="30px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style79" colspan="6"></td>
        </tr>
        <tr>
            <td class="auto-style34" colspan="6"></td>
        </tr>
    </table>
</asp:Content>
