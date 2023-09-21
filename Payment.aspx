<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Traffic_offence_reporting_system.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

      
    <h2>Payment Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Download" />
            </h2>
    <label for="txtName">Name:</label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
    
    <label for="txtCardNumber">Card Number:</label>
    <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox><br />
    
    <label for="txtExpirationDate">Expiration Date:</label>
    <asp:TextBox ID="txtExpirationDate" runat="server"></asp:TextBox><br />
    
    <label for="txtAmount">Amount:</label>
    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox><br />
    
    <asp:Button ID="btnPay" runat="server" Text="Make Payment" OnClick="btnPay_Click" />







        </div>
    </form>
</body>
</html>
