<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alert.aspx.cs" Inherits="Traffic_offence_reporting_system.Alert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <title></title>


    <style type="text/css">
        .auto-style1 {
            height: 460px;
            width: 766px;
            margin-left: 22px;
            margin-top: 26px;
        }
        .auto-style2 {
            margin-left: 25px;
        }
    </style>
</head>


<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" Height="417px" BackColor="Red" CssClass="auto-style2" Width="693px">
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn1" Text="Warning" OnClick="Button1" runat="server"   />
                &nbsp;&nbsp;
                <asp:Button ID="btn2" Text="Errorr" OnClick="Button2" runat="server"  />
                &nbsp;
                <asp:Button ID="btn3" Text="Info" OnClick="Button3" runat="server" />
           
                
            
            </asp:Panel>
        </div>
    </form>
</body>
</html>
