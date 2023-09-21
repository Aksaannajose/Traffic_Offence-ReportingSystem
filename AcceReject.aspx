<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcceReject.aspx.cs" Inherits="Traffic_offence_reporting_system.AcceReject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 531px;
            width: 809px;
            margin-left: 4px;
        }
        .auto-style2 {
            margin-left: 12px;
        }
        .auto-style3 {
            margin-left: 118px;
            margin-top: 81px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" Height="536px" Width="787px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" Height="176px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="598px">
                    <Columns>
                        <asp:BoundField DataField="Requestid" HeaderText="Sl no" />
                        <asp:BoundField DataField="Current_problem" HeaderText="Current Problem" />
                        <asp:BoundField DataField="Ideas_solution" HeaderText="Ideas and solutions" />
                        <asp:BoundField DataField="City" HeaderText="City" />
                        <asp:BoundField DataField="Near_station" HeaderText="Near station" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
