<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IssueReturn.aspx.cs" Inherits="Library.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="w3-xxxlarge w3-text-red">Issue & Return Items</h1>
    <br />
     
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Res_Id" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" style="background-color: #66FF99">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Res_Id" HeaderText="Res_Id" ReadOnly="True" SortExpression="Res_Id" />
            <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:TemplateField HeaderText="BookId" SortExpression="BookId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BookId") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("BookId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Res_Date" HeaderText="Res_Date" SortExpression="Res_Date" />
            <asp:BoundField DataField="Return_Date" HeaderText="Return_Date" SortExpression="Return_Date" />
            <asp:TemplateField HeaderText="Confirmation" SortExpression="Confirmation">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownConfirm" runat="server" OnSelectedIndexChanged="DropDownConfirm_SelectedIndexChanged1" SelectedValue='<%# Bind("Confirmation") %>'>
                        <asp:ListItem>Issue</asp:ListItem>
                        <asp:ListItem>Return</asp:ListItem>
                        <asp:ListItem>Waiting</asp:ListItem>
                        <asp:ListItem>Decline</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Confirmation") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ReservationItem]" DeleteCommand="DELETE FROM [ReservationItem] WHERE [Res_Id] = @Res_Id" InsertCommand="INSERT INTO [ReservationItem] ([Res_Id], [CustomerId], [UserName], [BookId], [Res_Date], [Return_Date], [Confirmation]) VALUES (@Res_Id, @CustomerId, @UserName, @BookId, @Res_Date, @Return_Date, @Confirmation)" UpdateCommand="UPDATE [ReservationItem] SET [CustomerId] = @CustomerId, [UserName] = @UserName, [BookId] = @BookId, [Res_Date] = @Res_Date, [Return_Date] = @Return_Date, [Confirmation] = @Confirmation WHERE [Res_Id] = @Res_Id">
        <DeleteParameters>
            <asp:Parameter Name="Res_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Res_Id" Type="Int32" />
            <asp:Parameter Name="CustomerId" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="BookId" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Res_Date" />
            <asp:Parameter DbType="Date" Name="Return_Date" />
            <asp:Parameter Name="Confirmation" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerId" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="BookId" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Res_Date" />
            <asp:Parameter DbType="Date" Name="Return_Date" />
            <asp:Parameter Name="Confirmation" Type="String" />
            <asp:Parameter Name="Res_Id" Type="Int32" />
        </UpdateParameters>

</asp:SqlDataSource>

    <h3 class="w3-xxlarge w3-text-red">&nbsp;</h3>
   
    

    </asp:Content>
