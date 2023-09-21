<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUserRep.aspx.cs" Inherits="Traffic_offence_reporting_system.ViewUserRep" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 531px;
        }
        .auto-style2 {
            margin-top: 10px;
        }
        .auto-style3 {
            margin-left: 85px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" Height="462px" Width="966px">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Complaint" Font-Bold="True" Font-Italic="True" ForeColor="#990000"></asp:Label>
                <br />
                <br />
                &nbsp;<asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Height="185px" Width="823px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Reported_date" HeaderText="Reported date" />
                        <asp:BoundField DataField="Complaint" HeaderText="Complaint" />
                        <asp:BoundField DataField="Offence_category" HeaderText="Offence Category" />
                        <asp:BoundField DataField="Vehicle_Model" HeaderText="Vehicle Model" />
                        <asp:BoundField DataField="Number_Plate" HeaderText="Number Plate" />
                        <asp:BoundField DataField="Vehicle_Type" HeaderText="Vehicle Type" />
                        <asp:BoundField DataField="Location_Details" HeaderText="Location Details" />
                        <asp:CommandField />
                        <asp:CommandField ButtonType="Button" HeaderText="Action" ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="IMAGE UPLOAD">
                            <EditItemTemplate>
                                <asp:Image ID="Image3" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Upload_image")%>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Location image">
                            <EditItemTemplate>
                                <asp:Image ID="Image2" runat="server" ImageUrl="%Eval(&quot;Location_image&quot;)" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("Location_image") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
