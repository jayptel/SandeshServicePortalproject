<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="Trash.aspx.cs" Inherits="Trash" Title="Trash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style13
    {
        height: 45px;
    }
        .style27
        {
            height: 35px;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                        <table class="style11" 
     height: 261px; width: 100%;">
                            <tr>
                <td class="auto-style11">
                    <strong><em>Trash</em></strong></td>
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
                                                <asp:GridView ID="Gridtrash" runat="server" BackColor="White" 
                                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                                    GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" 
                                                    Font-Names="Calibri" Width="788px" 
                                                    DataKeyNames="ID" onselectedindexchanged="Gridtrash_SelectedIndexChanged" 
                                                    onrowdeleting="Gridtrash_RowDeleting" onrowcommand="Gridtrash_RowCommand" CssClass="auto-style10" style="font-size: medium">
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
                                                            <HeaderStyle BackColor="#3D3B41" />
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
                                                            
                                                             
                                                            <ItemStyle HorizontalAlign="Center" Width="40px"></ItemStyle>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Restore" ItemStyle-HorizontalAlign="Center" >
                                                        <ItemTemplate >
                                                        <asp:LinkButton runat="server" ForeColor="Green" CommandArgument='<%#Eval("id") %>' CommandName="res" Text="Restore"></asp:LinkButton>
                                                        </ItemTemplate>

                                                            <HeaderStyle BackColor="#3D3B41" />

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:TemplateField>
                                                        
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton ID="litrash" runat="server" onclick="litrash_Click" CssClass="auto-style14" style="font-size: small">Mark All</asp:LinkButton>
                                                &nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton ID="linktrashdelete" runat="server" 
                                                    onclick="linktrashdelete_Click" CssClass="auto-style14" ForeColor="#CC0000" style="font-size: small">Delete All</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
    </table>

</asp:Content>


