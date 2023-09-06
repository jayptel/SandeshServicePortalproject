<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="mailopen.aspx.cs" Inherits="mailopen" Title="Mail Open" %>

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
        .auto-style9 {
            height: 45px;
            font-size: x-large;
        }
        .auto-style10 {
            height: 45px;
            font-size: x-large;
            color: #333333;
            background-color: #FFFFFF;
        }
        .auto-style11 {
            font-size: medium;
            font-weight: bold;
            text-align: left;
            font-family: Calibri;
            width: 124px;
        }
        .auto-style12 {
            font-size: medium;
            font-weight: bold;
            color: #333333;
            text-align: right;
            font-family: Calibri;
        }
        .auto-style13 {
            background-color: #FFFFFF;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style11" 
    style="height: 261px; width: 100%;">
        <tr>
            <td style="font-weight: bold; font-family: calibri; text-align: center;" 
                                    class="auto-style10" valign="top">
                <em>Read Message</em></td>
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
                                                                    Message From :</td>
                                                                <td>
                                                                    <asp:Label ID="lblfrom" runat="server" CssClass="auto-style12"></asp:Label>
                                                                    <span class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style14">&nbsp;&nbsp;
                                                                    <asp:Label ID="lbldate" runat="server" CssClass="auto-style12"></asp:Label>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style3">
                                                                    <strong>Subject&nbsp; :                                     </strong>                                     </td>
                                    <td class="auto-style14">
                                        <asp:Label ID="lblsubject" runat="server" CssClass="auto-style12"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <strong>Message :
                                    </strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFFF" Height="150px" 
                                            ReadOnly="True" TextMode="MultiLine" Width="475px" 
                                            ontextchanged="TextBox1_TextChanged" CssClass="auto-style13"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <strong>Attachment :
                                    </strong>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:LinkButton ID="lnkatt1" target="_blank" runat="server" CssClass="auto-style12" 
                                            onclick="lnkatt1_Click"></asp:LinkButton>
&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lnkatt2" target="_blank" runat="server" CssClass="auto-style12" onclick="lnkatt2_Click"></asp:LinkButton>
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
                <asp:Button ID="Button1" style="margin-left:20px;" runat="server" class="auto-style5" Text="Reply" 
                                                                     onclick="Button1_Click" Height="28px" Width="90px" 
                                                                    />
&nbsp;<asp:Button ID="Button2" style="margin-left:20px;" runat="server" class="auto-style5" Text="Back to Inbox" 
                                                                     onclick="Button2_Click" Height="28px" Width="136px" 
                                                                    />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                                &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                &nbsp;&nbsp;
                                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

