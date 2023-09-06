<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Account" Title="Account Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
         .style16
        {
            font-size: medium;
            font-weight: bold;
            color: #003300;
            text-align: right;
            font-family: Calibri;
            width: 83px;
        }
        .style27
        {
            font-family: Calibri;
            font-weight: bold;
            width: 172px;
        }
        .style28
        {
            height: 11px;
            width: 172px;
        }
        .style29
        {
            color: #660066;
            width: 172px;
        }
        .style31
        {
            height: 12px;
            width: 172px;
        }
        .style32
        {
            width: 172px;
        }
        .auto-style9 {
            background-color: #FFFFFF;
        }
        .auto-style10 {
            color: #333333;
            font-size: x-large;
            background-color: #FFFFFF;
        }
        .auto-style11 {
            font-size: medium;
            font-weight: bold;
            color: #003300;
            text-align: left;
            font-family: Calibri;
            width: 100px;
        }
        .auto-style12 {
            height: 11px;
            width: 163px;
        }
        .auto-style13 {
            color: #660066;
            width: 163px;
        }
        .auto-style14 {
            width: 163px;
        }
        .auto-style15 {
            height: 12px;
            width: 163px;
        }
        .auto-style16 {
            color: #333333;
        }
        .auto-style17 {
            width: 205px;
            height: 25px;
            text-align: left;
            font-size: small;
            font-weight: bold;
            font-family: Calibri;
        }
        .style30{
            width:40px;
        }
        .auto-style18 {
            width: 784px;
        }
        </style>
    
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <table class="auto-style18" 
         width: 687px; height: 462px;">
        <tr>
            <td  colspan="3" style="font-weight: bold; font-family: calibri; text-align: center;" class="auto-style10" 
                
               >
                <em>Update Profile</em></td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="style17">
            </td>
            <td class="style21">
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style11">
                <span class="auto-style16">Name</span> :</td>
            <td class="style23">
                <asp:TextBox ID="txtfname1" runat="server" CssClass="auto-style17" Height="25px"  Text='<%#Eval("Fname") %>'
                    Width="204px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style11">
                <span class="auto-style16">LastName</span> :</td>
            <td>
                <asp:TextBox ID="txtsname1" runat="server" CssClass="auto-style17"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style11">
                Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1"  runat="server" CssClass="auto-style17" 
                    Width="301px" />
                                    <a  style="margin-left:20px;" class="dropdown-toggle" data-toggle="dropdown">
                                        <asp:Image runat="server" ID="Image1" ImageUrl="~/img/boy.jpeg" class="nav-avatar" Height="102px" Width="106px" />
                                    </a>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style11">
                <span class="auto-style16">Mobile</span> :</td>
            <td>
                <asp:TextBox ID="txtmobile1" runat="server" CssClass="auto-style17"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style11">
                <span class="auto-style16">Address</span> :</td>
            <td>
                <asp:TextBox ID="txtadd1" runat="server" CssClass="auto-style17"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style11">
                City :</td>
            <td>
                <asp:TextBox ID="txtcity1" runat="server" CssClass="auto-style17"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style11">
                <span class="auto-style16">Pincode</span> : </td>
            <td>
                <asp:TextBox ID="txtpin1" runat="server" CssClass="auto-style17"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style11">
                <span class="auto-style16">BirthDate</span> :</td>
            <td >
                <em>
                <asp:DropDownList ID="drpdd1" runat="server" Width="68px">
                    <asp:ListItem>DD</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>

                </asp:DropDownList>
                </em>
                <asp:DropDownList ID="drpmm1" runat="server" Width="107px">
                   
                    <asp:ListItem>jan</asp:ListItem>
                        <asp:ListItem>feb</asp:ListItem>
                        <asp:ListItem>mar</asp:ListItem>
                        <asp:ListItem>apr</asp:ListItem>
                        <asp:ListItem>may</asp:ListItem>
                        <asp:ListItem>jun</asp:ListItem>
                        <asp:ListItem>jul</asp:ListItem>
                        <asp:ListItem>aug</asp:ListItem>
                    <asp:ListItem>sep</asp:ListItem>
                    <asp:ListItem>oct</asp:ListItem>
                    <asp:ListItem>nov</asp:ListItem>
                    <asp:ListItem>dec</asp:ListItem>
                    
                </asp:DropDownList>
                <asp:DropDownList ID="drpyyy1" runat="server" Width="107px">
                    <asp:ListItem>YYYY</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>                    
                           <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    
                    
                    
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                <asp:Button ID="Update" style="margin-left:70px;" runat="server" class="auto-style5" Text="Upload" 
                                                                     onclick="Update_Click" Height="28px" Width="90px" 
                                                                    />
                </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><em><asp:Label ID="Label1" runat="server" CssClass="lbll" style="font-size: small"></asp:Label></em></strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>



