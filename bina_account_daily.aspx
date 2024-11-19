<%@ Page Title="" Language="C#" MasterPageFile="~/account_master.master" AutoEventWireup="true" CodeFile="bina_account_daily.aspx.cs" Inherits="account_daily" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div align="center" style="background-color: #FF9966">
    <table>
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
            </tr></table><div class="blog-center">
    <table class="style1" bgcolor="#FF9966" width="100%">
        <tr>
            <td bgcolor="#FF9966">
                Transaction From<br />
                dd/mm/yyyy
                <asp:TextBox ID="TextBox22" placeholder="Enter Rollno" runat="server" 
                   ></asp:TextBox>
    
                &nbsp;<asp:Button ID="Button6" runat="server" onclick="Buttonfind_Click" 
                    Text="Find" />
    
                <asp:Button ID="Button7" runat="server" onclick="Buttonfind_Click_date" 
                    Text="Single Day" />
    
                <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem Value="0">School Name</asp:ListItem>
                    <asp:ListItem Value="001">Shri Nabhinandan Digambar Jain English Medium High School</asp:ListItem>
                    <asp:ListItem Value="002">श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक कन्या विद्यालय बीना</asp:ListItem>
                    <asp:ListItem Value="003"> श्री नाभिनन्दन दिगंबर जैन उच्च. माध्यमिक कन्या विद्यालय बीना</asp:ListItem>
                    <asp:ListItem Value="004">श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक संस्कृत विद्यालय बीना</asp:ListItem>
                </asp:DropDownList>
    
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF9966" style="color: #0000FF">
                &nbsp;</td>
        </tr>
        </table>
              <asp:GridView ID="GridView1" runat="server"  Width = "29%"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" ShowFooter = "True"  
        BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" >
                  <Columns>
                     <asp:TemplateField HeaderText="Serial No" >
   <ItemTemplate>   
       <%# ((GridViewRow)Container).RowIndex + 1%>
   </ItemTemplate>
</asp:TemplateField>
 <asp:TemplateField   HeaderText = "Transaction No">
                          <ItemTemplate>
                              <asp:Label ID="lbltransaction_id" runat="server" Text='<%# Eval("transaction_id")%>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField  HeaderText = "Student Roll No">
                          <ItemTemplate>
                              <asp:Label ID="lblst_rollno" runat="server" Text='<%# Eval("st_rollno")%>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField  HeaderText = "Reason/Message">
                          <ItemTemplate>
                              <asp:Label ID="lblamt_message" runat="server" Text='<%# Eval("amt_message")%>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                     <%-- <asp:TemplateField   HeaderText = "Credit Amount">
                          <ItemTemplate>
                              <asp:Label ID="lblamount" runat="server" Text='<%# Eval("amount")%>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>--%>
                      <asp:TemplateField  HeaderText = "Debit Amount">
                          <ItemTemplate>
                              <asp:Label ID="lblamount" runat="server" Text='<%# Eval("debit_amount")%>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText = "Message">
                          <ItemTemplate>
                              <asp:Label ID="lblamount" runat="server" Text='<%# Eval("debit_message")%>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText = "Date">
                          <ItemTemplate>
                              <asp:Label ID="lbldob" runat="server" Text='<%# Eval("dob")%>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
                  <FooterStyle BackColor="White" ForeColor="#000066" />
                  <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White">
                  </HeaderStyle>
                  <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
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

