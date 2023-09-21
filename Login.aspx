<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Traffic_offence_reporting_system.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 505px;
        }
      
     body {
         background-image:url('images/Road.jpeg');
         background-size:cover;
     }
    /* div1{
         display:flex;
     }
*/




        .auto-style2 {
            margin-left: 227px;
            margin-top: 39px;
        }
        .auto-style3 {
            width: 82%;
            height: 181px;
            margin-left: 34px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 212px;
        }
        .auto-style6 {
            width: 212px;
        }
        .auto-style7 {
            width: 212px;
            height: 49px;
        }
        .auto-style8 {
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" BackColor="#006600" CssClass="auto-style2" Height="415px" Width="364px">
                &nbsp;<br /> &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Back</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Login"></asp:Label>
                <br />
                <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">Username</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="uname" runat="server" Width="155px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Password</td>
                        <td>
                            <asp:TextBox ID="pswd" runat="server" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7"></td>
                        <td class="auto-style8">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                            <br />
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Not Registered? Register</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Forgot Password</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
