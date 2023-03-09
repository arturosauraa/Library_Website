<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="Library.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1 class="w3-xxxlarge w3-text-red">Book Reservation</h1>
    <h3>What is a book? They&#39;re supposed to represent hope, opportunity, and strength for everybody. </h3>
    <p>Choose the right one to guide you.</p>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Res_Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            Res_Id:
            <asp:Label ID="Res_IdLabel1" runat="server" Text='<%# Eval("Res_Id") %>' />
            <br />
            CustomerId:
            <asp:TextBox ID="CustomerIdTextBox" runat="server" Text='<%# Bind("CustomerId") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            BookId:
            <asp:TextBox ID="BookIdTextBox" runat="server" Text='<%# Bind("BookId") %>' />
            <br />
            Res_Date:
            <asp:TextBox ID="Res_DateTextBox" runat="server" Text='<%# Bind("Res_Date") %>' />
            <br />
            Return_Date:
            <asp:TextBox ID="Return_DateTextBox" runat="server" Text='<%# Bind("Return_Date") %>' />
            <br />
            Confirmation:
            <asp:TextBox ID="ConfirmationTextBox" runat="server" Text='<%# Bind("Confirmation") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Res_Id:
            <asp:Label ID="ResLabel" runat="server" Text='<%# Bind("Res_Id") %>'></asp:Label>
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
            <br />
            BookId:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="item_name" DataValueField="Id" SelectedValue='<%# Bind("BookId") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [item] WHERE [Id] = @Id" InsertCommand="INSERT INTO [item] ([Id], [item_name]) VALUES (@Id, @item_name)" SelectCommand="SELECT [Id], [item_name] FROM [item]" UpdateCommand="UPDATE [item] SET [item_name] = @item_name WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="item_name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="item_name" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            Res_Date:
            <asp:Calendar ID="Calendar2" runat="server" SelectedDate='<%# Bind("Res_Date") %>'></asp:Calendar>
            <br />
            Return_Date:
            <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("Return_Date") %>'></asp:Calendar>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Res_Id:
            <asp:Label ID="Res_IdLabel" runat="server" Text='<%# Eval("Res_Id") %>' />
            <br />
            CustomerId:
            <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Bind("CustomerId") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            BookId:
            <asp:Label ID="BookIdLabel" runat="server" Text='<%# Bind("BookId") %>' />
            <br />
            Res_Date:
            <asp:Label ID="Res_DateLabel" runat="server" Text='<%# Bind("Res_Date") %>' />
            <br />
            Return_Date:
            <asp:Label ID="Return_DateLabel" runat="server" Text='<%# Bind("Return_Date") %>' />
            <br />
            Confirmation:
            <asp:Label ID="ConfirmationLabel" runat="server" Text='<%# Bind("Confirmation") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    
    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ReservationItem] WHERE [Res_Id] = @Res_Id" InsertCommand="INSERT INTO [ReservationItem] ([Res_Id], [CustomerId], [UserName], [BookId], [Res_Date], [Return_Date], [Confirmation]) VALUES (@Res_Id, @CustomerId, @UserName, @BookId, @Res_Date, @Return_Date, @Confirmation)" SelectCommand="SELECT [Res_Id], [CustomerId], [UserName], [BookId], [Res_Date], [Return_Date], [Confirmation] FROM [ReservationItem]" UpdateCommand="UPDATE [ReservationItem] SET [CustomerId] = @CustomerId, [UserName] = @UserName, [BookId] = @BookId, [Res_Date] = @Res_Date, [Return_Date] = @Return_Date, [Confirmation] = @Confirmation WHERE [Res_Id] = @Res_Id">
        <DeleteParameters>
            <asp:Parameter Name="Res_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="FormView1" Name="Res_Id" PropertyName="SelectedValue" Type="Int32" />
            <asp:SessionParameter Name="CustomerId" SessionField="CustomerId" Type="String" />
            <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
            <asp:ControlParameter ControlID="FormView1" Name="BookId" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="FormView1" DbType="Date" Name="Res_Date" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="FormView1" DbType="Date" Name="Return_Date" PropertyName="SelectedValue" />
            <asp:SessionParameter Name="Confirmation" SessionField="Confirm" Type="String" />
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
    
    

</asp:Content>
