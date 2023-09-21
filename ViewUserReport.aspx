<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUserReport.aspx.cs" Inherits="Traffic_offence_reporting_system.ViewUserResponse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 503px;
        }
        .auto-style2 {
            margin-left: 190px;
            margin-top: 0px;
        }
        .auto-style3 {
            width: 77%;
            height: 396px;
            margin-left: 59px;
            margin-top: 0px;
        }
        .auto-style4 {
            width: 194px;
        }
        .auto-style5 {
            width: 194px;
            height: 78px;
        }
        .auto-style6 {
            height: 78px;
        }
        .auto-style7 {
            width: 194px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <asp:Panel ID="Panel1" runat="server" BackColor="#0033CC" CssClass="auto-style2" Height="478px" Width="459px">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="View Report" Font-Bold="True" Font-Italic="True" ForeColor="#990000"></asp:Label>
                <br />
                <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style7">Reported Date<br /> </td>
                        <td class="auto-style8">
                            <asp:Label ID="date" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Complaint<br /> </td>
                        <td class="auto-style8">
                            <asp:Label ID="complaint" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Offence Category<br /> </td>
                        <td>
                            <asp:Label ID="offencecategory" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Vehicle Model<br /> </td>
                        <td>
                            <asp:Label ID="vmodel" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Number Plate<br /> </td>
                        <td>
                            <asp:Label ID="nplate" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Vehicle Type<br /> </td>
                        <td>
                            <asp:Label ID="vtype" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Upload Image</td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="50px" Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Location Details 
                            <br />
                        </td>
                        <td>
                            <asp:Label ID="location" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Location Image</td>
                        <td class="auto-style6">
                            <asp:Image ID="Image2" runat="server" Height="50px" Width="50px" />
                        </td>
                    </tr>
                </table>
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
