<%@ Page Title="" Language="C#" MasterPageFile="~/account_master.master" AutoEventWireup="true" CodeFile="bina_staff_account.aspx.cs" Inherits="account_credit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" style="background-color: #FF9966"><table>
     <tr>
                <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/images/bina_logo.jpg" onclick="ImageButton1_Click" 
                                    Width="92px" />
                </td>
                <td class="style3" align="center">
                    <span class="style5"><br />
                    </span>
                </td>
                <td class="style3" align="center" style="font-size: xx-large">
                    Staff Account</td>
            </tr></table>
            
    <div class="blog-center">
    
    <table class="style1" bgcolor="#FF9966" width="100%" align="center">
         
        <tr>
            <td bgcolor="#FF9966" style="border-style: groove" align="center">
                
                    <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem Value="0">School Name</asp:ListItem>
                    <asp:ListItem Value="001">Shri Nabhinandan Digambar Jain English Medium High School</asp:ListItem>
                     <asp:ListItem Value="002">श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक कन्या विद्यालय बीना</asp:ListItem>
                    <asp:ListItem Value="003"> श्री नाभिनन्दन दिगंबर जैन उच्च. माध्यमिक कन्या विद्यालय बीना</asp:ListItem>
                    <asp:ListItem Value="004">श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक संस्कृत विद्यालय बीना</asp:ListItem>
                  
                    </asp:DropDownList>
                
                 
                            <br />
                          <asp:DropDownList ID="DropDownList9" runat="server">
                              <asp:ListItem Value="0">Profile Category</asp:ListItem>
                              <asp:ListItem>Teaching</asp:ListItem>
                              <asp:ListItem>Non-Teaching</asp:ListItem>
                              <asp:ListItem>Other</asp:ListItem>
                             
                          </asp:DropDownList>
    
                &nbsp;
    
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
                              <asp:ListItem>2019</asp:ListItem>
                              <asp:ListItem>2018</asp:ListItem>
                              <asp:ListItem>2017</asp:ListItem>
                              <asp:ListItem>2016</asp:ListItem>
                              <asp:ListItem>2015</asp:ListItem>
                              <asp:ListItem>2014</asp:ListItem>
                              <asp:ListItem>2013</asp:ListItem>
                              </asp:DropDownList>
                
                 
                <br />
    
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Find" />
    
            &nbsp;&nbsp;
                    
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF9966" align="center">
                OR</td>
        </tr>
        <tr>
            <td bgcolor="#FF9966" style="border-style: groove" align="center">
                <asp:TextBox ID="TextBox22" placeholder="Enter Rollno" runat="server"></asp:TextBox>
    
                &nbsp;<br />
                <asp:Button ID="Button6" runat="server" onclick="Buttonfind_Click" 
                    Text="Find" />
    
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF9966" style="color: #0000FF" align="center">
                
                <asp:TextBox ID="TextBox25" placeholder="Enter Days" runat="server"></asp:TextBox>
    
                
                <br />
                
                <asp:TextBox ID="TextBox23" placeholder="Enter PF%" runat="server"></asp:TextBox>
    
                
                <br />
    
                
                <asp:TextBox placeholder="Enter School Fund%" ID="TextBox24" runat="server" 
                    Width="139px"></asp:TextBox>
    
                
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF9966" style="color: #0000FF">
    
                
                &nbsp;</td>
        </tr>
        </table></div>
        <div class="divScroll" align="center">
        <asp:GridView ID="GridView1" runat="server"  Width = "357px"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" ShowFooter = "True"  
        BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" >
       <Columns>
      
            
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Student Roll No">
           <HeaderTemplate>
           Days
             </HeaderTemplate>
           <ItemTemplate>
           <table style="width: 100%">
            <tr>
                <td>
                     <asp:TextBox ID="lblNote" runat="server" Text='<%# Eval("staff_working_day")%>'></asp:TextBox>
       </td>
            </tr>
           
        </table>
           
       
            </ItemTemplate>
             <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Credit" OnClick = "AddNewCustomer" />
            </FooterTemplate>

<ItemStyle Width="30px"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Staff Roll No">
            <ItemTemplate>
                <asp:Label ID="lblst_rollno" runat="server" Text='<%# Eval("staff_rollno")%>'></asp:Label>
            </ItemTemplate> 
          
<ItemStyle Width="30px"></ItemStyle>
          
        </asp:TemplateField> 
          
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Staff Name">
            <ItemTemplate>
                <asp:Label ID="lblst_name" runat="server" Text='<%# Eval("staff_name")%>'></asp:Label>
            </ItemTemplate> 
           
           
            
            
<ItemStyle Width="30px"></ItemStyle>
            
            
        </asp:TemplateField> 
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Father Name">
            <ItemTemplate>
                <asp:Label ID="lblst_father_name" runat="server" Text='<%# Eval("staff_father_name")%>'></asp:Label>
            </ItemTemplate> 
            
          
<ItemStyle Width="30px"></ItemStyle>
         
        </asp:TemplateField> 
          
          
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Staff Salary">
            <ItemTemplate>
                <asp:Label ID="lblst_salary" runat="server" Text='<%# Eval("staff_salary")%>'></asp:Label>
            </ItemTemplate> 
           
          
            
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
  <asp:GridView ID="GridView2" runat="server"  Width = "357px"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" ShowFooter = "True"  
        BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" >
       <Columns>
      
            
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Student Roll No">
           <HeaderTemplate>
           Days
             </HeaderTemplate>
           <ItemTemplate>
           <table style="width: 100%">
            <tr>
                <td>
                     <asp:TextBox ID="lblNote" runat="server" Text='<%# Eval("staff_working_day")%>'></asp:TextBox>
       </td>
            </tr>
           
        </table>
           
       
            </ItemTemplate>
             <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Credit" OnClick = "AddNewCustomer_update" />
            </FooterTemplate>

<ItemStyle Width="30px"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Staff Roll No">
            <ItemTemplate>
                <asp:Label ID="lblst_rollno" runat="server" Text='<%# Eval("staff_rollno")%>'></asp:Label>
            </ItemTemplate> 
          
<ItemStyle Width="30px"></ItemStyle>
          
        </asp:TemplateField> 
          
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Staff Name">
            <ItemTemplate>
                <asp:Label ID="lblst_name" runat="server" Text='<%# Eval("staff_name")%>'></asp:Label>
            </ItemTemplate> 
           
           
            
            
<ItemStyle Width="30px"></ItemStyle>
            
            
        </asp:TemplateField> 
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Father Name">
            <ItemTemplate>
                <asp:Label ID="lblst_father_name" runat="server" Text='<%# Eval("staff_father_name")%>'></asp:Label>
            </ItemTemplate> 
            
          
<ItemStyle Width="30px"></ItemStyle>
         
        </asp:TemplateField> 
          
          
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Staff Salary">
            <ItemTemplate>
                <asp:Label ID="lblst_salary" runat="server" Text='<%# Eval("staff_salary")%>'></asp:Label>
            </ItemTemplate> 
           
          
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField> 
          
        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Staff PF">
            <ItemTemplate>
                <asp:Label ID="lblst_pf" runat="server" Text='<%# Eval("staff_pf")%>'></asp:Label>
            </ItemTemplate> 
           
          
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField>    
        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Staff SPF">
            <ItemTemplate>
                <asp:Label ID="lblst_spf" runat="server" Text='<%# Eval("staff_school_pf")%>'></asp:Label>
            </ItemTemplate> 
           
          
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField>  
      <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Staff Month">
            <ItemTemplate>
                <asp:Label ID="lblst_month" runat="server" Text='<%# Eval("staff_month")%>'></asp:Label>
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
    </asp:GridView> 
    <asp:GridView ID="GridView3" runat="server"  Width = "357px"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" ShowFooter = "True"  
        BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" >
       <Columns>
      
            
        
          
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Staff Name">
            <ItemTemplate>
                <asp:Label ID="lblst_name" runat="server" Text='<%# Eval("staff_name")%>'></asp:Label>
            </ItemTemplate> 
           
           
            
            
<ItemStyle Width="30px"></ItemStyle>
            
            
        </asp:TemplateField> 
        
           <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Working Days">
           
           <ItemTemplate>
                     <asp:Label ID="lblNotee" runat="server" Text='<%# Eval("staff_working_day")%>'></asp:Label>
      </ItemTemplate>
            

            </asp:TemplateField>
         
          
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Month Salary">
            <ItemTemplate>
                <asp:Label ID="lblst_salary" runat="server" Text='<%# Eval("staff_salary")%>'></asp:Label>
            </ItemTemplate> 
           
          
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField> 
          
        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "PF">
            <ItemTemplate>
                <asp:Label ID="lblst_pf" runat="server" Text='<%# Eval("staff_pf")%>'></asp:Label>
            </ItemTemplate> 
           
          
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField>    
        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "SPF">
            <ItemTemplate>
                <asp:Label ID="lblst_spf" runat="server" Text='<%# Eval("staff_school_pf")%>'></asp:Label>
            </ItemTemplate> 
           
          
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField>  
      <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Month">
            <ItemTemplate>
                <asp:Label ID="lblst_month" runat="server" Text='<%# Eval("staff_month")%>'></asp:Label>
            </ItemTemplate> 
           
          
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField>   
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Year">
            <ItemTemplate>
                <asp:Label ID="lblst_year" runat="server" Text='<%# Eval("staff_year")%>'></asp:Label>
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
    </asp:GridView> </div>
    
        </div>
</asp:Content>

