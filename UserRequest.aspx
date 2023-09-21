<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRequest.aspx.cs" Inherits="Traffic_offence_reporting_system.UserRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 505px;
        }
        .auto-style2 {
            margin-left: 201px;
        }
        .auto-style3 {
            width: 93%;
            margin-left: 17px;
        }
        .auto-style4 {
            width: 166px;
        }
        .auto-style5 {
            width: 166px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" BackColor="#009933" CssClass="auto-style2" Height="485px" Width="427px">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Request"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;<table class="auto-style3">
                    <tr>
                        <td class="auto-style4">Current Problem<br /> </td>
                        <td>
                            <asp:TextBox ID="problem" runat="server" TextMode="MultiLine" Width="213px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Ideas and Solution<br /> </td>
                        <td>
                            <asp:TextBox ID="solution" runat="server" TextMode="MultiLine" Width="212px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">City<br /> </td>
                        <td>
                            <asp:TextBox ID="rcity" runat="server" Height="29px" Width="210px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Near Police Station<br /> </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="rstation" runat="server" Height="27px" Width="212px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;</asp:Panel>
        </div>
    </form>
</body>
</html>
