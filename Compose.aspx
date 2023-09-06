<%@ Page Language="C#" MasterPageFile="~/demo.master" AutoEventWireup="true" CodeFile="Compose.aspx.cs" Inherits="Compose" Title="Compose Mail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" href="demo/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="demo/bootstrap/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="demo/css/jquery-ui.css" />

    <script src="demo/scripts/jquery-1.9.1.js"></script>
   <script src="demo/scripts/jquery-ui.js"></script>
 
        <script language="javascript"  type = "text/javascript">
        $(function () {
            $('#<%=txtselectEMail.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "Compose.aspx/GetCompanyName",
                        data: "{ 'pre':'" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return { value: item }
                            }))
                        },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                     }
                });
             }
            });

        });
    </script>
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            SearchText();
        });
        function SearchText() {
            $('#<%=Txt_toaddress.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "Compose.aspx/GetMultipleName",
                        data: "{ 'empName':'" + extractLast(request.term) + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return { value: item }
                            }))
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert(textStatus);
                        }
                    });
                },
                focus: function () {
                    // prevent value inserted on focus
                    return false;
                },
                select: function (event, ui) {
                    var terms = split(this.value);
                    // remove the current input
                    terms.pop();
                    // add the selected item
                    terms.push(ui.item.value);
                    // add placeholder to get the comma-and-space at the end
                    terms.push("");
                    this.value = terms.join(",");
                    return false;
                }
            });
            $("#Txt_toaddress").bind("keydown", function (event) {
                if (event.keyCode === $.ui.keyCode.TAB &&
                    $(this).data("autocomplete").menu.active) {
                    event.preventDefault();
                }
            })
            function split(val) {
                return val.split(/,\s*/);
            }
            function extractLast(term) {
                return split(term).pop();
            }
        }
    </script>
   <script language="javascript" type="text/javascript">
        $(function () {
            $('#<%=txtemaill.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "Compose.aspx/GetOnlineName",
                        data: "{ 'online':'" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return { value: item }
                            }))
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert(textStatus);
                        }
                    });
                }
            });

        });
    </script>
    <style type="text/css">
        .style13
        {
            width: 679px;
        }
        .style14
        {
            width: 649px;
           
        }
        .style16
        {
            font-size: medium;
            font-weight: bold;
            color: #003300;
            text-align: right;
            font-family: Calibri;
            width: 83px;
        }
        .style17
        {
            width: 83px;
        }
        .style18
        {
            width: 650px;
        }
    .auto-style9 {
        font-size: 90%;
    }
        .auto-style10 {
            height: 30px;
            font-size: x-large;
            font-weight: bold;
            font-family: calibri;
            color: #3d3b41;
            text-align: center;
         font-style:italic;
        }
        td.auto-style11 {
         display:inline-block;
           
        }
        .auto-style13 {
            width: 510px;
            height: 34px;
        }
        .auto-style15 {
            background-position: 0% 0%;
            border: 1px solid #008080;
            color: #333333;
            font-size: medium;
            background-image: none;
            background-repeat: repeat;
            background-attachment: scroll;
        }
        .auto-style16 {
            background: #FFFFFE;
            border: 1px solid #008080;
            font-size: medium;
        }
        .auto-style17 {
            display: inline-block;
            zoom: 1;
            font-size: 13px;
            line-height: 1.42857;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            color: #333333;
            text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
            -ms-filter: "progid: DXImageTransform.Microsoft.gradient(enabled=false)";
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px rgba(0, 0, 0, .05);
            -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px rgba(0, 0, 0, .05);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px rgba(0, 0, 0, .05);
            font-weight: 400;
            white-space: nowrap;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            border: 1px solid transparent;
            margin-left: .3em;
            margin-bottom: 0;
            overflow:auto;
            background-image: none;
            background-repeat: repeat-x;
        }
       
        .auto-style18 {
            font-weight: normal;
        }
       
        .auto-style19 {
            background: #FFFFFE;
            border: 1px solid #008080;
            font-size: small;
        }
       
        .auto-style20 {
            color: #333333;
        }
        .auto-style21 {
            text-align: justify
        }
       
        .auto-style22 {
            background-position: 0% 0%;
            border: 1px solid #008080;
            font-size: medium;
            background-image: none;
            background-repeat: repeat;
            background-attachment: scroll;
        }
       
        .auto-style24 {
            font-size: medium;
            color: #003300;
            text-align: center;
            font-family: Calibri;
            width: 83px;
        }
        .auto-style25 {
            font-weight: normal;
            color: #333333;
        }
       
        .auto-style26 {
            background: #FFFFFF;
            border: 1px solid #008080;
            font-size: medium;
        }
       
        .auto-style28 {
            font-size: small;
            text-align: center;
        }
        .auto-style29 {
            font-size: medium;
            font-weight: bold;
            color: #003300;
            text-align: center;
            font-family: Calibri;
            width: 83px;
        }
        .auto-style30 {
            font-size: medium;
            text-align: center;
        }
       
        </style>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
  
        <table class="style11" >
            <tr>
                <td class="auto-style10">
                    <em>Compose Mail</em></td>
            </tr>
            <tr>
                <td>
                    <table class="style13">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style30">
                                <strong>Send Email To :</strong></td>
                            <td class="auto-style21">
                                <asp:RadioButton ID="RadioButton1" runat="server"  AutoPostBack="True" 
                                    Checked="True" CssClass="lbl" GroupName="a" 
                                    oncheckedchanged="RadioButton1_CheckedChanged" Text="Single Mail" 
                                    onload="RadioButton1_CheckedChanged" Height="38px" style="font-size: medium" Width="86px" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" CssClass="lbl" GroupName="a" 
                                    oncheckedchanged="RadioButton2_CheckedChanged" Text="Group Mail" Height="38px" style="font-size: medium" Width="86px" />
                            &nbsp;<asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                                    CssClass="lbl" GroupName="a" 
                                    oncheckedchanged="RadioButton3_CheckedChanged" Text="Web Mail" Height="38px" style="font-size: medium" Width="86px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: left">
                                <asp:MultiView ID="MultiView1" runat="server">
                                    <asp:View ID="View1" runat="server">
                                        <table style="border: thin solid #28262c" width="100%">
                                            <tr>
                                                <td class="pagination-centered" style="color:#3d3b41">
                                                    <span class="auto-style3"><em><strong>Send Mail to Single Person :</strong></em></span><em><span class="auto-style3"> &nbsp;</span></em></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="style14">
                                                        <tr>
                                                            <td class="auto-style11">
                                                                </td>
                                                            <td class="auto-style2">
                                                                &nbsp;</td>
                                                            <td class="align-center" >
                                                                
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style2">
                                                                &nbsp;</td>
                                                            <td class="auto-style28">
                                                                <span class="auto-style20">To</span> :</td>
                                                            <td>

                                                                <label class="auto-style13">
                                                                <asp:TextBox ID="txtselectEMail" runat="server" class="auto-style16" Height="18px" Width="519px"></asp:TextBox>
                                                                </label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="auto-style28">
                                                                <span class="auto-style20">Title</span> :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtsubject" runat="server" Height="30px" Width="519px" 
                                                                    ontextchanged="txtsubject_TextChanged" CssClass="auto-style16"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="auto-style28">
                                                                <span class="auto-style20">Message</span> :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtmessage" runat="server" Height="149px" TextMode="MultiLine" 
                                                                    Width="515px" CssClass="auto-style15"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                <label class="auto-style13">
                                                                <asp:Button ID="Button3" runat="server" class="auto-style5" onclick="Button3_Click" style="margin-bottom:10px;margin-top:0px;" Text="SEND" type="submit" Width="101px" />
                                                                &nbsp;&nbsp;&nbsp;<span class="auto-style2"><asp:LinkButton ID="LinkButton1" runat="server" ForeColor="green" onclick="LinkButton1_Click">Attachment</asp:LinkButton>
                                                                &nbsp;&nbsp;<em><asp:Label ID="att1" runat="server"></asp:Label>
                                                                </em>&nbsp;<em><asp:Label ID="att2" runat="server"></asp:Label>
                                                                &nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="lblerror1" runat="server" Font-Bold="False" ForeColor="Red" CssClass="auto-style3"></asp:Label>
                                                                </em>
                                                                </span>
                                                                </label>
                                                                
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                               
                                                                <asp:FileUpload  ID="FileUpload1" runat="server" CssClass="auto-style17" Visible="False" Width="317px" />
                                                  
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="auto-style17" Visible="False" Width="317px" />
                                                                &nbsp;<asp:Button ID="btnuploadsingle" style="margin-left:100px;" runat="server" class="auto-style5" Text="Upload" 
                                                                    Visible="False" onclick="btnuploadsingle_Click" Height="28px" Width="90px" 
                                                                    />&nbsp;&nbsp;
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                        <table style="border: thin solid #28262c" width="100%">
                                            <tr>
                                                <td class="pagination-centered" style="color:#3d3b41"><span class="auto-style3"><em><strong>Send Mail to Multiple Person :</strong></em></span><em><strong> &nbsp;</strong></em></td>
                                            </tr>
                                           
                                            <tr>
                                                <td>
                                                    <table class="style14">
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="auto-style24">
                                                                To :</td>
                                                            <td class="align-center">
                                                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="21px" 
                                                                    onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" 
                                                                    RepeatColumns="3" CssClass="auto-style9" Width="59px">
                                                                </asp:CheckBoxList>
                                                                <label class="auto-style13">
                                                                <asp:TextBox ID="Txt_toaddress" runat="server" class="auto-style16" Height="18px" Width="519px"></asp:TextBox>
                                                                </label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="auto-style29">
                                                                <span class="auto-style18">Title</span> :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtsubjectgroup" runat="server" Height="30px" Width="519px" 
                                                                    CssClass="auto-style16"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="auto-style29">
                                                                <span class="auto-style25">Message</span> :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtmessagegroup" runat="server" Height="149px" 
                                                                    TextMode="MultiLine" Width="515px" 
                                                                    ontextchanged="txt_TextChanged" CssClass="auto-style22"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                <label class="auto-style13">
                                                                <asp:Button ID="sendgroup"  runat="server" class="auto-style5" onclick="Button5_Click" style="margin-bottom:10px;margin-top:0px;" Text="SEND" type="submit" Width="101px" />
                                                                &nbsp;&nbsp;&nbsp;<span class="auto-style2"><asp:LinkButton ID="LinkButton2" runat="server" ForeColor="green" onclick="LinkButton2_Click">Attachment</asp:LinkButton>
                                                                &nbsp;&nbsp;<em><asp:Label ID="att3" runat="server"></asp:Label>
                                                                </em>&nbsp;<em><asp:Label ID="att4" runat="server"></asp:Label>
                                                                &nbsp;&nbsp;
                                                                <asp:Label ID="lblerror2" runat="server" Font-Bold="False" ForeColor="Red" CssClass="auto-style3"></asp:Label>
                                                                </em>
                                                                </span>
                                                                </label>
                                                                <asp:FileUpload ID="FileUpload3" runat="server" Visible="False" CssClass="auto-style17" Width="317px" />
                                                                <br />
                                                                <asp:FileUpload ID="FileUpload4" runat="server" Visible="False" CssClass="auto-style17" Width="317px" />
                                                                <asp:Button ID="btnuploadsinglegroup" runat="server" 
                                                                    onclick="btnuploadsinglegroup_Click" Text="Upload" Visible="False" 
                                                                    Height="28px" Width="90px" class="auto-style5" style="margin-left:100px;" />
                                                                <br />
                                                                <br />
                                                                <br />
                                                               
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View3" runat="server">
                                        <table align="center" class="style18">
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="font-weight: 700; color:green; font-size: large">
                                                    <span class="auto-style18">Message Send successfully</span> <em>
                                                    <asp:Label ID="lblsnd" runat="server" CssClass="auto-style20"></asp:Label>
                                                    </em>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View4" runat="server">
                                        <table style="border: thin solid #28262c;" width="100%">
                                            <tr>
                                                <td class="pagination-centered" style="color:#3d3b41;"><span class="auto-style3"><em><strong>Send Mail On Internet To Other Mail Service :</strong></em></span><em><strong> &nbsp;</strong></em></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    <table class="style14">
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="auto-style29">
                                                                <span class="auto-style18">To</span> :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtemaill" runat="server" Width="519px" CssClass="auto-style19" 
                                                                    Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="auto-style29">
                                                                <span class="auto-style18">Title</span> :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtsubject0" runat="server" BackColor="#FfFFFE" Height="30px" 
                                                                    ontextchanged="txtsubject_TextChanged" Width="519px" CssClass="auto-style16"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="auto-style29">
                                                                <span class="auto-style25">Message</span> :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtmessage0" runat="server" BackColor="#FFFFFE" Height="149px" TextMode="MultiLine" 
                                                                    Width="515px" CssClass="auto-style26"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                <label class="auto-style13">
                                                                <asp:Button ID="btnsend_Web" runat="server" class="auto-style5" onclick="btnsend_Web_Click" style="margin-bottom:10px;margin-top:0px;" Text="SEND" type="submit" Width="101px" />
                                                                &nbsp;&nbsp;&nbsp; <span class="auto-style2"><em>
                                                                <asp:Label ID="lblerror3" runat="server" Font-Bold="False" ForeColor="Red" CssClass="auto-style3"></asp:Label>
                                                                &nbsp;&nbsp;&nbsp;
                                                                <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="green" onclick="LinkButton3_Click">Attachment</asp:LinkButton>
                                                                &nbsp;&nbsp;&nbsp;<asp:Label ID="att5" runat="server"></asp:Label>
                                                                <asp:FileUpload ID="FileUpload5" runat="server" CssClass="auto-style17" Visible="False" Width="317px" />
                                                                </em></span>
                                                                </label>
                                                                &nbsp;&nbsp; </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </asp:MultiView>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
   

</asp:Content>




