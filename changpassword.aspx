<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="changpassword.aspx.cs" Inherits="changpassword" Title="Password Change" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style13
    {
        width: 701px;
        height: 147px;
    }
    .style14
    {
        height: 63px;
        font-size: xx-large;
        text-align: center;
        color: #009999;
    }
    .style15
    {
        height: 37px;
    }
    .style16
    {
        font-family: Calibri;
        font-weight: bold;
    }
    .style19
    {
            font-size: medium;
            font-weight: bold;
            text-align: right;
            color: Teal;
            font-family: Calibri;
            width: 282px;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            background-color: #FFFFFF;
        }
        .auto-style11 {
            font-size: x-large;
            color: #333333;
        }
        .auto-style12 {
            background-color: #FFFFFF;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
    <table style="width: 687px;">
        <tr>
            <td colspan="2" 
                style="font-size: xx-large; font-weight: bold; font-family: calibri; color: #008080; " class="auto-style12">
&nbsp; <span class="auto-style11"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Change Password</em></span>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <span class="auto-style10"><strong>Old</strong></span> <span class="auto-style10"><strong>password :</strong></span></td>
            <td class="style15">
                    <asp:TextBox ID="txtoldpass" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="18px" Width="205px" 
                        TextMode="Password" class="auto-style4" ontextchanged="txtoldpass_TextChanged"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <strong>New Password :</strong></td>
            <td class="style15">
                    <asp:TextBox ID="txtnewpass" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="18px" Width="205px" 
                    class="auto-style4" TextMode="Password"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <strong>Confirm Password :</strong></td>
            <td class="style15">
                    <asp:TextBox ID="txtconfirmpass" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="18px" Width="205px" 
                    class="auto-style4" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtnewpass" ControlToValidate="txtconfirmpass" 
                        ErrorMessage="enter a match password" CssClass="auto-style14" style="font-size: small"></asp:CompareValidator>
                </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style15">
                                <label>
                                    <asp:Button ID="btnpass" runat="server" type="submit" name="submit" style="margin-bottom:10px;margin-left:25px;" class="auto-style5" onclick="btnpass_Click" Text="Change Password" />
                                </label>
            </td>
        </tr>
    </table>
</p>
    <p style="margin-left: 360px">
        &nbsp;<em><asp:Label ID="lblpass" runat="server" ForeColor="Green" CssClass="lbll" style="font-size: small"></asp:Label>
        </em>
    <br />
&nbsp;</p>


</asp:Content>


