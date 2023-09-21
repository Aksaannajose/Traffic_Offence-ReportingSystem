<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrafficRules.aspx.cs" Inherits="Traffic_offence_reporting_system.TrafficRules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 526px;
        }
        .auto-style2 {
            margin-left: 13px;
            margin-top: 23px;
        }
        .auto-style3 {
            margin-left: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" Height="496px" Width="793px">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" DataKeyNames="Ruleid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="229px" Width="523px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Ruleid" HeaderText="Sl.no" />
                        <asp:BoundField DataField="Rules" HeaderText="Rules" />
                        <asp:CommandField />
                        <asp:CommandField ButtonType="Button" HeaderText="Action" ShowEditButton="True" />
                        <asp:CommandField />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton2"  runat ="server" OnClick="LinkButton2_Click">Delete</asp:LinkButton>
                            </EditItemTemplate>
                          
                            
                            <ItemTemplate>
                                <asp:Button ID="Button1" OnClientClick="return confirm('Are you sure to delete?');" runat="server" Text="Delete" />
                         
                           </ItemTemplate>
                       
                            
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataTemplate>
                      
                        
                        <asp:LinkButton ID="LinkButton1" runat="server">Delete

                        </asp:LinkButton>
                 
                         
                    
                    </EmptyDataTemplate>
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
