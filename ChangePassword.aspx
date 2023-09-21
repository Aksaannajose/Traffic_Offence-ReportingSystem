<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Traffic_offence_reporting_system.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 530px;
        }
        .auto-style2 {
            margin-left: 18px;
        }
        .auto-style3 {
            width: 75%;
            height: 260px;
            margin-left: 79px;
            margin-top: 107px;
        }
        .auto-style4 {
            width: 279px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" Height="521px" Width="785px">
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style4">New Password</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="177px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Confirm Password</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="178px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
