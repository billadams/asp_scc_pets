<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListCustomers.aspx.cs" Inherits="Customers_ListCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Phone], [Address], [DateOfBirth], [Balance], [ImagePath], [ImageNote], [Id] FROM [Customers]" DeleteCommand="DELETE FROM [Customers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Customers] ([FirstName], [LastName], [Phone], [Address], [DateOfBirth], [Balance], [ImagePath], [ImageNote]) VALUES (@FirstName, @LastName, @Phone, @Address, @DateOfBirth, @Balance, @ImagePath, @ImageNote)" UpdateCommand="UPDATE [Customers] SET [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [Address] = @Address, [DateOfBirth] = @DateOfBirth, [Balance] = @Balance, [ImagePath] = @ImagePath, [ImageNote] = @ImageNote WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="DateOfBirth" Type="DateTime" />
            <asp:Parameter Name="Balance" Type="Decimal" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="ImageNote" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="DateOfBirth" Type="DateTime" />
            <asp:Parameter Name="Balance" Type="Decimal" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="ImageNote" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" ForeColor="Black" GridLines="Vertical" Height="386px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1020px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="Add Pet" ShowSelectButton="True" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" DataFormatString="{0:c}" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    </asp:Content>

