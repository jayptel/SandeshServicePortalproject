﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="msg.aspx.cs" Inherits="msg" Title="Message" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
  
    <style type="text/css">
        .auto-style1 {
            font-size: small;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Height="280px" TextMode="MultiLine" 
            Width="450px" ReadOnly="True" CssClass="auto-style1"></asp:TextBox>
                <asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>

</body>
</html>
