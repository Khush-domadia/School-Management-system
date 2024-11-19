<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ramayana_results.aspx.cs" Inherits="ramayana_results" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Result</title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        table{max-width:100%;background-color:transparent}table
{
    border-collapse: collapse;
    border-spacing: 0;
}
        *,*:before,*:after{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;
    }
                           *
    {
        color: #000 !important;
        text-shadow: none !important;
        background: transparent !important;
        box-shadow: none !important;
            text-align: center;
        }input,button,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}
select{background:#fff!important}
    
    button, select
{
    text-transform: none;
}button, input, select, textarea
{
    margin: 0;
    font-family: inherit;
    font-size: 100%;
}button, html input[type="button"], input[type="reset"], input[type="submit"]
{
    cursor: pointer;
    -webkit-appearance: button;
    text-align: center;
    }button,input{line-height:normal}</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table class="style1" bgcolor="#FFFFCC" cellpadding="5" cellspacing="5">
        <tr style="page-break-inside: avoid">
            <td align="center" 
                style="border-style: groove; background-color: #FF9966">
                <asp:DropDownList ID="DropDownList4" runat="server" 
            >
                    <asp:ListItem Value="0">Class</asp:ListItem>
                     <asp:ListItem Value="P1">Pre-Nursery </asp:ListItem>
                    <asp:ListItem Value="N1">Nursery </asp:ListItem>
                    <asp:ListItem Value="L1">LKG</asp:ListItem>
                    <asp:ListItem Value="U2">UKG</asp:ListItem>
                </asp:DropDownList>
    
                <asp:DropDownList ID="DropDownList6" runat="server" 
            >
                    <asp:ListItem Value="0">Section</asp:ListItem>
                    <asp:ListItem Value="A">A</asp:ListItem>
                    <asp:ListItem Value="B">B</asp:ListItem>
                    <asp:ListItem Value="C">C</asp:ListItem>
                    <asp:ListItem Value="D">D</asp:ListItem>
                </asp:DropDownList>
    
                <br />
    
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Find" />
    
            </td>
        </tr>
        <tr style="page-break-inside: avoid">
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr style="page-break-inside: avoid">
            <td align="center" 
                style="border-style: groove; background-color: #FF9966">
                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                <br />
    
                <asp:Button ID="Button6" runat="server" onclick="Button11_Click" Text="Find" />
    
            </td>
        </tr>
        <tr style="page-break-inside: avoid">
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr style="page-break-inside: avoid">
            <td class="style2" align="center" 
                style="border-style: groove; background-color: #FF9966">
                <asp:Button ID="Button1" runat="server" Text="&lt;&lt;--" 
                    onclick="Button1_Click" />
                &nbsp;RollNo:<asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;<asp:Button ID="Button2" runat="server" Text="--&gt;&gt;" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr style="page-break-inside: avoid">
            <td>
                <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Print" />
            </td>
        </tr>
        <tr style="page-break-inside: avoid">
            <td class="style2">
                
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager></td>
        </tr>
        </table>
                
        <br />
    <table class="style1" bgcolor="#FFFF99" frame="box" 
            rules="all" style="background-color: #FF9966">
                    <tr>
                        <td class="style4" style="color: #0000FF" colspan="12">
       
                    <table class="style7">
                        <tr>
                            <td>
                    <asp:Image ID="Image2" runat="server" Height="83px" 
                        ImageUrl="~/images/images (1).jpg" Width="93px" />
                            </td>
                <td class="style3">
                    <strong><span class="style6">Ramayana Foundation School<br />
                    </span><span class="style4">Play Group &amp; Kinder Garten<br />
                    </span></strong><span class="style5">&quot;OM BHAWAN&quot; 71/F SECTOR-1 SHAKTI NAGAR, 
                    BHOPAL-24<br />
                    PHONE: 0755-2452444<br />
                    </span></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                <td class="style3">
                    <span class="style5">
                    <strong>ADMISSION FORM</strong></span></td>
                        </tr>
                    </table>
                            </td>
                        <td class="style4" colspan="2" style="color: #0000FF">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4" colspan="10" style="color: #0000FF">
                            <table bgcolor="#FFFFCC" cellpadding="5" cellspacing="5" class="style1">
                                <tr>
                                    <td style="border-style: groove; background-color: #FF9966;">
                                        Session</td>
                                    <td style="border-style: groove; background-color: #FF9966">
                                        2016-17</td>
                                </tr>
                                <tr>
                                    <td style="border-style: groove; background-color: #FF9966;">
                                        Class_Section</td>
                                    <td style="border-style: groove; background-color: #FF9966">
                                        <asp:Label ID="Label7" runat="server"></asp:Label>
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-style: groove; background-color: #FF9966;">
                                        Name</td>
                                    <td style="border-style: groove; background-color: #FF9966">
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-style: groove; background-color: #FF9966;">
                                        Date of Birth</td>
                                    <td style="border-style: groove; background-color: #FF9966">
                                        <asp:Label ID="Label5" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-style: groove; background-color: #FF9966;">
                                        Mother Name</td>
                                    <td style="border-style: groove; background-color: #FF9966">
                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-style: groove; background-color: #FF9966;">
                                        Father Name</td>
                                    <td style="border-style: groove; background-color: #FF9966">
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-style: groove; background-color: #FF9966;">
                                        Attendance</td>
                                    <td style="border-style: groove; background-color: #FF9966">
                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="style4" colspan="2" style="color: #0000FF">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" rowspan="3" style="color: #0000FF">
                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList5_SelectedIndexChanged">
                                <asp:ListItem Value="0">Exam</asp:ListItem>
                                <asp:ListItem Value="T1">FA 1</asp:ListItem>
                                <asp:ListItem Value="T2">FA 2</asp:ListItem>
                                <asp:ListItem Value="S1">SA 1</asp:ListItem>
                                <asp:ListItem Value="T3">FA 3</asp:ListItem>
                                <asp:ListItem Value="T4">FA 4</asp:ListItem>
                                <asp:ListItem Value="S2">SA 2</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4" rowspan="3" style="color: #0000FF">
                            Subjects</td>
                        <td class="style4" colspan="5" style="color: #0000FF">
                            TERM1</td>
                        <td class="style4" colspan="5" style="color: #0000FF">
                            TERM2</td>
                        <td class="style4" colspan="2" style="color: #0000FF">
                            TERM1+TERM2</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            10</td>
                        <td class="style4" style="color: #0000FF">
                            10</td>
                        <td class="style4" style="color: #0000FF">
                            20</td>
                        <td class="style4" style="color: #0000FF">
                            20</td>
                        <td class="style4" style="color: #0000FF">
                            40</td>
                        <td class="style4" style="color: #0000FF">
                            10</td>
                        <td class="style4" style="color: #0000FF">
                            10</td>
                        <td class="style4" style="color: #0000FF">
                            20</td>
                        <td class="style4" style="color: #0000FF">
                            40</td>
                        <td class="style4" style="color: #0000FF">
                            60</td>
                        <td class="style4" style="color: #0000FF">
                            100</td>
                        <td class="style4" style="color: #0000FF">
                            10</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            FA1</td>
                        <td class="style4" style="color: #0000FF">
                            FA2</td>
                        <td class="style4" style="color: #0000FF">
                            TOT</td>
                        <td class="style4" style="color: #0000FF">
                            SA1</td>
                        <td class="style4" style="color: #0000FF">
                            FA+SA</td>
                        <td class="style4" style="color: #0000FF">
                            FA3</td>
                        <td class="style4" style="color: #0000FF">
                            FA4</td>
                        <td class="style4" style="color: #0000FF">
                            TOT</td>
                        <td class="style4" style="color: #0000FF">
                            SA2</td>
                        <td class="style4" style="color: #0000FF">
                            FA+SA2</td>
                        <td class="style4" style="color: #0000FF">
                            TOTAL</td>
                        <td class="style4" style="color: #0000FF">
                           GRADE</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            <asp:TextBox ID="TextBox23" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4" style="color: #0000FF">
                            <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label17" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label24" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox8" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label38" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label31" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox15" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label45" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            <asp:TextBox ID="TextBox24" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4" style="color: #0000FF">
                            <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label18" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label25" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox9" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label39" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label32" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox16" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label46" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            <asp:TextBox ID="TextBox25" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4" style="color: #0000FF">
                            <asp:Label ID="Label12" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label19" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label26" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label40" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label33" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox17" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label47" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            <asp:TextBox ID="TextBox26" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4" style="color: #0000FF">
                            <asp:Label ID="Label13" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label20" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label27" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox11" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label41" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label34" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox18" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label48" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            <asp:TextBox ID="TextBox27" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4" style="color: #0000FF">
                            <asp:Label ID="Label14" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label21" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label28" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox12" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label42" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label35" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox19" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label49" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            <asp:TextBox ID="TextBox28" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4" style="color: #0000FF">
                            <asp:Label ID="Label15" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label22" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label29" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox13" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label43" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label36" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox20" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label50" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            <asp:TextBox ID="TextBox29" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4" style="color: #0000FF">
                            <asp:Label ID="Label16" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label23" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox7" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label30" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox14" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label44" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label37" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox21" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label51" runat="server" Width="30px"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Ok" />
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                </table>
    
    </div>
    </form>
</body>
</html>
