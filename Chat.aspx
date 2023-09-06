<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="Chat" Title="Chat Room " %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 749px;
        }
       
        .auto-style9 {
            background-color: #FFFFFF;
        }
        .auto-style10 {
            font-size: x-large;
            background-color: #FFFFFF;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 687px;">
        <tr>
            <td 
                style="font-weight: bold; font-family: calibri; text-align: center;" class="auto-style10">
                <strong><em>Welcome Online Chat</em></strong></td>
        </tr>
        <tr>
            <td style="text-align: center" class="style13">
&nbsp;<br />
                <br />
                <br />
                                                                
                                                                <label class="auto-style13" __designer:mapid="228">
                                                                
                                                                <asp:Button ID="btnenterchat" runat="server" class="auto-style5" name="submit" onclick="btnenterchat_Click" style="margin-bottom:10px;margin-top:0px;font-size: medium;" Text="Enter Chat" type="submit" Height="46px" Width="182px" />
                                                                </label>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

