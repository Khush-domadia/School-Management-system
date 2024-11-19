<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bina_hindi_TC.aspx.cs" Inherits="ramayana_addmission" %>

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
            text-align: center;
            font-weight: 700;
        }
        .style7
        {
            width: 100%;
        }
        .style9
        {
            font-size: x-large;
        }
        .wpcf7-text
        {}
        .style11
        {
            text-align: center;
            font-weight: 700;
            font-size: medium;
        }
        .style12
        {
            text-align: right;
        }
        .style14
        {
            font-weight: normal;
        }
        .style15
        {
            text-align: center;
            font-weight: 700;
            font-size: x-large;
        }
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
                                &nbsp;</td>
                <td style="text-align: center" class="style9" colspan="2">
                    <strong><asp:Panel ID="Panel4" runat="server">
                        श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक कन्या विद्यालय बीना
                        <br />
                        डाइस कोड: 23110418802</asp:Panel>
                    <asp:Panel ID="Panel5" runat="server">
                        श्री नाभिनन्दन दिगंबर जैन उच्च. माध्यमिक कन्या विद्यालय बीना
                        <br />
                        डाइस कोड: 23110418301</asp:Panel>
                    <asp:Panel ID="Panel6" runat="server">
                        श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक संस्कृत विद्यालय बीना
                        <br />
                        डाइस कोड: 23110418801</asp:Panel></strong></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/images/bina_logo.jpg" onclick="ImageButton1_Click" 
                                    Width="63px" />
                            </td>
                <td class="style15" colspan="2">
                                
                                स्थानांतरण प्रमाण पत्र</td>
                        </tr>
                        <tr>
                            <td>
                                बुक क्रमांक............</td>
                <td class="style3">
                                
                                <span class="style14">&nbsp; प्रमाण क्रमांक ..........</span>&nbsp;&nbsp;
                
                 
                            </td>
                <td class="style3">
                                
                                <span class="style14">स्कॉलर क्रमांक</span><asp:TextBox ID="TextBox20" placeholder="Roll Number" runat="server" Width="89px"></asp:TextBox>
                
                 
                                <asp:Button ID="submit_Login1" runat="server" Text="Find" BackColor="#0066FF" 
                    BorderStyle="Groove" ForeColor="#FF3300"  
                    onclick="btn_find_Click" Height="25px" Width="63px"/>
                
                 
                            </td>
                        </tr>
                    </table>
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
                            <td colspan="4">
                                यह प्रमाणित किया जाता है कि कु.&nbsp; 
                
                         <asp:TextBox ID="TextBox12" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="First Name" Width="127px"></asp:TextBox>
                
                 
                            &nbsp;पिता का नाम श्री
                             <asp:TextBox ID="TextBox2" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Father Name" Width="250px"></asp:TextBox>
                            &nbsp;माता का नाम
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="wp-form-control wpcf7-text" 
                                    placeholder="Mother Name" Width="252px"></asp:TextBox>
                            &nbsp;जाति
                
                            <asp:TextBox ID="TextBox7" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Caste"></asp:TextBox>
                
                 
                            &nbsp;वर्ग
                
                            <asp:TextBox ID="TextBox53" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Caste"></asp:TextBox>
                
                 
                            &nbsp;इस विघालय में दिनांक
                
                            <asp:TextBox ID="TextBox23" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Admission Date" Width="119px"></asp:TextBox>
                            &nbsp;से दिनांक
                
                            <asp:TextBox ID="TextBox54" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Admission Date" Width="119px"></asp:TextBox>
                            &nbsp;तक उपस्थित रहा/रही |
                                <br />
                                <br />
                                छात्र आज दिनांक
                
                            <asp:TextBox ID="TextBox55" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Admission Date" Width="119px"></asp:TextBox>
                            &nbsp;को विघालय छोड़ रहा है | इनके द्वारा विघालय द्वारा नियमित सभी शुल्क का भुगतान कर 
                                दिया गया है तथा अदेय प्रमाण पत्र प्राप्त कर लिया गया है |
                                <br />
                                <br />
                                विघालय की प्रवेश पंजी के पृष्ठ क्रमांक
                
                            <asp:TextBox ID="TextBox56" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Admission Date" Width="119px"></asp:TextBox>
                            &nbsp;के अनुसार इनकी जन्म तिथी अंको मे
                
                         <asp:TextBox ID="TextBox38" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="First Name" Width="127px"></asp:TextBox>
                
                 
                            &nbsp;शब्दो मे
                
                         <asp:TextBox ID="TextBox57" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="First Name" Width="127px"></asp:TextBox>
                
                 
                            &nbsp;है |
                                <br />
                                <br />
                                छात्र द्वारा इस विद्यालय से कक्षा
                            <asp:TextBox ID="TextBox24" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="11th/12th Class Subject" Width="119px"></asp:TextBox>
                            &nbsp;माध्यम
                            <asp:TextBox ID="TextBox58" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="11th/12th Class Subject" Width="119px"></asp:TextBox>
                            &nbsp;वर्ग
                            <asp:TextBox ID="TextBox59" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="11th/12th Class Subject" Width="119px"></asp:TextBox>
                            &nbsp;मे दी गई तथा इनका परीक्षा परिणाम
                            <asp:TextBox ID="TextBox60" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="11th/12th Class Subject" Width="119px"></asp:TextBox>
                                &nbsp;रहा | उसे कक्षा <asp:TextBox ID="TextBox61" 
                                    CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="11th/12th Class Subject" Width="119px"></asp:TextBox>
                            &nbsp;मे प्रवेश दिया गया था | इनका आचरण
                            <asp:TextBox ID="TextBox62" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="11th/12th Class Subject" Width="119px"></asp:TextBox>
                            &nbsp;है |
                                <br />
&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <br />
                                दिनांक </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                <table class="style7">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style12">
                                प्राचार्य
                                <br />
                                संस्था का नाम एवं पद मुद्रा</td>
                                    </tr>
                                </table>
                                <br />
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
                            <td colspan="4">
                                  <table class="style7" align="center">
                        <tr>
                           
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                         <tr>
                           
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                    </table>
                    
                          </div></div></form>
                </body>
</html>
