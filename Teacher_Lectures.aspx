<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMaster.Master" AutoEventWireup="true" CodeBehind="Teacher_Lectures.aspx.cs" Inherits="Attendance_System_Online.Teacher_Lectures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div style="background-image:url('Images/background.jpg'); width:1200px">
            <table align="center" style="width:1200px; height:366px">
                <tr style="width:1200px">
                    <td>
                        <b>Course:</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="115px" AutoPostBack="true"></asp:DropDownList>
                    </td>
                    <td> &nbsp;</td>

                    <td>
                        <b>Year:</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" Height="40px" Width="125px">
                            <asp:ListItem>Select Year</asp:ListItem>
                            <asp:ListItem>First Year</asp:ListItem>
                            <asp:ListItem>Second Year</asp:ListItem>
                            <asp:ListItem>Third Year</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>

                    <td>
                        <b>Semester:</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="true" Width="125px" Height="40px" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                            <asp:ListItem>Select Semester</asp:ListItem>
                            <asp:ListItem>Sem I</asp:ListItem>
                            <asp:ListItem>Sem II</asp:ListItem>
                            <asp:ListItem>Sem III</asp:ListItem>
                            <asp:ListItem>Sem IV</asp:ListItem>
                            <asp:ListItem>Sem V</asp:ListItem>
                            <asp:ListItem>Sem VI</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>

                    <td>
                        <b>Subject:</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" Width="215px" Height="40px"></asp:DropDownList>
                    </td>
                </tr>
                
                <tr style="width:1200px">
                    <td colspan="12" align="center">
                        <b>Date:</b>
                        <asp:TextBox ID="TextBox1" runat="server"  TextMode="Date" placeholder="Select Date"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="11" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Select" Font-Bold="true" Height="40px"
                            width="92px" OnClick="Button1_Click" />
                    </td>
                </tr>

                <tr>
                    <td colspan="11" align="center">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td colspan="11" align="center">
                        <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Such Record Found" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
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
        </div>
    </center>
</asp:Content>
