<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="Reply.aspx.cs" Inherits="reply123" Title="Reply Mail" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style13
    {
        height: 45px;
    }
        .style14
        {
            width: 620px;
        }
        .style16
        {
            font-size: medium;
            font-weight: bold;
            text-align: right;
            color: Teal;
            font-family: Calibri;
            width: 124px;
        }
        .style17
        {
            font-family: Calibri;
            font-weight: bold;
            color: #FF00FF;
        }
        .auto-style9 {
            height: 45px;
            font-size: x-large;
        }
        .auto-style11 {
            height: 45px;
            font-size: x-large;
            color: #333333;
            background-color: #FFFFFF;
        }
        .auto-style12 {
            font-size: medium;
            font-weight: bold;
            text-align: right;
            color: #333333;
            font-family: Calibri;
        }
        .auto-style13 {
            font-size: medium;
            font-weight: bold;
            text-align: left;
            font-family: Calibri;
            width: 124px;
        }
        .auto-style14 {
            text-align: justify;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style11" 
    style="height: 261px; width: 100%;">
        <tr>
            <td style="font-weight: bold; font-family: calibri; text-align: center;" 
                                    class="auto-style11" valign="top">
                <em>Reply Message</em></td>
        </tr>
        <tr>
            <td valign="top">
                <table class="style11">
                    <tr>
                        <td>
                            &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table class="style14">
                                                            <tr>
                                                                <td class="auto-style13">
                                                                    <strong>Message To :</strong>
                                                                    </td>
                                                                <td>
                                                                    <asp:Label ID="lblfrom" runat="server" CssClass="lbl"></asp:Label>
                                                                    <span class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style3">
                                                                    <strong>Subject&nbsp; :                                     </strong>                                     </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFFFF" Width="470px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <strong>Message :
                                    </strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFFF" Height="150px" 
                                            TextMode="MultiLine" Width="475px" CssClass="auto-style3"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbll">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="lbll">
                                        &nbsp;</td>
                                    <td>
                <asp:Button ID="Button1" style="margin-left:20px;" runat="server" class="auto-style5" Text="Send" 
                                                                     onclick="Button1_Click" Height="28px" Width="90px" 
                                                                    />
&nbsp;<asp:Button ID="Button2" style="margin-left:30px;" runat="server" class="auto-style5" Text="Back to Inbox" 
                                                                     onclick="Button2_Click" Height="28px" Width="120px" 
                                                                    />
                                    &nbsp;&nbsp;&nbsp; <asp:Button ID="btnsentbox" style="margin-left:30px;" runat="server" class="auto-style5" Text="Back to Sent Box" 
                                                                     onclick="btnsentbox_Click" Height="28px" Width="120px" 
                                                                    />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="pagination-centered">
                                                <span class="auto-style14">&nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </span>
                                                
                                                <em>
                                                
                                                <asp:Label ID="lblmsg" runat="server" CssClass="auto-style12" Font-Bold="False" ForeColor="green"></asp:Label>
                                                    </em>
                                                    <asp:Label ID="lblreply" runat="server" CssClass="auto-style12"></asp:Label>
                                               
                                                    
                                                   
                                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

