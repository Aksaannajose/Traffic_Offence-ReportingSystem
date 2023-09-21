<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="Traffic_offence_reporting_system.SendEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

               <table border="1" width="70%" align="center" cellpadding="5" cellspacing="0" style="background-color:pink;">
                <tr>
                    <td colspan="4" style="text-align:center; font-size:22px; font-weight:bold; color:purple;"> Application-send email message </td>

                </tr>
                   <tr>
                       <td> From: </td>
                       <td>
                           <asp:TextBox ID="tFrom" runat="server" Text="aksaannajose@gmail.com" Height="25px" width="250px"> </asp:TextBox></td>
                  </tr>

                    <tr>
                     <td> From Password: </td>
                     <td>
                     <asp:TextBox ID="tPassword" runat="server" TextMode="Password" Height="25px" width="250px"> </asp:TextBox></td>
                     </tr>


                   <tr>

                       <td>SMTP:</td>
                       <td>
                           <asp:TextBox ID="tsmtp" runat="server" Text="smtp@gmail.com" Height="25px" width="250px" ></asp:TextBox></td>
                   </tr>  
                   <tr>
                        <td>Port:</td>
                         <td>
                           <asp:TextBox ID="tport" runat="server" Text="587" Height="25px" width="250px" ></asp:TextBox></td>
                  </tr>
                   <tr>
                       <td>To:</td>
                       <td>
                           <asp:TextBox ID="tTo" runat="server" Text="aksaannajose2022a@mca.ajce.in" Height="25px" width="250px" ></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>CC:</td>
                       <td>
                       <asp:TextBox ID="tCC" runat="server" Text="587" Height="25px" width="250px" ></asp:TextBox></td>
                    </tr>
                   <tr>

                       <td>Subject:</td>
                       <td>
                       <asp:TextBox ID="tSubject" runat="server" Text="Hello world" Height="25px" width="250px" ></asp:TextBox></td>
                   </tr>
                   <tr>

                      <td>Message:</td>
                      <td>
                      <asp:TextBox ID="tMessage" runat="server" Text="Warning Message from Traffic Police.." TextMode="MultiLine" Height="100px" width="250px" ></asp:TextBox></td>


                   </tr>
                   <tr>
                       <td colspan="4" style="text-align:center;font-size:18px;font-weight:bold;color:purple;">
                       <asp:Label ID ="lMsg" runat="server" Text="Label"></asp:Label></td>

                   </tr>

                     <tr>
                       <td colspan="4" style="text-align:center;">
                       <asp:Button ID ="btnSend" runat="server" Text="Send" Width="40%" Height="30px" OnClick="btnSend_Click"/></td>
                     </tr>
  

       </table>
        </div>
    </form>
</body>
</html>
