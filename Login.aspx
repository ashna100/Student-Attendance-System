<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Attendance_System_Online.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" height: 450px;">
        <table style="width: 565px; height: 421px; background-color:#00FFFF; margin:0 auto">

               
            <tr>
                <td colspan="2" align="center">
                    &nbsp;<img id="login1" 
                        src="Images/login1.jpg" alt="" runat="server" 
                        style="height: 190px; width: 199px"/></td>
                
            </tr>
            <tr>
                <td colspan="2" align="center" >
                    <h2>Teacher & Admin Login </h2>
                </td>
            </tr>
            <tr>
                <td align="center" style="width:50%">
                    <b>Email Id/User ID:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" Height="29px" 
                        Width="166px" Font-Bold="True" placeholder="Enter Email_Id/User ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  Visible="false"
                        ControlToValidate="TextBox1" ErrorMessage="Enter Email-ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" style="width:50%">
                    <b>Password:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Height="29px" 
                        Width="166px" TextMode="Password" Font-Bold="True" placeholder="Enter Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Visible="false" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" >
                    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
                        Height="46px" Width="201px" onclick="Button1_Click" BackColor="#3399FF" /><hr />
                </td>
            </tr>
            
             <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>

            <tr>
                <td colspan="2" align="center">
                   <b> <asp:Label ID="Label2" runat="server" Text=" Student Login with Google" Font-Size="X-Large"> </asp:Label>
                    <br />
                    </b><br />
                    <asp:ImageButton ImageUrl="Images/Signin%20with%20google%20(2).jpg" runat="server" OnClick="StudentLogin_Click"/>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <b>OR</b>
                </td>
            </tr>
            
            <tr>
                <td align="center" style="width:50%">
                    <b>Email/User Name:</b>

                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" Height="29px" 
                        Width="166px" Font-Bold="True" placeholder="Enter Email_Id/User ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  Visible="false"
                        ControlToValidate="TextBox3" ErrorMessage="Enter Email-ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
                        <tr>
                <td align="center" style="width:50%">
                    <b>Password:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" Height="29px" 
                        Width="166px" TextMode="Password" Font-Bold="True" placeholder="Enter Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Visible="false" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td colspan="2" align="center" >
                    <asp:Button ID="Button2" runat="server" Text="Login" Font-Bold="True" 
                        Height="46px" Width="201px" onClick="Button2_Click" BackColor="#3399FF" /><hr />
                </td>
            </tr>

            
            
        </table>
    </div>
    </form>
</body>
</html>
