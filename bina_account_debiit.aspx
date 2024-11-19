<%@ Page Title="" Language="C#" MasterPageFile="~/account_master.master" AutoEventWireup="true" CodeFile="bina_account_debiit.aspx.cs" Inherits="account_debiit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div align="center" style="background-color: #FF9966">
    <table >
     <tr>
                <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/images/bina_logo.jpg" onclick="ImageButton1_Click" 
                                    Width="92px" />
                </td>
                <td class="style3" align="center">
                    <span style="font-size: xx-large"><strong>Debit Page</strong></span><br />
                </td>
            </tr></table><div class="blog-center">
    
    <table class="style1" bgcolor="#FF9966" width="100%">
        <tr>
            <td colspan="2" bgcolor="#FF9966">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#FF9966" align="center" style="border-style: groove">
                
                    <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem Value="0">School Name</asp:ListItem>
                    <asp:ListItem Value="001">Shri Nabhinandan Digambar Jain English Medium High School</asp:ListItem>
                     <asp:ListItem Value="002">श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक कन्या विद्यालय बीना</asp:ListItem>
                    <asp:ListItem Value="003"> श्री नाभिनन्दन दिगंबर जैन उच्च. माध्यमिक कन्या विद्यालय बीना</asp:ListItem>
                    <asp:ListItem Value="004">श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक संस्कृत विद्यालय बीना</asp:ListItem>
                  
                    </asp:DropDownList>
                
                 
                            <br />
                <asp:DropDownList ID="DropDownList4" runat="server" 
            >
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
    
                <asp:DropDownList ID="DropDownList6" runat="server" 
            >
                    <asp:ListItem Value="0">Section</asp:ListItem>
                    <asp:ListItem Value="A">A</asp:ListItem>
                    <asp:ListItem Value="B">B</asp:ListItem>
                    <asp:ListItem Value="C">C</asp:ListItem>
                    <asp:ListItem Value="D">D</asp:ListItem>
                </asp:DropDownList>
    
                &nbsp;
    
                <br />
    
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Find" />
    
            &nbsp;&nbsp;
                    
            </td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#FF9966" align="center">
                OR</td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#FF9966" align="center" style="border-style: groove">
                <asp:TextBox ID="TextBox22" placeholder="Enter Rollno" runat="server"></asp:TextBox>
    
                &nbsp;<br />
                <asp:Button ID="Button6" runat="server" onclick="Buttonfind_Click" 
                    Text="Find" />
    
                <br />
                <asp:TextBox ID="TextBox25" placeholder="Enter Rollno" runat="server"></asp:TextBox>
    
                <br />
    
                <asp:Button ID="Button8" runat="server" onclick="Button_receipt_Click" 
                    Text="Receipt Print" />
    
            </td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#FF9966" style="color: #0000FF" align="center">
                &nbsp;<asp:TextBox ID="TextBox23" placeholder="Enter Debit Reason" runat="server" TextMode="MultiLine"></asp:TextBox>
    
                &nbsp;<asp:TextBox ID="TextBox24" placeholder="Enter Debit Amount" runat="server" 
                    Width="139px"></asp:TextBox>
    
            </td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#FF9966" style="color: #0000FF">
                
               </td>
        </tr>
        <tr>
            <td bgcolor="#FF9966">
                &nbsp;</td>
            <td bgcolor="#FF9966">
               
            </td>
        </tr>
        </table>
        </div>
        <div class="divScroll" align="center">

        <asp:GridView ID="GridView1" runat="server"  Width = "550px"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" ShowFooter = "True"  
        BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center">
       <Columns>
      
            
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Student Roll No">
           <HeaderTemplate>
                <asp:Button ID="btn_chk" runat="server" Text="Flip" OnClick = "Change_abstent" />
            </HeaderTemplate>
           <ItemTemplate>
           <table style="width: 100%">
            <tr>
                <td>
                     <asp:CheckBox ID="rd_p" Checked="true" runat="server" Text="Debit"/>
       </td>
            </tr>
           
        </table>
           
       
            </ItemTemplate>
             <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Debit" OnClick = "AddNewCustomer" />
            </FooterTemplate>

<ItemStyle Width="30px"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Student Roll No">
            <ItemTemplate>
                <asp:Label ID="lblst_rollno" runat="server" Text='<%# Eval("st_rollno")%>'></asp:Label>
            </ItemTemplate> 
          
<ItemStyle Width="30px"></ItemStyle>
          
        </asp:TemplateField> 
          
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Student Name">
            <ItemTemplate>
                <asp:Label ID="lblst_name" runat="server" Text='<%# Eval("st_firname")%>'></asp:Label>
            </ItemTemplate> 
           
           <EditItemTemplate>
                <asp:TextBox ID="txtst_name" runat="server" Text='<%# Eval("st_firname")%>'></asp:TextBox>
            </EditItemTemplate>  
            
            
<ItemStyle Width="30px"></ItemStyle>
            
            
        </asp:TemplateField> 
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Father Name">
            <ItemTemplate>
                <asp:Label ID="lblst_father_name" runat="server" Text='<%# Eval("st_father")%>'></asp:Label>
            </ItemTemplate> 
            
           <EditItemTemplate>
                <asp:TextBox ID="txtst_father_name" runat="server" Text='<%# Eval("st_father")%>'></asp:TextBox>
            </EditItemTemplate>  
         
<ItemStyle Width="30px"></ItemStyle>
         
        </asp:TemplateField> 
          
          
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Contact No.">
            <ItemTemplate>
                <asp:Label ID="lblst_mobile" runat="server" Text='<%# Eval("st_father_mobile")%>'></asp:Label>
            </ItemTemplate> 
           
           <EditItemTemplate>
                <asp:TextBox ID="txtst_mobile" runat="server" Text='<%# Eval("st_father_mobile")%>'></asp:TextBox>
            </EditItemTemplate>  
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField> 
          
          
        
        
      <%--  <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "CustomerID">
            <ItemTemplate>
                <asp:Label ID="lblCustomerID" runat="server" Text='<%# Eval("CustomerID")%>'></asp:Label>
            </ItemTemplate> 
            <FooterTemplate>
                <asp:TextBox ID="txtCustomerID" Width = "40px" MaxLength = "5" runat="server"></asp:TextBox>
            </FooterTemplate> 
        </asp:TemplateField> 
        <asp:TemplateField ItemStyle-Width = "100px"  HeaderText = "Name">
            <ItemTemplate>
                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("ContactName")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtContactName" runat="server" Text='<%# Eval("ContactName")%>'></asp:TextBox>
            </EditItemTemplate>  
            <FooterTemplate>
                <asp:TextBox ID="txtContactName" runat="server"></asp:TextBox>
            </FooterTemplate> 
        </asp:TemplateField>
        <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Company">
            <ItemTemplate>
                <asp:Label ID="lblCompany" runat="server" Text='<%# Eval("CompanyName")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtCompany" runat="server" Text='<%# Eval("CompanyName")%>'></asp:TextBox>
            </EditItemTemplate>  
            <FooterTemplate>
                <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
            </FooterTemplate> 
        </asp:TemplateField>--%>
       

       <%-- <asp:CommandField  ShowEditButton="True" /> --%>
       </Columns> 
           <FooterStyle BackColor="White" ForeColor="#000066" />

<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>
           <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
           <RowStyle ForeColor="#000066" />
           <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F1F1F1" />
           <SortedAscendingHeaderStyle BackColor="#007DBB" />
           <SortedDescendingCellStyle BackColor="#CAC9C9" />
           <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
            <asp:Panel ID="panel1" runat="server">
                <br />
                <table align="center" class="style7" style="border-bottom-style: solid">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/images/bina_logo.jpg" onclick="ImageButton1_Click" 
                        Width="92px" />
                            <br />
                            <asp:Button ID="Button7" runat="server" onclick="Button7_Click1" Text="Print" />
                        </td>
                        <td style="text-align: center">
                            <span class="style5"><span style="font-size: small">
                            <br />
                            </span><strong>School Receipt</strong></span></td>
                    </tr>
                </table>
                <table align="center" class="nav-justified">
                    <tr>
                        <td bgcolor="#FF9966" 
                            align="left" style="border-bottom-style: none; color: #0000FF;">
                Name</td>
                        <td bgcolor="#FF9966" align="left" style="border-bottom-style: solid;">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" class="style2" 
                            
                            style="color: #0000FF; border-bottom-style: none;" 
                            >
                            Date of Birth</td>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-bottom-style: solid;">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" class="style2" 
                            style="color: #0000FF; border-bottom-style: none;">
                            Contact No.</td>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-bottom-style: solid;">
                            <asp:Label ID="Label9" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" 
                            style="color: #0000FF; border-bottom-style: none;">
                            Class_Section</td>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-bottom-style: solid;">
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                            -<asp:Label ID="Label8" runat="server"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" class="style2" 
                            
                            style="color: #0000FF; border-bottom-style: none;">
                            Mother_Name</td>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-bottom-style: solid;">
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" class="style2" 
                            style="color: #0000FF; border-bottom-style: none;">
                            Father_Name</td>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-bottom-style: solid;">
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="GridView2" runat="server"  Width = "550px"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" ShowFooter = "True"  
        BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            HorizontalAlign="Center" 
            onselectedindexchanged="GridView2_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#C2D69B"></AlternatingRowStyle>
                    <Columns>
                        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Student Roll No">
                            <ItemTemplate>
                                <table style="width: 100%">
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="rd_p" Checked="false" runat="server" Text="Debit"/>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Button ID="btnAdd2" runat="server" Text="Debit" OnClick = "AddNew_debit" />
                            </FooterTemplate>
                            <ItemStyle Width="30px"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Paid">
                            <ItemTemplate>
                                <asp:Label ID="lblPaid" runat="server" Text='<%# Eval("Paid")%>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="30px"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width = "5px"  HeaderText = "Remaining ">
                            <ItemTemplate>
                                <asp:TextBox ID="lblRemaining" runat="server" Text='<%# Eval("Remaining")%>' Width="80px"></asp:TextBox>
                            </ItemTemplate>
                            <ItemStyle Width="10px"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Total">
                            <ItemTemplate>
                                <asp:Label ID="lblTotal" runat="server" Text='<%# Eval("Total")%>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="30px"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width = "10px"  HeaderText = "Note ">
                            <ItemTemplate>
                                <asp:TextBox ID="lblNote" runat="server" Text=''></asp:TextBox>
                            </ItemTemplate>
                            <ItemStyle Width="30px"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Reason">
                            <ItemTemplate>
                                <asp:Label ID="lblamt_message" runat="server" Text='<%# Eval("amt_message")%>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<br/><br/>'></asp:Label>
                                <asp:Label ID="cash_sigh" runat="server" Text='Cashier'></asp:Label>
                            </FooterTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White">
                    </HeaderStyle>
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="width: 438px">
                    &nbsp;</td>
                        <td align="right">
                    &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 438px">
                    &nbsp;</td>
                        <td>
                    Cashier</td>
                    </tr>
                </table>
            </asp:Panel>
    </div>
    <div class="divScroll" align="center">
    <asp:Panel ID="panel2" runat="server">
        <br />
        <table><tr>
        <td>    <table align="center" class="style7" 
            style="border-bottom-style: solid; font-size: small;">
            <tr>
                <td>
                    <br />
                    <br />Parent  
                        Copy<br />
                    </td>
                <td style="text-align: center">
                    <span class=""> <span style="font-size:large">
                    <asp:Panel ID="Panel3" runat="server">
                        Shri Nabhinandan Digambar Jain English Medium High School<br /> </asp:Panel>
                    <asp:Panel ID="Panel4" runat="server">
                        श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक कन्या विद्यालय बीना</asp:Panel>
                    <asp:Panel ID="Panel5" runat="server">
                        श्री नाभिनन्दन दिगंबर जैन उच्च. माध्यमिक कन्या विद्यालय बीना</asp:Panel>
                    <asp:Panel ID="Panel6" runat="server">
                        श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक संस्कृत विद्यालय बीना</asp:Panel>
                    </span><strong><span style="font-size: small">
                    
                    Receipt</span> </strong></span></td>
            </tr>
        </table></td>
        <td>---</td>
        <td>   <table align="center" class="style7" 
            style="border-bottom-style: solid; font-size: small;">
            <tr>
                <td rowspan="2">
                    <br />
                    <asp:Button ID="Button9" runat="server" onclick="Button77_Click1" 
                        Text="Print" />
                    <br />School  
                        Copy<span class="style5"><span style="font-size: small">
                  </span></span></td>
                <td style="text-align: center">
                    <span class=""><strong><span style="font-size: small">
                    <asp:Label ID="Label44" runat="server"></asp:Label>
                    </span></strong></span>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <span class=""><strong><span style="font-size: small">
                     </span>Receipt</strong></span>
                </td>
            </tr>
        </table></td>
        </tr>
        
        
        <tr>
        <td> <table align="center" class="nav-justified" style="border-style: groove">
                    <tr>
            <td bgcolor="#FF9966" 
                            align="left" style="border-style: groove;">
                <span class="style5"><span style="font-size: small">Receipt No.
                <asp:Label ID="Label16" runat="server"></asp:Label>
                </span></span>
                        </td>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-style: groove;">
                            Date:<span class="style5"><span style="font-size: small"><asp:Label 
                                ID="Label17" runat="server"></asp:Label>
                            </span></span>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            Student Roll No.</td>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label14" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label18" runat="server" Text="Name"></asp:Label>
                            <asp:Label ID="Label19" runat="server" Text="नाम"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                            <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-style: groove;">
                            <asp:Label ID="Label22" runat="server" Text="Father Name"></asp:Label>
                            <asp:Label ID="Label23" runat="server" Text="पिता का नाम"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-style: groove;">
                            <asp:Label ID="Label15" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label24" runat="server" Text="Class_Section"></asp:Label>
                            <asp:Label ID="Label25" runat="server" Text="कक्षा वर्ग"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label12" runat="server"></asp:Label>
                            -<asp:Label ID="Label13" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label20" runat="server" Text="Contact No."></asp:Label>
                            <asp:Label ID="Label21" runat="server" Text="फ़ोन न."></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label11" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table></td>
        <td>---</td>
        <td>  <table align="center" class="nav-justified" style="border-style: groove">
                    <tr>
            <td bgcolor="#FF9966" 
                            align="left" style="border-style: groove;">
                <span class="style5"><span style="font-size: small">Receipt No.
                <asp:Label ID="Label27" runat="server"></asp:Label>
                </span></span>
                        </td>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-style: groove;">
                            Date:<span class="style5"><span style="font-size: small"><asp:Label 
                                ID="Label26" runat="server"></asp:Label>
                            </span></span>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            Student Roll No.</td>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label61" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label28" runat="server" Text="Name"></asp:Label>
                            <asp:Label ID="Label29" runat="server" Text="नाम"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label30" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-style: groove;">
                            <asp:Label ID="Label40" runat="server" Text="Father Name"></asp:Label>
                            <asp:Label ID="Label41" runat="server" Text="पिता का नाम"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" 
                            style="border-style: groove;">
                            <asp:Label ID="Label42" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label35" runat="server" Text="Class_Section"></asp:Label>
                            <asp:Label ID="Label36" runat="server" Text="कक्षा वर्ग"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label37" runat="server"></asp:Label>
                            -<asp:Label ID="Label38" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label32" runat="server" Text="Contact No."></asp:Label>
                            <asp:Label ID="Label33" runat="server" Text="फ़ोन न." Visible="False"></asp:Label>
                        </td>
                        <td align="left" bgcolor="#FF9966" style="border-style: groove;">
                            <asp:Label ID="Label34" runat="server"></asp:Label>
                            <asp:Label ID="Label39" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="Label31" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table></td></tr>



        <tr>
        <td> <asp:GridView ID="GridView3" runat="server"  Width = "366px"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" ShowFooter = "True"  
        BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            HorizontalAlign="Center" 
            onselectedindexchanged="GridView2_SelectedIndexChanged">
<AlternatingRowStyle BackColor="#C2D69B"></AlternatingRowStyle>
       <Columns>
      
            
         
             
           
       
       
       
          
         
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Reason">
            <ItemTemplate>
                <asp:Label ID="lblamt_message" runat="server" Text='<%# Eval("amt_message")%>'></asp:Label>
            </ItemTemplate> 
           <FooterTemplate> 
           <asp:Label ID="Label1" runat="server" Text='<br/><br/>'></asp:Label>
          <asp:Label ID="cash_sigh" runat="server" Text=''></asp:Label>
            </FooterTemplate>
          
        </asp:TemplateField> 
          
            <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Paid">
            <ItemTemplate>
                <asp:Label ID="lblPaid" runat="server" Text='<%# Eval("Paid")%>'></asp:Label>
            </ItemTemplate> 
           
           
            
            
<ItemStyle Width="30px"></ItemStyle>
            
            
        </asp:TemplateField> 
       </Columns> 
           <FooterStyle BackColor="White" ForeColor="#000066" />

<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>
           <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
           <RowStyle ForeColor="#000066" />
           <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F1F1F1" />
           <SortedAscendingHeaderStyle BackColor="#007DBB" />
           <SortedDescendingCellStyle BackColor="#CAC9C9" />
           <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView></td>
        <td>---</td>
        <td>  <asp:GridView ID="GridView4" runat="server" 
            AlternatingRowStyle-BackColor="#C2D69B" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" Font-Names="Arial" Font-Size="11pt" 
            HeaderStyle-BackColor="green" HorizontalAlign="Center" 
            onselectedindexchanged="GridView2_SelectedIndexChanged" ShowFooter="True" 
            Width="366px">
            <AlternatingRowStyle BackColor="#C2D69B" />
            <Columns>
                <asp:TemplateField HeaderText="Reason" ItemStyle-Width="30px">
                    <ItemTemplate>
                        <asp:Label ID="lblamt_message0" runat="server" Text='<%# Eval("amt_message")%>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Label ID="Label43" runat="server" Text="&lt;br/&gt;&lt;br/&gt;"></asp:Label>
                        <asp:Label ID="cash_sigh0" runat="server" Text=""></asp:Label>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Paid" ItemStyle-Width="30px">
                    <ItemTemplate>
                        <asp:Label ID="lblPaid0" runat="server" Text='<%# Eval("Paid")%>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="30px" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView></td></tr>


        <tr>
        <td>  <table style="width: 100%">
            <tr>
                <td style="width: 438px">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 438px">
                    &nbsp;</td>
                <td>
                    Cashier</td>
            </tr>
        </table></td>
        <td>---</td>
        <td>  <table style="width: 100%">
            <tr>
                <td style="width: 438px">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 438px">
                    &nbsp;</td>
                <td>
                    Cashier</td>
            </tr>
        </table></td></tr>
        </table>
    
   

       
        
        <br />
        
      
        
        <br />
     
      
      
        <br />
        
    </asp:Panel>
    </div>
        </div>
        
</asp:Content>

