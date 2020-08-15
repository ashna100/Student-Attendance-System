<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Student_Attendance.aspx.cs" Inherits="Attendance_System_Online.Student_Attendance" %>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 70px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
<div style="background-image: url('Images/background1.jpg'); width: 1200px">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <center>
        <table align="center" style="width: 386px; height: 366px">
            <tr>
                <td>
                    <b> From Date: </b>
                </td>
                <td >
                    <asp:TextBox ID="textbox1" runat="server" TextMode="Date" CssClass="auto-style2"></asp:TextBox>
                    <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="textbox1" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>--%>
                   
                </td>
                <td></td>
                <td class="auto-style1">
                    <b>To Date:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td colspan="2">
                 <asp:Label ID="label1" runat="server" ForeColor="Red"  Font-Bold="true" Font-Size="XX-Large" BackColor="Transparent" Width="213px" Height="25px"></asp:Label>
                    </td>
            </tr>
              <tr>
                <td align="center" colspan="2" >
                    <asp:Button ID="button1" Text="Select" runat="server" Height="33px" Width="147px" OnClick="button1_Click" />
                </td>
            </tr>
            <tr align="center" colspan="12">
                <asp:GridView ID="gridview1" runat="server"   BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="No Record Found">
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
            </tr>
            
            </table>
        </center>
</asp:Content>
