<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bina_show_data.aspx.cs" Inherits="ramayana_show_data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ramayana School</title>
    <style type="text/css">

        .style5
        {
            text-align: center;
        }
        .style3
        {
            text-align: left;
            text-decoration: underline;
        }
        *
    {
        color: #000 !important;
        text-shadow: none !important;
        background: transparent !important;
        box-shadow: none !important;
    }
        *{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;
    text-align: center;
            font-size: large;
        }
                           </style>
</head>
<body>
    <form id="form1" runat="server">

        <br />
       
                    <table class="style7" align="center">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl="~/images/bina_logo.jpg" onclick="ImageButton1_Click" 
                                    Width="92px" />
                            </td>
                <td style="text-align: center">
                    <span class="style5"><br />
                    </span></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                <td class="style3">
                    <strong>Show Student Data</strong></td>
                        </tr>
                    </table>
                            <br />
                
                    <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem Value="0">School Name</asp:ListItem>
                    <asp:ListItem Value="001">Shri Nabhinandan Digambar Jain English Medium High School</asp:ListItem>
                     <asp:ListItem Value="002">श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक कन्या विद्यालय बीना</asp:ListItem>
                    <asp:ListItem Value="003"> श्री नाभिनन्दन दिगंबर जैन उच्च. माध्यमिक कन्या विद्यालय बीना</asp:ListItem>
                    <asp:ListItem Value="004">श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक संस्कृत विद्यालय बीना</asp:ListItem>
                  
                    </asp:DropDownList>
                
                 
                            <br />
        <asp:DropDownList ID="DropDownList4" runat="server">
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
    
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Find" />
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div id = "dvGrid">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
       <asp:GridView ID="GridView1" runat="server"  Width = "550px"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" ShowFooter = "True"  
        BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" >
       <Columns>
      
            
         
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
           <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Mother Name">
            <ItemTemplate>
                <asp:Label ID="lblst_mobile" runat="server" Text='<%# Eval("st_mother")%>'></asp:Label>
            </ItemTemplate> 
           
           
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField> 
           <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Date of Birth">
            <ItemTemplate>
                <asp:Label ID="lblst_mobile" runat="server" Text='<%# Eval("dob")%>'></asp:Label>
            </ItemTemplate> 
           
           
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField> 
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Contact No.">
            <ItemTemplate>
                <asp:Label ID="lblst_mobile" runat="server" Text='<%# Eval("st_father_mobile")%>'></asp:Label>
            </ItemTemplate> 
           
           
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField> 
          
           <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Father Occupation">
            <ItemTemplate>
                <asp:Label ID="lblst_mobile" runat="server" Text='<%# Eval("st_f_occupation")%>'></asp:Label>
            </ItemTemplate> 
           
           
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField> 
         <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Mother Occupation">
            <ItemTemplate>
                <asp:Label ID="lblst_mobile" runat="server" Text='<%# Eval("st_m_occupation")%>'></asp:Label>
            </ItemTemplate> 
           
           
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField> 
        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Local Address">
            <ItemTemplate>
                <asp:Label ID="lblst_mobile" runat="server" Text='<%# Eval("st_residential")%>'></asp:Label>
            </ItemTemplate> 
           
           
            
<ItemStyle Width="30px"></ItemStyle>
            
        </asp:TemplateField>

        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "Local Address">
            <ItemTemplate>
                <asp:Label ID="lblst_mobile" runat="server" Text='<%# Eval("st_residential")%>'></asp:Label>
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
    </ContentTemplate> 
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID = "GridView1" /> 
    </Triggers> 
    </asp:UpdatePanel> 
    </div>
    </form>
</body>
</html>
