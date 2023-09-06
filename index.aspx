<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Title="Inbox Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">
    .style13
    {
        height: 45px;
    }
        .style27
        {
            height: 34px;
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
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                       <table class="style11" 
    style=" height: 261px; width: 100%;">
                            <tr>
                                <td 
                                    class="auto-style9" >
                                    Inbox &nbsp;
                                    <b class="label green" ><asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
                                   </b> </td>

                            </tr>
                            <tr>
                                <td valign="top">
                                    <table >
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
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
                                        <tr>
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

</asp:Content>