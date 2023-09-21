<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="Traffic_offence_reporting_system.HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    

    
    <title>TraffoSafe </title>
    <style>        
        body {
            background-image:url('images/Road.jpeg');
            background-size:cover;
        }
        div1{
            display:flex;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="div1">
               
            
             <table  border="1" width="5%" align="center" cellpadding="5" cellspacing="0" style="background-color:red;">

                 <tr>
                     <td colspan="4" style="text-align:center;background-color:red; font-size:80px; font-weight:bold; color:black;">  </td> 


                 </tr>
             </table>
     
             <asp:Button class="btn btn-info" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click1" />
             <asp:Button class="btn btn-info" ID="Button2" runat="server" Text="Services" />
             <asp:Button class="btn btn-info" ID="Button3" runat="server" Text="Status" />
             <asp:Button class="btn btn-info" ID="Button4" runat="server" Text="Payment" Width="68px" OnClick="Button4_Click" />
     
             <asp:Button ID="Button5" runat="server" Text="Logout" Width="68px" />
     
     
           <%-- <button class="btn btn-primary">Login</button>
            <button class="btn btn-info">Services</button>
            <button class="btn btn-info">Status</button>
            <button class="btn btn-sucess">Payment</button>
            <button class="btn btn-info">Logout</button>--%>

        </div>

    </form>
</body>
</html>
