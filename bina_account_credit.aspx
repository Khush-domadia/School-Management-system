<%@ Page Title="" Language="C#" MasterPageFile="~/account_master.master" AutoEventWireup="true" CodeFile="bina_account_credit.aspx.cs" Inherits="account_credit" %>

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
                    <strong>Credit Page</strong></td>
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
                
                <asp:TextBox ID="TextBox23" placeholder="Enter Credit Reason" runat="server" TextMode="MultiLine"></asp:TextBox>
    
                
                <br />
    
                
                <asp:TextBox placeholder="Enter Amount" ID="TextBox24" runat="server" 
                    Width="139px"></asp:TextBox>
    
                
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF9966" style="color: #0000FF">
    
                
                &nbsp;</td>
        </tr>
        </table></div>
        <div class="divScroll" align="center">
        <asp:GridView ID="GridView1" runat="server"  Width = "550px"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" ShowFooter = "True"  
        BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" >
       <Columns>
      
            
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Student Roll No">
           <HeaderTemplate>
                <asp:Button ID="btn_chk" runat="server" Text="Flip" OnClick = "Change_abstent" />
            </HeaderTemplate>
           <ItemTemplate>
           <table style="width: 100%">
            <tr>
                <td>
                     <asp:CheckBox ID="rd_p" Checked="true" runat="server" Text="Credit"/>
       </td>
            </tr>
           
        </table>
           
       
            </ItemTemplate>
             <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Credit" OnClick = "AddNewCustomer" />
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
                <asp:TextBox ID="txtst_name" runat="server" Text='<%# Eval("st_name")%>'></asp:TextBox>
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
    </div>
        </div>
</asp:Content>

