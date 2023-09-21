<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReport.aspx.cs" Inherits="Traffic_offence_reporting_system.UserReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 506px;
        }
        .auto-style2 {
            margin-left: 170px;
            margin-top: 10px;
        }
        .auto-style3 {
            width: 94%;
            margin-left: 13px;
            height: 407px;
        }
        .auto-style5 {
            width: 208px;
        }
        .auto-style6 {
            margin-left: 63px;
            margin-top: 6px;
        }
        .auto-style7 {
            width: 208px;
            height: 13px;
        }
        .auto-style8 {
            height: 13px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" BackColor="#009933" CssClass="auto-style2" Height="481px" Width="453px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="auto-style6" ForeColor="#006600" Height="23px" Text="Add" Width="54px" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Report"></asp:Label>
                <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">Reported Date</td>
                        <td>
                            <asp:TextBox ID="date" runat="server" Width="207px" TextMode="date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Complaint<br /> </td>
                        <td>
                            <asp:TextBox ID="complaint" runat="server" TextMode="MultiLine" Width="212px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Offence Category</td>
                        <td>
                            <asp:DropDownList ID="offencecategory" runat="server" Height="54px" Width="216px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Vehicle Model</td>
                        <td>
                            <asp:TextBox ID="vmodel" runat="server" Width="208px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Number Plate</td>
                        <td>
                            <asp:TextBox ID="nplate" runat="server" Width="209px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Vehicle Type</td>
                        <td>
                            <asp:DropDownList ID="vehicletype" runat="server" Height="16px" Width="215px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Upload Image</td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Location Details</td>
                        <td>
                            <asp:TextBox ID="location" runat="server" TextMode="MultiLine" Width="208px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Location Image</td>
                        <td>
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7"></td>
                        <td class="auto-style8">
                            <asp:Button ID="Button1" runat="server" Text="Submitt" OnClick="Button1_Click" Height="35px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
