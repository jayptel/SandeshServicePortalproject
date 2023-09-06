<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="Sent.aspx.cs" Inherits="Sent" Title="Sent Mail" %>

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
        .auto-style9 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                        
    <table class="style11" 
     height: 261px; width: 100%;">
        <tr>
                <td class="auto-style9">
                    <em>
                    <strong>Sen</strong></em><strong><em>t Mail Box</em></strong></td>
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
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                                    BorderColor="#E7E7FF" BorderStyle="None" 
                                BorderWidth="1px" CellPadding="3" 
                                                    GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" 
                                                    Font-Names="Calibri" Width="785px" 
                                                    DataKeyNames="ID" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
                                onpageindexchanging="GridView1_PageIndexChanging" 
                                onselectedindexchanging="GridView1_SelectedIndexChanging" CssClass="auto-style10" style="font-size: medium" OnDataBound="GridView1_DataBound">
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
                                    <asp:BoundField HeaderText="To Mail" DataField="Toemail" 
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
                                            <asp:LinkButton runat="server" ForeColor="Red" CommandName="delete" CommandArgument='<%#Eval("Id") %>' Text="Delete"></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="#3D3B41" />
                                        <ItemStyle HorizontalAlign="Center" Width="40px"></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Read">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="Linkread" CommandName="read" CommandArgument='<%#Eval("Id") %>' runat="server">Read</asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="#3D3B41" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                                &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                &nbsp;&nbsp;
                                                <asp:LinkButton ID="linkmark" runat="server" onclick="linkmark_Click" CssClass="auto-style14" style="font-size: small">Mark All</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton ID="lidelete" runat="server" onclick="lidelete_Click" ForeColor="#CC0000" CssClass="auto-style14" style="font-size: small">Delete All</asp:LinkButton>
                                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

                        
</asp:Content>


