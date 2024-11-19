<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ramayana_addmission.aspx.cs" Inherits="ramayana_addmission" %>

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
                                &nbsp;</td>
                <td style="text-align: center" class="style10">
                    <strong>Admission Form</strong></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                        </tr>
                    </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                
                    <asp:Image ID="Image2" runat="server" Height="63px" 
                        ImageUrl="~/images/images (1).jpg" Width="61px" />
                
                 
                                
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
                    <asp:ListItem Value="P1">Shri Nabhinandan Digambar Jain English Medium High School</asp:ListItem>
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
                                
                                <asp:TextBox ID="TextBox20" placeholder="Roll Number" runat="server" Width="89px"></asp:TextBox>
                
                 
                            </td>
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
                          <asp:DropDownList ID="DropDownList1" CssClass="wp-form-control wpcf7-text" runat="server">
                              <asp:ListItem Value="0">Date</asp:ListItem>
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
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
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList2" CssClass="wp-form-control wpcf7-text" runat="server">
                              <asp:ListItem Value="0">Month</asp:ListItem>
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList3" CssClass="wp-form-control wpcf7-text" runat="server">
                              <asp:ListItem Value="0">Year</asp:ListItem>
                              <asp:ListItem>2017</asp:ListItem>
                              <asp:ListItem>2016</asp:ListItem>
                              <asp:ListItem>2015</asp:ListItem>
                              <asp:ListItem>2014</asp:ListItem>
                              <asp:ListItem>2013</asp:ListItem>
                              <asp:ListItem>2012</asp:ListItem>
                              <asp:ListItem>2011</asp:ListItem>
                              <asp:ListItem>2010</asp:ListItem>
                              <asp:ListItem>2009</asp:ListItem>
                              <asp:ListItem>2008</asp:ListItem>
                              <asp:ListItem>2007</asp:ListItem>
                              <asp:ListItem>2006</asp:ListItem>
                          <asp:ListItem>2005</asp:ListItem>
                              <asp:ListItem>2004</asp:ListItem>
                              <asp:ListItem>2003</asp:ListItem>
                              <asp:ListItem>2002</asp:ListItem>
                              <asp:ListItem>2001</asp:ListItem>
                              <asp:ListItem>2000</asp:ListItem>
                              <asp:ListItem>1999</asp:ListItem>
                              <asp:ListItem>1998</asp:ListItem>
                              <asp:ListItem>1997</asp:ListItem>
                              <asp:ListItem>1996</asp:ListItem>
                              <asp:ListItem>1995</asp:ListItem>
                              <asp:ListItem>1994</asp:ListItem>
                              <asp:ListItem>1993</asp:ListItem>
                              <asp:ListItem>1992</asp:ListItem>
                              <asp:ListItem>1991</asp:ListItem>
                              <asp:ListItem>1990</asp:ListItem>
                              <asp:ListItem>1989</asp:ListItem>
                              <asp:ListItem>1988</asp:ListItem>
                              <asp:ListItem>1987</asp:ListItem>
                              <asp:ListItem>1986</asp:ListItem>
                              <asp:ListItem>1985</asp:ListItem>
                              <asp:ListItem>1984</asp:ListItem>
                              <asp:ListItem>1983</asp:ListItem>
                              <asp:ListItem>1982</asp:ListItem>
                              <asp:ListItem>1981</asp:ListItem>
                              <asp:ListItem>1980</asp:ListItem>
                              <asp:ListItem>1979</asp:ListItem>
                              <asp:ListItem>1978</asp:ListItem>
                              <asp:ListItem>1977</asp:ListItem>
                              <asp:ListItem>1976</asp:ListItem>
                              <asp:ListItem>1975</asp:ListItem></asp:DropDownList>
                
                 
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
                                &nbsp;</td>
                            <td>
                
                            <asp:TextBox ID="TextBox26" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Previous School Name" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                            <asp:TextBox ID="TextBox27" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Dice Code" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                            <asp:TextBox ID="TextBox28" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Previous Class" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                
                            <asp:TextBox ID="TextBox29" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Qualified Year" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                            <asp:TextBox ID="TextBox30" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Previous Grade/Percentage" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                            <asp:TextBox ID="TextBox31" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Previous Subject" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                       
                       
                        <tr>
                            <td colspan="3" class="style8">
                                <strong>Bank Details</strong></td>
                            <td>
                
                                &nbsp;</td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                
                            <asp:TextBox ID="TextBox34" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Bank Name" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                            <asp:TextBox ID="TextBox35" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Account Number" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                            <asp:TextBox ID="TextBox36" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="IFSC Code" Width="119px"></asp:TextBox>
                            </td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                
                            <asp:TextBox ID="TextBox25" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="SamagrahID" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                            <asp:TextBox ID="TextBox37" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Aadhar Number" Width="119px"></asp:TextBox>
                            </td>
                            <td>
                
                                &nbsp;</td>
                        </tr>
                       
                       
                        <tr>
                            <td colspan="4">
                                  <table class="style7" align="center">
                        <tr>
                           
                            <td align="center">
                                <asp:Button ID="submit_Login" runat="server" Text="Submit" BackColor="#0066FF" 
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
