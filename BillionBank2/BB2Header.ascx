<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BB2Header.ascx.cs" Inherits="BillionBank2.BB2Header" %>
<link rel="stylesheet" href="StyleSheet1.css" />
<style type="text/css">
    .auto-style1 {
        height: 82px;
        background-color: rgba(0,0,0,0.6);
        width: 139px;
        text-align:center;
        position : relative;
    }
    .auto-style2 {
        height: 47px;
        background-color: gray
    }
    .auto-style6 {
        width: 227px;
        height: 77px;
        background-color : rgba(0,0,0,0.6);
    }
    .auto-style7 {
        height: 82px;
        background-color: rgba(0,0,0,0.6);
        width: 180px;
        text-align:center;
        color : black;
        text-decoration : none;
    }
    .auto-style14 {
        height: 82px;
        background-color: rgba(0,0,0,0.6);
        width: 599px;
    }
    .MenuItemBackColor {
        background-color : rgba(0,0,0,0.6);
    }
</style>

<table style="width:100%;">
    <tr>
        <td class="auto-style14">
            <img class="auto-style6" src="BB2Images/BB2Banner2.png" /></td>
        <td class="auto-style7">
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" Font-Bold="True" ForeColor="White" Style="text-decoration:none" >Home</asp:HyperLink>
        </td>
        <td class="auto-style7">
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Arial" Font-Bold="True" Style="text-decoration:none" ForeColor="White">Summary </asp:HyperLink>
        </td>
        <td class="auto-style7">
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Names="Arial" Font-Bold="True" Style="text-decoration:none" ForeColor="White">My cards</asp:HyperLink>
        </td>
        <td class="auto-style7">
            <asp:HyperLink ID="HyperLink4" runat="server" Font-Names="Arial" Font-Bold="True" Style="text-decoration:none" ForeColor="White">Payment</asp:HyperLink>
        </td>
        <td class="auto-style6">
            <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="White">
                <DynamicMenuItemStyle BorderStyle="Solid" BorderWidth="30px" Font-Bold="True" Font-Names="Arial" BorderColor="Transparent" ForeColor="White" BackColor="Black" />
                <Items>
                    <asp:MenuItem Text="Profile" Value="Profile" Selectable="False" >
                        <asp:MenuItem Text="Log out" Value="Log out" NavigateUrl="LogIn1.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="ProfileUpdate.aspx" Text="Change Details" Value="Change Details"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticMenuStyle BackColor="Transparent" />
            </asp:Menu>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="6">
            <asp:Label ID="lblLogInStatus" runat="server" Font-Bold="True" Font-Names="Arial" Text="Please Log into your Billion Banking profile."></asp:Label>
        </td>
    </tr>
</table>

