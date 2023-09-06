<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="calender.aspx.cs" Inherits="calender" Title="Calender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .auto-style9 {
            background-color: #FFFFFF;
        }
        .auto-style10 {
            font-size: x-large;
            color: #333333;
            background-color: #FFFFFF;
        }
       
        .auto-style11 {
            height: 330px;
            width: 99%;
        }
       
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="auto-style11">
        <tr>
            <td 
                style="font-weight: bold; font-family: calibri; text-align: center;" class="auto-style10">
                <em>Calender<br />
                </em>

            </td>
        </tr>
        <tr>
            <td>
                        <asp:Calendar ID="Calendar1" runat="server" 
    Height="352px" Width="783px" BackColor="White" BorderColor="Black" BorderStyle="Solid" 
                            CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" 
                            NextPrevFormat="ShortMonth">
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                Height="8pt" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                                Font-Size="12pt" ForeColor="White" Height="12pt" />
</asp:Calendar>

            </td>
        </tr>
    </table>

</asp:Content>


