<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="Traffic_offence_reporting_system.download" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 526px;
        }
        .auto-style2 {
            margin-left: 19px;
            margin-top: 15px;
        }
        .auto-style3 {
            margin-left: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">



  


   

  

            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" Height="488px" Width="802px">
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" Height="223px" Width="665px">
                    <Columns>
                        <asp:BoundField DataField="PaymentID" HeaderText="Payment ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="CardNumber" HeaderText="Card Number" />
                        <asp:BoundField DataField="ExpirationDate" HeaderText="Expiration Date" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                    </Columns>
                </asp:GridView>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </asp:Panel>



  


   

  

        </div>
    </form>
</body>
</html>
