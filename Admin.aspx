<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

table{max-width:100%;background-color:transparent;border-collapse:collapse;border-spacing:0;}
*{text-shadow:none !important;color:#000 !important;background:transparent !important;box-shadow:none !important;} 
            .auto-style9 {
                color: #333333;
            }
            .auto-style9 {
            
            height: 30px;
            font-size: xx-large;
            font-weight: bold;
            font-family: calibri;
            color: #3d3b41;
            text-align: center;
         font-style:italic;
        }
    body, td{font-family:arial,sans-serif;font-size:80%}
.label{-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px;}
.label,.badge{display:inline-block;padding:2px 4px;font-size:11.844px;font-weight:bold;line-height:14px;color:#ffffff;vertical-align:baseline;white-space:nowrap;text-shadow:0 -1px 0 rgba(0, 0, 0, 0.25);background-color:#999999;}
strong, b {
	color: #555
}
            
            .auto-style3 {
                font-size: medium;
                
            }
            
            input[type="checkbox"],input[type="radio"]{border:1px solid #ccc} input[type="checkbox"],input[type="radio"]{border:1px solid #ccc;} 
input[type="file"],input[type="image"],input[type="submit"],input[type="reset"],input[type="button"],input[type="radio"],input[type="checkbox"]{width:auto;}
input[type="radio"],input[type="checkbox"]{margin:4px 0 0;*margin-top:0;margin-top:1px \9;line-height:normal;}
label,select,button,input[type="button"],input[type="reset"],input[type="submit"],input[type="radio"],input[type="checkbox"]{cursor:pointer;}
select, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input, label, input, button, select, textarea {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	font-size: 13px;
	font-family: 'Open Sans', Tahoma, Arial, sans-serif
}
input,textarea,.uneditable-input{margin-left:0}input,textarea,.uneditable-input{margin-left:0} input,textarea,.uneditable-input{margin-left:0;} input,textarea,.uneditable-input{margin-left:0;} 
input,textarea,.uneditable-input{margin-left:0;}
input,textarea,.uneditable-input{width:206px;}
input,button,select,textarea{font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;}
label,input,button,select,textarea{font-size:14px;font-weight:normal;line-height:20px;}
button,input{*overflow:visible;line-height:normal;}
button,input,select,textarea{margin:0;font-size:100%;vertical-align:middle;}
a{color:#0088cc;text-decoration:none;}
a,a:visited{text-decoration:underline;} 
        .auto-style10 {
            color: #F7F7F7;
            font-weight: bold;
            background-color: #009797;
        }
        .auto-style11 {
            color: #4A4A4C;
            background-color: #E7E7FF;
        }
        .auto-style12 {
            color: #4A4A4C;
            background-color: #F7F7F7;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
                       <table class="style11" 
    style=" height: 261px; width: 100%;">
                            <tr style="page-break-inside: avoid;">
                                <td 
                                    class="auto-style9" >
                                    Inbox &nbsp;
                                    <b class="label green" ><asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
                                   </b> </td>

                            </tr>
                            <tr style="page-break-inside: avoid;">
                                <td valign="top">
                                    <table >
                                        <tr style="page-break-inside: avoid;">
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr style="page-break-inside: avoid;">
                                            <td>
                                                <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                                    BorderColor="" BorderStyle="None" BorderWidth="0px" CellPadding="3" 
                                                    GridLines="Horizontal"  AutoGenerateColumns="False" 
                                                    onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                                                    Font-Names="Calibri"  onrowdeleting="GridView1_RowDeleting" 
                                                    DataKeyNames="ID" onrowcommand="GridView1_RowCommand" CssClass="auto-style3" style="font-size: medium" Width="789px" OnDataBound="GridView1_DataBound" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4a4a4c" />
                                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4a4a4c" />
                                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4a4a4c" HorizontalAlign="Right" />
                                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                    <HeaderStyle BackColor="#009797" Font-Bold="True" ForeColor="#F7F7F7" />
                                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                                    <Columns>
                                                    <asp:TemplateField HeaderText="ALL" ItemStyle-Width="40px"  ItemStyle-HorizontalAlign="Center">
                                                   <ItemTemplate>
                                                   <asp:CheckBox ID="chk" runat="server" />
                                                   </ItemTemplate>

                                                        <HeaderStyle BackColor="#3D3B41" />

<ItemStyle HorizontalAlign="Center" Width="40px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:BoundField HeaderText="Mail From" DataField="Fromemail" 
                                                            ItemStyle-Width="130px" >
                                                        <HeaderStyle BackColor="#3D3B41" HorizontalAlign="Center" VerticalAlign="Middle" />
<ItemStyle Width="130px"></ItemStyle>
                                                        </asp:BoundField>
                                                     <asp:BoundField HeaderText="Subject" DataField="subject" ItemStyle-Width="250px" >
                                                        <HeaderStyle BackColor="#3D3B41" />
<ItemStyle Width="250px"></ItemStyle>
                                                        </asp:BoundField>
                                                      <asp:BoundField HeaderText="Receive Date" DataField="Entrydate" 
                                                            ItemStyle-HorizontalAlign="Center"  ItemStyle-Width="150px">
                                                    
                                                        <HeaderStyle BackColor="#3D3B41" />
                                                    
<ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
                                                        </asp:BoundField>
                                                    <asp:TemplateField HeaderText="Delete" ItemStyle-Width="80px"  ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                    <asp:LinkButton runat="server" ForeColor="Red" CommandName="delete" Text="Delete"></asp:LinkButton>
                                                    </ItemTemplate>

                                                        <HeaderStyle BackColor="#3D3B41" />

<ItemStyle HorizontalAlign="Center" Width="40px" VerticalAlign="Middle"></ItemStyle>
                                                    </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Read">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" CommandName="read" CommandArgument='<%#Eval("Id") %>' runat="server">Read</asp:LinkButton>
                                                            </ItemTemplate>
                                                            <HeaderStyle BackColor="#3D3B41" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="page-break-inside: avoid;">
                                            <td>
                                                &nbsp;
                                                <asp:LinkButton ID="linkmark" runat="server" onclick="linkmark_Click1" 
                                                    style="font-family: Calibri; font-size: medium;" CssClass="auto-style3">Mark All</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#CC0000" 
                                                    style="font-family: Calibri; font-size: medium;" onclick="LinkButton1_Click" CssClass="auto-style3">Delete All</asp:LinkButton>
                                            &nbsp;&nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                    </td>
                            </tr>
    </table>

    </form>
</body>
</html>
