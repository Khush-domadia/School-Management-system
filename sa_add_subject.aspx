<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="sa_add_subject.aspx.cs" Inherits="sa_add_subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" style="background-color: #FF9966">
    <div class="blog-center">
    
    <table class="style1 nav-justified" bgcolor="#FF9966">
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                    <asp:ListItem Value="0">Class</asp:ListItem>
                     <asp:ListItem Value="P1">Pre-Nursery </asp:ListItem>
                    <asp:ListItem Value="N1">Nursery </asp:ListItem>
                    <asp:ListItem Value="L1">LKG</asp:ListItem>
                    <asp:ListItem Value="U2">UKG</asp:ListItem>
                    
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" BackColor="#FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
               <asp:TextBox ID="TextBox10" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="Subject Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Enter Valid Name" 
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td>
               <asp:TextBox ID="TextBox11" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="Subject Maximum Marks"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Enter Valid Number" 
                    ValidationExpression="^[0-9]{1,3}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
               <asp:TextBox ID="TextBox12" CssClass="wp-form-control wpcf7-text" 
                               runat="server" placeholder="Subject Minimum Marks"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="Enter Valid Number" 
                    ValidationExpression="^[0-9]{1,3}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                 <div>
    
        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
            CssClass="wp-form-control" GroupName="gender" Text="Compulsary" />
        <asp:RadioButton ID="RadioButton2" runat="server" 
            CssClass="wp-form-control wpcf7-text" GroupName="gender" Text="Consider" />
    
    </div></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Subject" />
            </td>
        </tr>
        <tr>
            <td>
            
            </td>
        </tr>
    </table>
    </div>
    <div class="divScroll" align="center">
   
                <asp:GridView ID="GridView1" runat="server" AllowPaging="true" 
                    AlternatingRowStyle-BackColor="#C2D69B" AutoGenerateColumns="false" 
                    Font-Names="Arial" Font-Size="11pt" HeaderStyle-BackColor="green" 
                    OnPageIndexChanging="OnPaging" onrowcancelingedit="CancelEdit" 
                    onrowediting="EditCustomer" onrowupdating="UpdateCustomer" PageSize="10" 
                    ShowFooter="false" Width="100%">
                    <Columns>
                         <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkRemove" runat="server" 
                                    CommandArgument='<%# Eval("sub_id")%>' OnClick="DeleteCustomer" 
                                    OnClientClick="return confirm('Do you want to delete?')" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Button ID="btnAdd" runat="server" OnClick="AddNewCustomer" Text="Add" />
                            </FooterTemplate>
                        </asp:TemplateField>
                         <asp:CommandField ShowEditButton="True" />
                       <asp:TemplateField HeaderText="Subject ID" ItemStyle-Width="30px">
                            <ItemTemplate>
                                <asp:Label ID="lblsub_id" runat="server" Text='<%# Eval("sub_id")%>'></asp:Label>
                            </ItemTemplate>
                           
                            <FooterTemplate>
                                <asp:TextBox ID="txtsub_id0" runat="server" MaxLength="5" Width="40px"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                       
                        <asp:TemplateField HeaderText="Subject Name" ItemStyle-Width="30px">
                            <ItemTemplate>
                                <asp:Label ID="lblsub_name" runat="server" Text='<%# Eval("sub_name")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtsub_name" runat="server" Text='<%# Eval("sub_name")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtsub_name0" runat="server" MaxLength="5" Width="40px"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Max Marks" ItemStyle-Width="30px">
                            <ItemTemplate>
                                <asp:Label ID="lblsub_max_marks" runat="server" Text='<%# Eval("sub_max_marks")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtsub_max_marks" runat="server" Text='<%# Eval("sub_max_marks")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtsub_max_marks0" runat="server" MaxLength="5" Width="40px"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Min Marks" ItemStyle-Width="30px">
                            <ItemTemplate>
                                <asp:Label ID="lblsub_min_marks" runat="server" Text='<%# Eval("sub_min_marks")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtsub_min_marks" runat="server" Text='<%# Eval("sub_min_marks")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtsub_min_marks0" runat="server" MaxLength="5" Width="40px"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status" ItemStyle-Width="30px">
                            <ItemTemplate>
                                <asp:Label ID="lblsub_status" runat="server" Text='<%# Eval("sub_status")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtsub_status" runat="server" Text='<%# Eval("sub_status")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtsub_status0" runat="server" MaxLength="5" Width="40px"></asp:TextBox>
                            </FooterTemplate>
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
                       
                       
                    </Columns>
                    <AlternatingRowStyle BackColor="#C2D69B" />
                </asp:GridView></div></div>
</asp:Content>
