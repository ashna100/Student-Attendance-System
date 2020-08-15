<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMaster.Master" AutoEventWireup="true" CodeBehind="Mark_Attendance.aspx.cs" Inherits="Attendance_System_Online.Mark_Attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<div style="background-image: url('Images/background3.jpng'); width: 1200px">
    <center>
        <table align="center" style="width: 1200px; height: 366px">
            <tr style="width: 1200px;">
                <td>
                    <b>Course: </b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="115px" AutoPostBack="true">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    <b>Year: </b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="40px" Width="125px" AutoPostBack="true">
                        <asp:ListItem>Select Year</asp:ListItem>
                        <asp:ListItem>First Year</asp:ListItem>
                        <asp:ListItem>Second Year</asp:ListItem>
                        <asp:ListItem>Third Year</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <b>Semester: </b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="40px" Width="125px"
                        AutoPostBack="true" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                        <asp:ListItem>Select Semester</asp:ListItem>
                        <asp:ListItem>Sem I</asp:ListItem>
                        <asp:ListItem>Sem II</asp:ListItem>
                        <asp:ListItem>Sem III</asp:ListItem>
                        <asp:ListItem>Sem IV</asp:ListItem>
                        <asp:ListItem>Sem V</asp:ListItem>
                        <asp:ListItem>Sem VI</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    <b>Subject: </b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="40px" Width="215px" AutoPostBack="true">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="width: 1200px;">
                <td colspan="10" align="center">
                    <b>Total Lectures:</b>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="true">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Select" Font-Bold="True" Height="40px"
                        Width="92px" OnClick="Button1_Click"  />
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#9900FF"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <asp:GridView ID="GridView1" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="Mark Attendance">
                                <ItemTemplate>
                                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" Text="Present" GroupName="attend" />
                                    &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="attend" Text="Absent" />
                                    &nbsp;
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Label ID="Label1" runat="server" ForeColor="#FF0066" Text="No such records found!!"></asp:Label>
                        </EmptyDataTemplate>
                       </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <asp:Button ID="Button2" runat="server" Text="Mark Attendance" Font-Bold="True" Height="41px"
                        Width="144px" OnClick="Button2_Click" Visible="false"/>
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </center>
    </div>
</center>
</asp:Content>
