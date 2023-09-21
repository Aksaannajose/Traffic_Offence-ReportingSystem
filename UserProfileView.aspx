<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfileView.aspx.cs" Inherits="Traffic_offence_reporting_system.UserProfileView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 506px;
        }
        .auto-style2 {
            margin-left: 278px;
        }
        .auto-style3 {
            width: 76%;
            height: 321px;
            margin-left: 76px;
            margin-top: 0px;
        }
        .auto-style6 {
            margin-left: 24px;
            margin-top: 6px;
        }
        .auto-style7 {
            width: 175px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" BackColor="#339933" CssClass="auto-style2" Height="501px" Width="486px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" CssClass="auto-style6" Height="124px" ImageUrl="~/images/imgbin-computer-icons-avatar-user-login-avatar-man-wearing-blue-shirt-illustration-mJrXLG07YnZUc2bH5pGfFKUhX.jpg" Width="164px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Profile"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style7">Name</td>
                        <td>
                            <asp:Label ID="nlabel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Address</td>
                        <td>
                            <asp:Label ID="alabel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">City</td>
                        <td>
                            <asp:Label ID="clabel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">State</td>
                        <td>
                            <asp:Label ID="slabel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Gender</td>
                        <td>
                            <asp:Label ID="glabel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Contact Number</td>
                        <td>
                            <asp:Label ID="cnlabel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Email</td>
                        <td>
                            <asp:Label ID="elabel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Username</td>
                        <td>
                            <asp:Label ID="ulabel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;
            </asp:Panel>
        </div>
    </form>
</body>
</html>
