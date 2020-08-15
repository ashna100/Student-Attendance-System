<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="Attendance_System_Online.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<div style="background-image: url('Images/background1.jpg'); width: 1200px">
    <table align="center" style="height: 340px; width: 392px">
        <tr>
            <td colspan="2" align="center">
                <h2>
                    Add Teacher</h2>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <b>Fist Name: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="197px" Height="41px" 
                    CausesValidation="True" placeholder="Teacher's First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="First Name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Name should be in Characters" 
                        ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Last Name: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="197px" Height="41px" 
                    CausesValidation="True" placeholder="Teacher's Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Last Name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Name should be in Characters" 
                        ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
             <b>Email Id: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
               <asp:TextBox ID="TextBox3" runat="server" Width="197px" Height="41px" 
                    TextMode="Email" placeholder="Teacher Email_Id"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Email ID is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
               </td>  
        </tr>
        <tr>
            <td>
                <b>Password: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="197px" Height="41px" 
                    TextMode="Password" placeholder="Teacher Password"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Password is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" 
                    Height="47px" Width="96px" Font-Size="Medium" OnClick="Button1_Click" /></td>
            
        </tr> 

        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label></td>
            
        </tr>
        <tr>
        <td colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </div>
</center>

</asp:Content>
