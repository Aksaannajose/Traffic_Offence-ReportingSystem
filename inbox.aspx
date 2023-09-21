<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inbox.aspx.cs" Inherits="Traffic_offence_reporting_system.inbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 526px;
        }
        .auto-style2 {
            margin-left: 23px;
            margin-top: 20px;
        }
        .auto-style3 {
            margin-left: 61px;
            margin-top: 75px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" Height="475px" Width="779px">
                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" Height="232px" Width="500px" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="date" HeaderText="Date" />
                        <asp:BoundField DataField="from_id" HeaderText="From" />
                        <asp:BoundField DataField="content" HeaderText="Content" />
                        <asp:CommandField HeaderText="READ" SelectText="READ" ShowSelectButton="True" ButtonType="Button" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
