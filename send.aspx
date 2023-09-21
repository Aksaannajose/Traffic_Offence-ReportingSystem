<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="send.aspx.cs" Inherits="Traffic_offence_reporting_system.send" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 525px;
        }
        .auto-style2 {
            margin-left: 71px;
            margin-top: 78px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" Height="520px">
                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style2" Height="257px" Width="696px" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="date" HeaderText="Date" />
                        <asp:BoundField DataField="to_id" HeaderText="To" />
                        <asp:BoundField DataField="content" HeaderText="Content" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
