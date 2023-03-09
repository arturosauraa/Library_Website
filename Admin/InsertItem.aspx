<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertItem.aspx.cs" Inherits="Library.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <h1 class="w3-xxxlarge w3-text-red">Manager Item</h1>
    <br />
    <p>Here you are able to manage all items</p>
    <br />
    <br />
    <h3>Delete an Item</h3>
    <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem" style="background-color: #FF3300">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="item_nameLabel" runat="server" Text='<%# Eval("item_name") %>' />
                </td>
                <td>
                    <asp:Label ID="item_categoryLabel" runat="server" Text='<%# Eval("item_category") %>' />
                </td>
                <td>
                    <asp:Label ID="item_quantityLabel" runat="server" Text='<%# Eval("item_quantity") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="item_nameTextBox" runat="server" Text='<%# Bind("item_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="item_categoryTextBox" runat="server" Text='<%# Bind("item_category") %>' />
                </td>
                <td>
                    <asp:TextBox ID="item_quantityTextBox" runat="server" Text='<%# Bind("item_quantity") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="item_nameTextBox" runat="server" Text='<%# Bind("item_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="item_categoryTextBox" runat="server" Text='<%# Bind("item_category") %>' />
                </td>
                <td>
                    <asp:TextBox ID="item_quantityTextBox" runat="server" Text='<%# Bind("item_quantity") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="item_nameLabel" runat="server" Text='<%# Eval("item_name") %>' />
                </td>
                <td>
                    <asp:Label ID="item_categoryLabel" runat="server" Text='<%# Eval("item_category") %>' />
                </td>
                <td>
                    <asp:Label ID="item_quantityLabel" runat="server" Text='<%# Eval("item_quantity") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server"></th>
                                <th runat="server">Id</th>
                                <th runat="server">item_name</th>
                                <th runat="server">item_category</th>
                                <th runat="server">item_quantity</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="item_nameLabel" runat="server" Text='<%# Eval("item_name") %>' />
                </td>
                <td>
                    <asp:Label ID="item_categoryLabel" runat="server" Text='<%# Eval("item_category") %>' />
                </td>
                <td>
                    <asp:Label ID="item_quantityLabel" runat="server" Text='<%# Eval("item_quantity") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [item] WHERE [Id] = @Id" InsertCommand="INSERT INTO [item] ([Id], [item_name], [item_category], [item_quantity]) VALUES (@Id, @item_name, @item_category, @item_quantity)" SelectCommand="SELECT * FROM [item]" UpdateCommand="UPDATE [item] SET [item_name] = @item_name, [item_category] = @item_category, [item_quantity] = @item_quantity WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="item_name" Type="String" />
            <asp:Parameter Name="item_category" Type="String" />
            <asp:Parameter Name="item_quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="item_name" Type="String" />
            <asp:Parameter Name="item_category" Type="String" />
            <asp:Parameter Name="item_quantity" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
