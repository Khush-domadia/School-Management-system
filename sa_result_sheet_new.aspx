<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sa_result_sheet_new.aspx.cs" Inherits="sa_result_sheet_new" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
   
   
    <style type="text/css">
        .style1
        {
            width: 111px;
        }
        .style2
        {
            width: 114px;
        }
        .style3
        {
        }
        .style4
        {
            font-size: x-large;
        }
        .style5
        {
            font-size: medium;
        }
    </style>
 
   
   
  </head>
  <body style="text-align: center">    

    <!-- SCROLL TOP BUTTON -->
    <!-- END SCROLL TOP BUTTON -->

    <!--=========== BEGIN HEADER SECTION ================-->
   
    <form runat="server">
     
    <table class="style1" bgcolor="#FFFFCC" cellpadding="5" cellspacing="5" 
        align="center">
        <tr>
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
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" 
                style="border-style: groove; background-color: #FF9966">
                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                <br />
    
                <asp:Button ID="Button6" runat="server" onclick="Button11_Click" Text="Find" />
    
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="center" 
                style="border-style: groove; background-color: #FF9966">
                &nbsp;RollNo:<asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Print" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager></td>
        </tr>
        </table>
                
    </div>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
         <table class="style1" align="center">
             <tr>
                 <td colspan="5">
                   <table class="style7" align="center">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl="~/images/images (1).jpg" onclick="ImageButton1_Click" Width="92px" />
                            </td>
                <td style="text-align: center">
                    <strong><span><span class="style4">Ramayana Foundation School</span><br class="style4" />
                    <span class="style4">Play Group &amp; Kinder Garten</span><br />
                    </span></strong><span class="style5">&quot;OM BHAWAN&quot; 71/F SECTOR-1 SHAKTI NAGAR, 
                    BHOPAL-24<br />
                    PHONE: 0755-2452444/4034055<br />
                    Academic Progress Card</span></td>
                        </tr>
                    </table></td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" colspan="4">
                     <table bgcolor="#FFFFCC" cellpadding="5">
                         <tr>
                             <td >
                                 Name</td>
                             <td style="border-bottom-style: dashed" >
                                 <asp:Label ID="Label2" runat="server"></asp:Label>
                             </td>
                             <td >
                                 Class_Section</td>
                             <td style="border-bottom-style: dashed" >
                                 <asp:Label ID="Label7" runat="server"></asp:Label>
                                 <asp:Label ID="Label8" runat="server"></asp:Label>
                             </td>
                             <td >
                                 Session</td>
                             <td style="border-bottom-style: dashed" >
                                 2016-17</td>
                         </tr>
                         <tr>
                             <td >
                                 Date of Birth</td>
                             <td style="border-bottom-style: dashed" >
                                 <asp:Label ID="Label5" runat="server"></asp:Label>
                             </td>
                             <td >
                                 Mother Name</td>
                             <td style="border-bottom-style: dashed" >
                                 <asp:Label ID="Label3" runat="server"></asp:Label>
                             </td>
                             <td >
                                 Father Name</td>
                             <td style="border-bottom-style: dashed" >
                                 <asp:Label ID="Label4" runat="server"></asp:Label>
                             </td>
                         </tr>
                     </table>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid;">
                            <strong>Subjects</strong></td>
                        <td class="style5" style="border-style: solid">
                            <strong>First Term</strong></td>
                        <td class="style5" style="border-style: solid">
                            <strong>Second Term</strong></td>
                        <td class="style5" style="border-style: solid">
                            <strong>Third Term</strong></td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid;">
                            <asp:Label ID="Label310" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label217" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label244" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox8" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label271" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox15" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid;">
                            <asp:Label ID="Label311" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label218" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label245" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox9" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label272" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox16" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid;">
                            <asp:Label ID="Label312" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label219" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label246" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label273" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox17" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid;">
                            <asp:Label ID="Label313" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label220" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label247" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox11" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label274" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox18" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid;">
                            <asp:Label ID="Label314" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label221" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label248" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox12" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label275" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox19" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid;">
                            <asp:Label ID="Label315" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label222" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label249" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox13" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label276" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox20" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid;">
                            <asp:Label ID="Label316" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label223" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox7" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label250" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox14" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label277" runat="server" Width="30px"></asp:Label>
                            <asp:TextBox ID="TextBox21" runat="server" Visible="False" Width="34px"></asp:TextBox>
                        </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid;">
                     <asp:Label ID="Label317" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label224" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label251" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label278" runat="server" Visible="False"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid;">
                     <asp:Label ID="Label318" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label225" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label252" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label279" runat="server" Visible="False"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid;">
                     <asp:Label ID="Label319" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label226" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label253" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label280" runat="server" Visible="False"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid;">
                     <asp:Label ID="Label320" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label227" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label254" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label281" runat="server" Visible="False"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid">
                            Percentage</td>
                        <td class="style4" style="border-style: solid">
                            &nbsp;&nbsp;<asp:Label ID="Label45" runat="server" Visible="true"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label47" runat="server" Visible="true"></asp:Label>
                            </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label48" runat="server" Visible="true"></asp:Label>
                 </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid">
                            Grade</td>
                        <td class="style5" style="border-style: solid">
                            <asp:Label ID="Label46" runat="server" Visible="true"></asp:Label>
                        </td>
                        <td class="style5" style="border-style: solid">
                            <asp:Label ID="Label49" runat="server" Visible="true"></asp:Label>
                        </td>
                        <td class="style5" style="border-style: solid">
                            <asp:Label ID="Label50" runat="server" Visible="true"></asp:Label>
                        </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid">
                            Attendance</td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label51" runat="server" Visible="true"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label52" runat="server" Visible="true"></asp:Label>
                 </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label53" runat="server" Visible="true"></asp:Label>
                 </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid">
                            Remarks</td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label54" runat="server" Visible="true"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label55" runat="server" Visible="true"></asp:Label>
                 </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label56" runat="server" Visible="true"></asp:Label>
                 </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style4" colspan="2" style="border-style: solid">
                     <strong style="font-size: medium">Personal &amp; Social Qualities</strong></td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     Comes to School on Time</td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label57" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label58" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label59" runat="server" Visible="true"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     Cleanliness</td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label60" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label61" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label62" runat="server" Visible="true"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     Follow Instructions</td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label63" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label64" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label65" runat="server" Visible="true"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     Mannerism</td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label66" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label67" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label68" runat="server" Visible="true"></asp:Label>
                 </td>
             </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td class="style4" colspan="2" style="border-style: solid">
                      <strong style="font-size: medium">Co-Curricular Activities</strong></td>
                  <td class="style4" style="border-style: solid">
                      &nbsp;</td>
                  <td class="style4" style="border-style: solid">
                      &nbsp;</td>
             </tr>
              <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid">
                            Recitaton with Action</td>
                        <td class="style5" style="border-style: solid">
                            <asp:Label ID="Label6" runat="server" Visible="true"></asp:Label>
                        </td>
                        <td class="style5" style="border-style: solid">
                            <asp:Label ID="Label9" runat="server" Visible="true"></asp:Label>
                        </td>
                        <td class="style5" style="border-style: solid">
                            <asp:Label ID="Label69" runat="server" Visible="true"></asp:Label>
                        </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid">
                            Dance</td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label70" runat="server" Visible="true"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label71" runat="server" Visible="true"></asp:Label>
                 </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label72" runat="server" Visible="true"></asp:Label>
                 </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                        <td class="style3" style="border-style: solid">
                            Likes to Enjoy Sharing</td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label73" runat="server" Visible="true"></asp:Label>
                        </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label74" runat="server" Visible="true"></asp:Label>
                 </td>
                        <td class="style4" style="border-style: solid">
                            <asp:Label ID="Label75" runat="server" Visible="true"></asp:Label>
                 </td>
                    </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     Draw.&amp;Colouring</td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label76" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label77" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label78" runat="server" Visible="true"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     Other Activities</td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label79" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label80" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label81" runat="server" Visible="true"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style4" colspan="2" style="border-style: solid">
                     <strong style="font-size: medium">Interacts with Others</strong></td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     Enjoy Working in Group</td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label82" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label83" runat="server" Visible="true"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label84" runat="server" Visible="true"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     &nbsp;</td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label85" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label86" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="style4" style="border-style: solid">
                     <asp:Label ID="Label87" runat="server" Visible="False"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     Teacher&#39;s Sign.</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     Principal&#39;s Sign.</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3" style="border-style: solid">
                     Parent&#39;s Sign.</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
                 <td class="style4" style="border-style: solid">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="style3">
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
         </table>
  </ContentTemplate> </asp:UpdatePanel>
    <div class="divScroll" align="center">
    
    <table class="style1" bgcolor="#FFFF99" frame="box" 
            rules="all" style="background-color: #FF9966">
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList5_SelectedIndexChanged">
                                <asp:ListItem Value="0">Exam</asp:ListItem>
                                <asp:ListItem Value="T1">First Term</asp:ListItem>
                                <asp:ListItem Value="T2">Second Term</asp:ListItem>
                                <asp:ListItem Value="S1">Third Term</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4" style="color: #0000FF">
                            <asp:TextBox ID="TextBox23" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox24" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox25" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox26" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox27" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox28" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox29" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox30" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox31" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox32" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox33" runat="server" Visible="False" Width="34px" 
                                Wrap="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="Label438" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label439" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label440" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label441" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label442" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label443" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label444" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label445" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label446" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label447" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label448" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            <asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Ok" />
                        </td>
                        <td class="style4">
                            Attendance 
                        <td class="style4">
                            <asp:TextBox ID="TextBox431" runat="server" Visible="true" Width="34px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            Remarks</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox430" runat="server" Visible="true" Width="56px"></asp:TextBox>
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
                            &nbsp;</td>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4" colspan="3">
                            Personal &amp; Social Qualities</td>
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
                            &nbsp;</td>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList7" runat="server">
                                <asp:ListItem Value="A">Regularity</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList9" runat="server">
                                <asp:ListItem Value="A">Cleanliness</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList10" runat="server">
                                <asp:ListItem Value="A">Discipline</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList8" runat="server">
                                <asp:ListItem Value="A">Mannerism</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
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
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4" colspan="3">
                            Co-Curricular Activities</td>
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
                            &nbsp;</td>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList11" runat="server">
                                <asp:ListItem Value="A">Recitation</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList12" runat="server">
                                <asp:ListItem Value="A">Dance</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList13" runat="server">
                                <asp:ListItem Value="A">Craft</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList14" runat="server">
                                <asp:ListItem Value="A">Drawing & Colouring</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList15" runat="server">
                                <asp:ListItem Value="A">Other Activity</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
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
                    </tr>
                    <tr>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4" colspan="3">
                     <span style="font-size: x-large">Interacts with Others</span></td>
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
                            &nbsp;</td>
                        <td class="style4" style="color: #0000FF">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList16" runat="server">
                                <asp:ListItem Value="A">Teacher</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList17" runat="server" Visible="False">
                                <asp:ListItem Value="A">Mates</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
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
                    </tr>
                    </table>
                
               </form>
</body>
</html>
