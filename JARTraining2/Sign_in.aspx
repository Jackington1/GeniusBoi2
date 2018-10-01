<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="JARTraining2.WebForm1" %>

<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
    <style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        }  
        .auto-style2 {
            width: 392px;
        }
        .auto-style3 {
            width: 148px;
        }
    </style>  
</head>  
<body>  
    <form id="form1" runat="server">  
    <div>  
      
        <table class="auto-style1">  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: top">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Log In "></asp:Label>  
                </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: center" class="auto-style3">  
                    <asp:Label ID="lblUserN" runat="server" Font-Size="X-Large" Text="UserId :"></asp:Label>  
                </td>  
                <td style="text-align: center" class="auto-style2">  
                    <asp:TextBox ID="txtUserN" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: center" class="auto-style3">  
                    <asp:Label ID="lblPassword" runat="server" Font-Size="X-Large" Text="Password :"></asp:Label>  
                </td>  
                <td style="text-align: center" class="auto-style2">  
                    <asp:TextBox ID="txtPassword" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td class="auto-style3"> </td>  
                <td class="auto-style2"> 
                    <asp:Label ID="lblInvalid" runat="server" Font-Bold="True" ForeColor="Red" Text="Invalid Username/Password" Visible="false"></asp:Label>
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td class="auto-style3"> </td>  
                <td style="text-align: center" class="auto-style2">  
                    <asp:Button ID="btnLogin" runat="server" BorderStyle="None" Font-Size="X-Large" OnClick="btnSubmit_Click" Text="Log In" />  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td class="auto-style3"> </td>  
                <td class="auto-style2">  
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAR_trainingConnectionString %>" SelectCommand="SELECT [User_Name], [Password] FROM [user_id_t]"></asp:SqlDataSource>
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
        </table>  
      
    </div>  
    </form>  
</body>  
</html>  
