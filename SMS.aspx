<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="SMS.aspx.cs" Inherits="SMS" Title="SMS Send" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style13
    {
        height: 45px;
    }
        .style14
        {
            width: 649px;
        }
        .style17
        {
            width: 83px;
        }
        .style16
        {
            font-size: medium;
            font-weight: bold;
            color: #003300;
            text-align: right;
            font-family: Calibri;
            width: 83px;
        }
        .auto-style9 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style10 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style11 {
            font-size: medium;
            font-weight: bold;
            color: #003300;
            text-align: left;
            font-family: Calibri;
            width: 83px;
        }
        .auto-style13 {
            color: #333333;
        }
        .auto-style14 {
            background: #F9FFFE;
            border: 1px solid #008080;
            font-size: medium;
        }
        .auto-style16 {
            background-position: 0% 0%;
            border: 1px solid #008080;
            font-size: medium;
            background-image: none;
            background-repeat: repeat;
            background-attachment: scroll;
        }
        .auto-style17 {
            background-color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style11" 
    height: 261px; width: 80%;">
        <tr>
                <td class="auto-style10">
                    <strong><em>Send SMS To Mobile<br />
                    </em></strong></td>
            </tr>
        <tr>
            <td valign="top">
                <table class="style11">
                    <tr>
                                                <td class="pagination-centered" style="color:#3d3b41" __designer:mapid="6289">
                                                    <em __designer:mapid="628d"> <span class="auto-style13">
                                                <span class="auto-style14"><span class="auto-style2"><span class="auto-style17">Enter your Mobile No in Below text and send Free SMS on Mobile :</span></span></span></span> &nbsp;</em></td>
                                            </tr>
                    
                    <tr>
                        <td>
                                                    <table class="style14" __designer:mapid="96">
                                                        <tr __designer:mapid="97">
                                                            <td __designer:mapid="98">
                                                                &nbsp;</td>
                                                            <td class="style17" __designer:mapid="99">
                                                                &nbsp;</td>
                                                            <td __designer:mapid="9a">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr __designer:mapid="9b">
                                                            <td __designer:mapid="9c">
                                                                &nbsp;</td>
                                                            <td class="auto-style11" __designer:mapid="9d">
                                                                To :</td>
                                                            <td __designer:mapid="9e">
                                                                <asp:TextBox ID="txtmobile" runat="server" MaxLength="10" 
                                                                    ontextchanged="TextBox1_TextChanged" CssClass="auto-style14" Height="28px" 
                                                                    Width="180px"></asp:TextBox>
                                                &nbsp;&nbsp;&nbsp;
                                                                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                                                    ControlToValidate="txtmobile" ErrorMessage="Invalid Mobile No." 
                                                                    Font-Names="Calibri" MaximumValue="9999999999" MinimumValue="1000000000" 
                                                                    Type="Double" CssClass="auto-style14" style="font-size: small"></asp:RangeValidator>
                                                            </td>
                                                        </tr>
                                                        <tr __designer:mapid="a5">
                                                            <td __designer:mapid="a6">
                                                                &nbsp;</td>
                                                            <td class="style17" __designer:mapid="a7">
                                                                &nbsp;</td>
                                                            <td __designer:mapid="a8">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr __designer:mapid="a9">
                                                            <td __designer:mapid="aa">
                                                                &nbsp;</td>
                                                            <td class="auto-style11" __designer:mapid="ab">
                                                                <span class="auto-style13">Message</span> :</td>
                                                            <td __designer:mapid="ac">
                                                                <asp:TextBox ID="txtmessage" runat="server" Height="149px" TextMode="MultiLine" 
                                                                    Width="515px" 
                                                                    ontextchanged="txtmessage_TextChanged" CssClass="auto-style16"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr __designer:mapid="ae">
                                                            <td __designer:mapid="af">
                                                                &nbsp;</td>
                                                            <td class="style17" __designer:mapid="b0">
                                                                &nbsp;</td>
                                                            <td __designer:mapid="b1">
                                                                <label class="auto-style13" __designer:mapid="62b6">
                                                                <asp:Button ID="Button3" runat="server" class="auto-style5" onclick="Button3_Click" style="margin-bottom:10px;margin-top:0px;" Text="SEND" type="submit" Width="101px" />
                                                                </label>
                                                                
                                                                &nbsp;&nbsp;<em><strong><asp:Label ID="lbl" runat="server" Font-Names="Calibri" CssClass="auto-style3"></asp:Label>
                                                                </strong></em>
                                                            </td>
                                                        </tr>
                                                        <tr __designer:mapid="bb">
                                                            <td __designer:mapid="bc">
                                                                &nbsp;</td>
                                                            <td class="style17" __designer:mapid="bd">
                                                                &nbsp;</td>
                                                            <td __designer:mapid="be">
                                                                &nbsp;</td>
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

