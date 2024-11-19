<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bina_staff_joining.aspx.cs" Inherits="bina_staff_joining" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center">
                  <tr>
                      <td>
                           &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td style="text-align: center">
                           &nbsp;Personal Data</td>
                      <td style="text-align: center" rowspan="2">
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/images/bina_logo.jpg" onclick="ImageButton1_Click" 
                               Width="92px" />
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <asp:TextBox ID="TextBox10" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="Staff ID"></asp:TextBox>
                 
                      </td>
                  </tr>
                  <tr>
                      <td>
                           <asp:TextBox ID="TextBox1" CssClass="wp-form-control wpcf7-text" runat="server" placeholder="Staff Name"></asp:TextBox>
                
        </td>
                      <td>
</td>
                  </tr>
                  <tr>
                      <td>  <asp:TextBox ID="TextBox2" CssClass="wp-form-control wpcf7-text" runat="server" placeholder="Father Name"></asp:TextBox>
                
                       </td>
                      <td>
                  </td>
                  </tr>
                  <tr>
                      <td>
                            <asp:TextBox ID="TextBox3" CssClass="wp-form-control wpcf7-text" runat="server" placeholder="Mother Name"></asp:TextBox>
                         
</td>
                      <td>
                 </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:DropDownList ID="DropDownList1" runat="server">
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
                          <asp:DropDownList ID="DropDownList2" runat="server">
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
                          <asp:DropDownList ID="DropDownList3" runat="server">
                              <asp:ListItem Value="0">Year</asp:ListItem>
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
                              <asp:ListItem>1975</asp:ListItem>
                          </asp:DropDownList>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:RadioButton CssClass="wp-form-control" ID="RadioButton1" runat="server" GroupName="gender" 
                              Text="Male" Checked="True" />
                          <asp:RadioButton CssClass="wp-form-control wpcf7-text" ID="RadioButton2" runat="server" GroupName="gender" 
                              Text="Female" />
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                       <td>
                            <asp:TextBox ID="TextBox4" CssClass="wp-form-control wpcf7-text" runat="server" placeholder="Contact Number"></asp:TextBox>
                        
</td>
                      <td>
             </td>
                  </tr>
                  <tr>
                       <td>
                            <asp:TextBox ID="TextBox5" CssClass="wp-form-control wpcf7-text" runat="server" placeholder="Alternate Contact Number"></asp:TextBox>
                      
</td>
                      <td>
    </td>
                  </tr>
                  <tr>
                      <td style="height: 22px">
                            <asp:TextBox ID="TextBox11" CssClass="wp-form-control wpcf7-text" 
                                runat="server" placeholder="Email ID"></asp:TextBox>
                      
                      </td>
                      <td style="height: 22px">
                             </td>
                  </tr>
                  <tr>
                      <td style="height: 22px">
                            <asp:TextBox ID="TextBox6" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Permanent Address" TextMode="MultiLine"></asp:TextBox>
                      
                      </td>
                      <td style="height: 22px">
                          </td>
                  </tr>
                  <tr>
                      <td>
                            <asp:TextBox ID="TextBox7" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="City"></asp:TextBox>
                     
                      </td>
                      <td>
                         </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:RadioButton CssClass="wp-form-control" ID="RadioButton3" runat="server" GroupName="state" 
                              Text="Madhya Pradesh" Checked="True" />
                          <asp:RadioButton CssClass="wp-form-control wpcf7-text" ID="RadioButton4" 
                              runat="server" GroupName="state" 
                              Text="Other" />
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                            <asp:TextBox ID="TextBox8" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Father Occupation"></asp:TextBox>
                       
                      </td>
                      <td>
                        </td>
                  </tr>
                  <tr>
                      <td>
                            <asp:TextBox ID="TextBox9" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Mother Occupation"></asp:TextBox>
                     
                      </td>
                      <td>
                        </td>
                  </tr>
                  </table>
                  <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFFF" BorderStyle="Groove" 
                  ForeColor="#FF3300" style="text-align: center">
                      Academics<table align="center">
                          <tr>
                              <td>
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox12" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="10th Percentage"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox13" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="12th Subject" Width="140px"></asp:TextBox>
                                  &nbsp;<asp:TextBox ID="TextBox14" runat="server" BorderColor="#0066CC" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="%" Width="64px"></asp:TextBox>
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox15" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="Bachelor Degree" 
                                      Width="140px"></asp:TextBox>
                                  <asp:TextBox ID="TextBox16" runat="server" BorderColor="#0066CC" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="%" Width="64px"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox17" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="Master Degree" Width="140px"></asp:TextBox>
                                  <asp:TextBox ID="TextBox18" runat="server" BorderColor="#0066CC" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="%" Width="64px"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox19" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="D.Ed. Degree" Width="140px"></asp:TextBox>
                                  <asp:TextBox ID="TextBox20" runat="server" BorderColor="#0066CC" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="%" Width="64px"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox21" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="B.Ed. Degree" Width="140px"></asp:TextBox>
                                  <asp:TextBox ID="TextBox22" runat="server" BorderColor="#0066CC" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="%" Width="64px"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox23" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="M.Ed. Degree" Width="140px"></asp:TextBox>
                                  <asp:TextBox ID="TextBox24" runat="server" BorderColor="#0066CC" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="%" Width="64px"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox25" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="P.hd. Dicipline" 
                                      Width="140px"></asp:TextBox>
                                  <asp:TextBox ID="TextBox26" runat="server" BorderColor="#0066CC" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="%" Width="64px"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox27" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="Diploma" Width="140px"></asp:TextBox>
                                  <asp:TextBox ID="TextBox28" runat="server" BorderColor="#0066CC" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="%" Width="64px"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox29" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="Other" Width="140px"></asp:TextBox>
                                  <asp:TextBox ID="TextBox30" runat="server" BorderColor="#0066CC" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="%" Width="64px"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="TextBox31" runat="server" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="Other" Width="140px"></asp:TextBox>
                                  <asp:TextBox ID="TextBox32" runat="server" BorderColor="#0066CC" 
                                      CssClass="wp-form-control wpcf7-text" placeholder="%" Width="64px"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                      </table>
              </asp:Panel>
                  <table align="center">
                  <tr>
                      <td style="border-style: groove; text-align: left; color: #0000FF;">
                          &nbsp;
                          Office Use Only</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td style="border-style: groove">
                          Joining Date<br />
                          <asp:DropDownList ID="DropDownList6" runat="server">
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
                          <asp:DropDownList ID="DropDownList7" runat="server">
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
                          <asp:DropDownList ID="DropDownList8" runat="server">
                              <asp:ListItem Value="0">Year</asp:ListItem>
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
                              <asp:ListItem>1975</asp:ListItem>
                          </asp:DropDownList>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td style="border-style: groove">
                          <asp:DropDownList ID="DropDownList9" runat="server">
                              <asp:ListItem Value="0">Profile Category</asp:ListItem>
                              <asp:ListItem>Teaching</asp:ListItem>
                              <asp:ListItem>Non-Teaching</asp:ListItem>
                              <asp:ListItem>Other</asp:ListItem>
                             
                          </asp:DropDownList>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td style="border-style: groove">
                            <asp:TextBox ID="TextBox33" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Designation"></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td style="border-style: groove">
                            <asp:TextBox ID="TextBox34" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Salary"></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td style="border-style: groove; text-align: center;">
                
                    <asp:DropDownList ID="DropDownList10" runat="server">
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
                      <td style="border-style: groove">
                            <asp:TextBox ID="TextBox36" CssClass="wp-form-control wpcf7-text" 
                              runat="server" placeholder="Any Condition" TextMode="MultiLine"></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Button ID="submit_Login" runat="server" Text="Submit" BackColor="#0066FF" 
                    BorderStyle="Groove" ForeColor="#FF3300" OnClientClick="return confirm('Do you want to Save?')" 
                    onclick="btn_Login_Click"/>
                    
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
              </table></form>
    </div>
    </form>
</body>
</html>
