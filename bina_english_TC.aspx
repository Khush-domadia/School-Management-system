<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bina_english_TC.aspx.cs" Inherits="ramayana_addmission" %>

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
        .style10
        {
            font-weight: bold;
            text-align: center;
        }
        .style11
        {
            text-align: center;
            font-weight: 700;
            font-size: medium;
        }
        .style13
        {
            text-align: center;
            font-size: small;
        }
        .style14
        {
            font-weight: normal;
            font-size: small;
        }
        .style15
        {
            text-align: center;
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
                            <td class="style15">
                                &nbsp;</td>
                <td style="text-align: center" class="style9">
                    S<strong>hri Nabhi Nandan Digmber Jain English Medium High School<br />
                    Ahinsa Marg Jawahar Ward Bina Dist-Sagar (M.P.)</strong></td>
                        </tr>
                        <tr>
                            <td class="style10">
                                &nbsp;</td>
                <td class="style13">
                                
                                (AFFILATED TO MP BOARD)</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/images/bina_logo.jpg" onclick="ImageButton1_Click" 
                                    Width="63px" />
                            </td>
                            <td class="style15">
                                
                                TRANSFER CERTIFICATE<br />
                                <span class="style14">DICE CODE:23110418302</span></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                <td class="style13">
                                
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                <td class="style3">
                                
                                Admission Number<asp:TextBox ID="TextBox20" placeholder="Roll Number" runat="server" Width="89px"></asp:TextBox>
                
                 
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
                                Nationality</td>
                            <td>
                
                         <asp:TextBox ID="TextBox16" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="Indian"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Wether Student Belong to SC/ST Category</td>
                            <td>
                
                            <asp:TextBox ID="TextBox7" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Caste"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Aadhar No.</td>
                            <td>
                
                            <asp:TextBox ID="TextBox37" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Aadhar Number" Width="126px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Addmission Date</td>
                            <td colspan="2">
                
                            <asp:TextBox ID="TextBox23" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="Admission Date" Width="125px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:TextBox ID="TextBox24" CssClass="wp-form-control wpcf7-text" runat="server" 
                                    placeholder="11th/12th Class Subject" Width="119px" Visible="False" 
                                    Wrap="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Date of Birth</td>
                            <td>
                
                         <asp:TextBox ID="TextBox38" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="DOB" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td colspan="2">
                
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                
                                (in words)</td>
                            <td colspan="3">
                
                                <asp:TextBox ID="TextBox39" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="401px"></asp:TextBox>
                
                 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Class in Which the Pupil last Studied</td>
                            <td>
                
                         <asp:TextBox ID="TextBox40" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                School Board Annual Examination Last Taken with Result</td>
                            <td>
                
                         <asp:TextBox ID="TextBox41" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Whether Qualified for Promotion to Higher Class </td>
                            <td>
                
                         <asp:TextBox ID="TextBox44" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                If so to which class (in figure)</td>
                            <td>
                
                         <asp:TextBox ID="TextBox45" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td colspan="2">
                
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                
                                (in words)</td>
                            <td colspan="3">
                
                                <asp:TextBox ID="TextBox46" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="401px"></asp:TextBox>
                
                 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Month upto which the (pupil has paid) school dues paid</td>
                            <td>
                
                         <asp:TextBox ID="TextBox47" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                General Conduct</td>
                            <td>
                
                         <asp:TextBox ID="TextBox50" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Date of Application&nbsp; for Certificate</td>
                            <td>
                
                         <asp:TextBox ID="TextBox51" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Date of Issue of Certificate</td>
                            <td>
                
                         <asp:TextBox ID="TextBox52" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Moral Character</td>
                            <td>
                
                         <asp:TextBox ID="TextBox49" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <br />
                                Date</td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                                <br />
                                Signature of Principal</td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                
                         <asp:TextBox ID="TextBox42" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px" Visible="False" Wrap="False"></asp:TextBox>
                
                 
                            </td>
                        </tr>
                       
                       
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                
                         <asp:TextBox ID="TextBox43" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px" Visible="False"></asp:TextBox>
                
                 
                            </td>
                            <td>
                
                                &nbsp;</td>
                            <td>
                
                         <asp:TextBox ID="TextBox48" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="" Width="127px" Visible="False"></asp:TextBox>
                
                 
                            </td>
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
