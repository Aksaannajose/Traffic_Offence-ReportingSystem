<style type="text/css">      
     body {
         background-image:url('images/Road.jpeg');
         background-size:cover;
     }
     div1{
         display:flex;
     }
     





    .auto-style1 {
        height: 458px;
        width: 452px;
        margin-top: 36px;
        margin-left: 193px;
    }
    .auto-style2 {
        width: 100%;
        height: 273px;
    }
    .auto-style3 {
        width: 166px;
    }
    .auto-style4 {
        margin-left: 245px;
        margin-top: 23px;
        margin-bottom: 0px;
    }
    .auto-style5 {
        width: 166px;
        height: 25px;
    }
    .auto-style6 {
        height: 25px;
    }
    .auto-style7 {
        width: 100%;
        height: 21px;
    }
    .auto-style8 {
        width: 165px;
        height: 26px;
    }
    .auto-style9 {
        height: 26px;
    }
    .auto-style10 {
        width: 166px;
        height: 30px;
    }
    .auto-style11 {
        height: 30px;
    }
    .auto-style12 {
        margin-left: 1px;
    }
</style>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Traffic_offence_reporting_system.UserRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Register Here!" Font-Bold="True" Font-Italic="True"></asp:Label>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style10">Name</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Address</td>
                    <td>
                        <asp:TextBox ID="address" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">City</td>
                    <td>
                        <asp:TextBox ID="city" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">State</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="125px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Contact Number</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="contact" runat="server"></asp:TextBox>
                    </td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </tr>
                <tr>
                    <td class="auto-style3">Gender</td>
                    <td>
                        <asp:RadioButton ID="Female" runat="server" EnableViewState="False" Text="Female" />
                    &nbsp;
                        <asp:RadioButton ID="Male" runat="server" Text="Male" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email</td>
                    <td>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Username</td>
                    <td>
                        <asp:TextBox ID="uname" runat="server"></asp:TextBox>
                    &nbsp;
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Text="Verify" Width="35px" Font-Bold="False" OnClick="Button3_Click" />
&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        Password</td>
                    <td>
                        <asp:TextBox ID="pswd" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style8">Image</td>
                    <td class="auto-style9">
                        <asp:FileUpload ID="FileUp1" runat="server" Width="123px" />
                    </td>
                </tr>
            </table>
            <br />
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Height="30px" Text="Register" Width="106px" OnClick="Button2_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Already Registered? Login</asp:LinkButton>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Forgot Password</asp:LinkButton>
        </div>
    </form>
</body>
</html>







































































































