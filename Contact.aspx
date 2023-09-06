<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" Title="Contact List" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
            .style13 {
                width: 619px;
            }
            
            .style14 {
                text-align: left;
            }
            
            .style15 {
                text-align: center;
            }
            
            .style16 {
                text-align: right;
                width: 222px;
            }
            
            .style18 {
                width: 134px;
            }
            
            .style19 {
                width: 584px;
            }
            
            .style20 {
                width: 128px;
            }
            
            .auto-style9 {
                background-color: #FFFFFF;
            }
            
            .auto-style10 {
                width: 614px;
            }
            
            .auto-style11 {
                width: 789px;
            }
        </style>
    </asp:Content>

    <asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">

        
            <table class="style11" style="width: 687px;">
                
                <tr>
                    <td style="font-size: x-large; font-weight: bold; font-family: calibri; color: #008080; text-align: center;" class="auto-style9">
                        <strong><em>My Contact List</em></strong></td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <table class="auto-style11">
                            <tr>
                                <td class="auto-style2">
                                    <strong>Find People :
                                                </strong>
                                </td>
                                <td class="style14" colspan="2">
                                    <asp:TextBox ID="txtsearch" runat="server" CssClass="txt"></asp:TextBox>

                                    <asp:Button ID="btnsearch" runat="server" type="submit" name="submit" style="margin-bottom:10px;margin-top:0px;" class="auto-style5" onclick="btnsearch_Click" Text="Search" /> &nbsp;&nbsp;

                                    <asp:Label ID="lblmsg" runat="server" CssClass="lblmsg" ForeColor="green" style="font-size: small"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style16">
                                    &nbsp;</td>
                                <td class="style14">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style16">

                                </td>
                                <td colspan="3" style="text-align:center;" class="btn">
                                    <table class="auto-style12">
                                        <tr>
                                            <td class="style18">
                                                &nbsp;</td>
                                            <td>
                                                <asp:CheckBoxList ID="chkfrnd" runat="server" RepeatColumns="3" CssClass="txt" onselectedindexchanged="chkfrnd_SelectedIndexChanged" style="font-size: medium">
                                                </asp:CheckBoxList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>

                            </tr>
                            <tr>
                                <td class="style16">
                                    &nbsp;</td>

                                <td class="style14">

                                    <asp:Button ID="btnadd" runat="server" type="submit" name="submit" style="margin-bottom:10px;margin-top:10px;margin-left:70px;" class="auto-style5" onclick="btnadd_Click" Text="Add to Contact" />

                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style16">
                                    &nbsp;</td>
                                <td class="style14">
                                    <asp:Label ID="lbladd" runat="server" CssClass="lblmsg" ForeColor="green" style="font-size: medium"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style15" colspan="3">
                                    <table class="auto-style10" style="margin-left:15%">
                                        <tr>

                                            <asp:GridView ID="GvFrind" runat="server" AutoGenerateColumns="False" Width="610px" onrowdeleting="GvFrind_RowDeleting" onselectedindexchanged="GvFrind_SelectedIndexChanged" DataKeyNames="CID" style="font-size: medium">
                                                <Columns>

                                                    <asp:BoundField HeaderText="Email" DataField="toemail">
                                                        <HeaderStyle BackColor="#3D3B41" />
                                                        <ItemStyle ForeColor="#4A4A4C" />
                                                    </asp:BoundField>
                                                    <asp:TemplateField HeaderText="Remove">
                                                        <ItemTemplate>
                                                            <asp:LinkButton Text="Remove" ForeColor="Red" CommandName="DELETE" CommandArgument='<%#Eval("CID") %>' runat="server"></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <HeaderStyle BackColor="#3D3B41" />

                                                    </asp:TemplateField>
                                                </Columns>
                                                <HeaderStyle BackColor="Teal" ForeColor="White" />
                                            </asp:GridView>
                                
                                            </tr></table></td>
                                </tr>
                                </table>
                    </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            &nbsp;</td>
                        <td class="style14">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    </table>
                
           
           
        

    </asp:Content>