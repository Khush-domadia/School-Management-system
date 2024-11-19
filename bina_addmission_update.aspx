<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bina_addmission_update.aspx.cs" Inherits="ramayana_addmission" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admission form</title>
    <%--   <meta charset="utf-8">--%>
    
    <style type="text/css">
        .style1
        {
            text-align: justify;
        }
        .style3
        {
            text-align: right;
            font-weight: 700;
        }
        .style7
        {
            width: 100%;
        }
        .style8
        {
            font-size: large;
        }
        .style9
        {
            font-size: x-large;
        }
        .style10
        {
            font-size: xx-large;
        }
        .wpcf7-text
        {}
        </style>
    
</head>
<body bgcolor="#ffcc99">
    <form id="form1" runat="server">
    <div>
     <div>
        <table align="left" cellpadding="4" class="style1" width="100%">
            <tr>
                <td colspan="4">
       
                    <table align="center">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/images/bina_logo.jpg" onclick="ImageButton1_Click" 
                                    Width="92px" />
                            </td>
                <td style="text-align: center" class="style10">
                    <strong>Update Admission Form</strong></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                <td class="style3">
                                
                                <asp:TextBox ID="TextBox20" placeholder="Roll Number" runat="server" Width="89px"></asp:TextBox>
                
                 
                                <asp:Button ID="submit_Login1" runat="server" Text="Find" BackColor="#0066FF" 
                    BorderStyle="Groove" ForeColor="#FF3300"  
                    onclick="btn_find_Click" Height="27px" Width="63px"/>
                
                 
                            </td>
                        </tr>
                    </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                
                    <asp:Image ID="Image2" runat="server" Height="63px" 
                        ImageUrl="~/images/bina_logo.jpg" Width="61px" />
                
                 
                                
                                <br />
                                <asp:Button ID="submit_Login0" runat="server" Text="Show" BackColor="#0066FF" 
                    BorderStyle="Groove" ForeColor="#FF3300"  
                    onclick="btn_show_Click" Height="22px" Width="59px"/>
                
                 
                                
                                <br />
                
                 
                                
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="63px" />
                                
                 
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                
                 
                                
                                <br />
                                <br />
                
                 
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                
                    <asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem Value="0">School Name</asp:ListItem>
                    <asp:ListItem Value="001">Shri Nabhinandan Digambar Jain English Medium High School</asp:ListItem>
                     <asp:ListItem Value="002">श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक कन्या विद्यालय बीना</asp:ListItem>
                    <asp:ListItem Value="003"> श्री नाभिनन्दन दिगंबर जैन उच्च. माध्यमिक कन्या विद्यालय बीना</asp:ListItem>
                    <asp:ListItem Value="004">श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक संस्कृत विद्यालय बीना</asp:ListItem>
                  
                    </asp:DropDownList>
                
                 
                            </td>
                            <td>
                
                 
                                
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                
                                &nbsp;</td>
                            <td>
                
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem Value="0">Class</asp:ListItem>
                   <asp:ListItem Value="P1">Pre-Nursery </asp:ListItem>
                    <asp:ListItem Value="N1">Nursery </asp:ListItem>
                    <asp:ListItem Value="L1">LKG</asp:ListItem>
                  <asp:ListItem Value="U2">UKG</asp:ListItem>
                    <asp:ListItem Value="01">1</asp:ListItem>
                    <asp:ListItem Value="02">2</asp:ListItem>
                    <asp:ListItem Value="03">3</asp:ListItem>
                    <asp:ListItem Value="04">4</asp:ListItem>
                    <asp:ListItem Value="05">5</asp:ListItem>
                    <asp:ListItem Value="06">6</asp:ListItem>
                    <asp:ListItem Value="07">7</asp:ListItem>
                    <asp:ListItem Value="08">8</asp:ListItem>
                    <asp:ListItem Value="09">9</asp:ListItem>
                    <asp:ListItem Value="10">10</asp:ListItem>
                    <asp:ListItem Value="11">11</asp:ListItem>
                    <asp:ListItem Value="12">12</asp:ListItem>
                    </asp:DropDownList>
                
                 
                            </td>
                            <td>
                
                    <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem Value="0">Section</asp:ListItem>
                    <asp:ListItem Value="P1">A</asp:ListItem>
                    <asp:ListItem Value="N1">B</asp:ListItem>
                    <asp:ListItem Value="L1">D</asp:ListItem>
                    
                    </asp:DropDownList>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Name</td>
                            <td>
                
                         <asp:TextBox ID="TextBox12" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="First Name" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                         <asp:TextBox ID="TextBox11" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="Middle Name" Width="122px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                         <asp:TextBox ID="TextBox10" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="Surname"></asp:TextBox>
                
                 
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                Date of Birth</td>
                            <td class="style8" colspan="2">
                
                         <asp:TextBox ID="TextBox38" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="First Name" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td class="style8">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Father&#39;s Name</td>
                            <td colspan="2">
                             <asp:TextBox ID="TextBox2" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Father Name" Width="250px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Mother&#39;s Name</td>
                            <td class="style9" colspan="2">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="wp-form-control wpcf7-text" 
                                    placeholder="Mother Name" Width="252px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                </td>
                        </tr>
                        <tr>
                            <td>
                                Caste /Category /Religion</td>
                            <td>
                
                            <asp:TextBox ID="TextBox7" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Caste"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                            <asp:TextBox ID="TextBox13" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Category" Width="120px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                            <asp:TextBox ID="TextBox21" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Religion" Width="120px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Length of Stay in MP</td>
                            <td>
                
                         <asp:TextBox ID="TextBox16" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="Indian"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                         <asp:TextBox ID="TextBox17" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="Mother Tongue" Width="113px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Father&#39;s Occupation</td>
                            <td>
                            <asp:TextBox ID="TextBox8" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Father Occupation"></asp:TextBox>
                            </td>
                            <td>
                            <asp:TextBox ID="TextBox4" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Contact Number" Width="112px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:TextBox ID="TextBox22" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Annual Income" Width="112px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mother&#39;s Occupation</td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="wp-form-control wpcf7-text" 
                                    placeholder="Mother Occupation"></asp:TextBox>
                            </td>
                            <td>
                            <asp:TextBox ID="TextBox5" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Alternate Contact Number" Width="111px"></asp:TextBox>
                      
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Sibling</td>
                            <td>
                                <asp:TextBox ID="TextBox32" runat="server" CssClass="wp-form-control wpcf7-text" 
                                    placeholder="Sibling Name in School"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox33" runat="server" CssClass="wp-form-control wpcf7-text" 
                                    placeholder="Class Name"></asp:TextBox>
                      
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Residential Address</td>
                            <td colspan="2">
                
                         <asp:TextBox ID="TextBox18" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="265px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                            <asp:TextBox ID="TextBox14" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Contact Number" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Permanent Address</td>
                            <td colspan="2">
                
                         <asp:TextBox ID="TextBox19" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="265px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                Addmission Date</td>
                            <td colspan="2">
                
                            <asp:TextBox ID="TextBox23" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Admission Date" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:TextBox ID="TextBox24" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="11th/12th Class Subject" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td colspan="2">
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                       
                       
                        <tr>
                            <td colspan="4" class="style8">
                                <strong>Previous School Details</strong></td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                Previous School&nbsp; Name</td>
                            <td>
                
                            <asp:TextBox ID="TextBox26" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Previous School Name" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                                Previous Class</td>
                            <td>
                
                            <asp:TextBox ID="TextBox28" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Previous Class" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                Qualifyinng&nbsp; Year</td>
                            <td>
                
                            <asp:TextBox ID="TextBox29" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Qualified Year" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                                Previous&nbsp; Subject</td>
                            <td>
                
                            <asp:TextBox ID="TextBox31" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Previous Subject" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                Dise&nbsp; Code</td>
                            <td>
                
                            <asp:TextBox ID="TextBox27" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Dise Code" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                                Previous Grade</td>
                            <td>
                
                            <asp:TextBox ID="TextBox30" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Previous Grade/Percentage" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                
                                &nbsp;</td>
                        </tr>
                       
                       
                        <tr>
                            <td colspan="3" class="style8">
                                <strong>Bank Details</strong></td>
                            <td>
                
                                &nbsp;</td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                Bank Name</td>
                            <td>
                
                            <asp:TextBox ID="TextBox34" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Bank Name" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                                IFSC Code</td>
                            <td>
                
                            <asp:TextBox ID="TextBox36" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="IFSC Code" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                Account No.</td>
                            <td>
                
                            <asp:TextBox ID="TextBox35" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Account Number" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                                Aadhar Number</td>
                            <td>
                
                            <asp:TextBox ID="TextBox37" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Aadhar Number" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                Samagra&nbsp; Id</td>
                            <td>
                
                            <asp:TextBox ID="TextBox25" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="SamagraID" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                
                                &nbsp;</td>
                        </tr>
                       
                       
                        <tr>
                            <td colspan="4">
                                  <table class="style7" align="center">
                        <tr>
                           
                            <td align="center">
                                <asp:Button ID="submit_Login" runat="server" Text="Update" BackColor="#0066FF" 
                    BorderStyle="Groove" ForeColor="#FF3300" OnClientClick="return confirm('Do you want to Save?')" 
                    onclick="btn_Login_Click" Height="41px" Width="79px"/>
                            </td>
                        </tr>
                         <tr>
                           
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                    </table>
                    
                          </div></div></form>
                </body>
</html>
