<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="Onlinechat.aspx.cs" Inherits="Onlinechat" Title="Online Chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 41px;
            height: 45px;
        }
        .style8
        {
            height: 45px;
            text-align: left;
            margin-left: 40px;
        }
        .style10
        {
            width: 100px;
        }
        .style11
        {
            width: 41px;
        }
        .style27
        {
            font-family: Calibri;
            font-weight: bold;
            color: #003300;
        }
        .auto-style9 {
            font-size: small;
            background-color: #FFFFFF;
        }
        .auto-style10 {
            font-family: Calibri;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style11 {
            background: #F9FFFE;
            border: 1px solid #008080;
            font-size: small;
        }
        .auto-style12 {
            background-position: 0% 0%;
            border: 1px solid #008080;
            background-image: none;
            background-repeat: repeat;
            background-attachment: scroll;
        font-size: medium;
    }
        .auto-style13 {
            font-size: small;
            text-align: center;
        }
        .auto-style14 {
            font-size: small;
            background-color: #FFFFFF;
            text-align: center;
        }
    .auto-style15 {
        font-size: medium;
        background-color: #FFFFFF;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ntbl"  width: 688px;">
        <tr class="tbllhead">
            <td colspan="2" class="auto-style14">
                <span class="auto-style10"><strong><em>Welcome to
                Online Chat<br />
                </em></strong></span>&nbsp;<asp:Label ID="lblname" runat="server" 
                    style="font-weight: 700; color:green;" CssClass="auto-style3"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td align="right" class="style8">
                <table class="style10">
                    <tr>
                        <td>
                            <asp:HiddenField ID="HOID" runat="server" onvaluechanged="HOID_ValueChanged" />
                        </td>
                        <td>
                                                                
                                                                <label class="auto-style13" __designer:mapid="6298">
                                                                
                                                                <asp:Button ID="btnlogout" runat="server" class="auto-style5" name="submit" onclick="btnlogout_Click" style="margin-bottom:10px;margin-top:0px;" Text="Logout" type="submit" />
                                                                </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="auto-style13">
                            <strong><em>Online User</em></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                        <iframe id="mm" runat="server" src="msg.aspx" frameborder="0" scrolling="auto" width="470px" height="310px"></iframe> 
                            
                        </td>
                        <td>
                            <asp:ListBox ID="ListBox1" runat="server" Height="285px" Width="132px" 
                                Font-Bold="True" ForeColor="#006600" CssClass="auto-style11">
                            </asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:TextBox ID="txtreply" runat="server" ontextchanged="txtreply_TextChanged" 
                                TextMode="MultiLine" Width="458px" CssClass="auto-style12" Height="41px"></asp:TextBox>
                        </td>
                        <td>
                                                                <label class="auto-style13" __designer:mapid="62b6">
                                                                <asp:Button ID="btnsend" runat="server" class="auto-style5" onclick="btnsend_Click" style="margin-bottom:10px;margin-top:0px;" Text="SEND" type="submit" Width="101px" />
                                                                </label>
                                                                
                        </td>
                    </tr>
                </table>
&nbsp;&nbsp; &nbsp;<asp:Label ID="lblmsg" runat="server" Font-Bold="True" CssClass="auto-style15"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
       
    </table>
</asp:Content>

