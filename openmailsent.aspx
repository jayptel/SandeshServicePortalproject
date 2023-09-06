<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="openmailsent.aspx.cs" Inherits="openmailsent" Title="Open Mail Sent" %>

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
            font-size: medium;
            font-weight: bold;
            text-align: left;
            color: Teal;
            font-family: Calibri;
            width: 124px;
        }
        .auto-style10 {
            font-size: medium;
            font-weight: bold;
            text-align: left;
            font-family: Calibri;
            width: 124px;
        }
        .auto-style12 {
            font-size: medium;
            font-weight: bold;
            text-align: left;
            color: #333333;
            font-family: Calibri;
        }
        .auto-style13 {
            font-size: medium;
            font-weight: bold;
            text-align: right;
            color: #333333;
            font-family: Calibri;
        }
        .auto-style14 {
            background-color: #FFFFFF;
        }
        .auto-style15 {
            background-color: #FFFFFF;
            font-size: medium;
        }
        .auto-style16 {
            height: 45px;
            font-size: x-large;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style11" 
    style="height: 261px; width: 100%;">
        <tr>
            <td style="font-weight: bold; font-family: calibri; text-align: center;" 
                                    class="auto-style16" valign="top">
                <strong><em>Read Message</em></strong></td>
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
                                    <td class="auto-style10"><strong>
                                                                    Message From :</strong></td>
                                    <td>
                                        <asp:Label ID="lblfrom" runat="server" CssClass="auto-style13" style="font-size: small"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:Label ID="lbldate" runat="server" CssClass="auto-style13" style="font-size: small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style12">
                                                                    Subject&nbsp; :                                     
                                    </td>
                                    <td>
                                        <asp:Label ID="lblsubject" runat="server" CssClass="auto-style13"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">
                                        <strong>Message :
                                    </strong>
                                    </td>
                                    <td>
                                        <em>
                                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFFF" Height="150px" 
                                            ReadOnly="True" TextMode="MultiLine" Width="475px" CssClass="auto-style15" 
                                        ></asp:TextBox>
                                        </em>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">
                                        <strong>Attachment :
                                    </strong>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:LinkButton ID="lnkatt1" runat="server" CssClass="auto-style13" onclick="lnkatt1_Click" 
                                            ></asp:LinkButton>
&nbsp;<asp:LinkButton ID="lnkatt2" runat="server" CssClass="auto-style13" onclick="lnkatt2_Click" ></asp:LinkButton>
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
&nbsp;<asp:Button ID="Button2" style="margin-left:20px;" runat="server" class="auto-style5" Text="Back to Sent Box" 
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

