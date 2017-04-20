<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddPet.aspx.cs" Inherits="Customers_AddPet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 312px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    This is where we can add a pet

    <asp:Label ID="lblCustId" runat="server" Text="Label"></asp:Label>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="250px" Width="693px">
        <EditItemTemplate>
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            DateOfBirth:
            <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
            <br />
            Balance:
            <asp:TextBox ID="BalanceTextBox" runat="server" Text='<%# Bind("Balance") %>' />
            <br />
            ImagePath:
            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
            <br />
            ImageNote:
            <asp:TextBox ID="ImageNoteTextBox" runat="server" Text='<%# Bind("ImageNote") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <FooterTemplate>
            Add Pet Now
            <asp:Button ID="btnOk" runat="server" Text="Ok" />
        </FooterTemplate>
        <HeaderTemplate>
            Is this the pet owner?
        </HeaderTemplate>
        <InsertItemTemplate>
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />

            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            DateOfBirth:
            <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
            <br />
            Balance:
            <asp:TextBox ID="BalanceTextBox" runat="server" Text='<%# Bind("Balance") %>' />
            <br />
            ImagePath:
            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
            <br />
            ImageNote:
            <asp:TextBox ID="ImageNoteTextBox" runat="server" Text='<%# Bind("ImageNote") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Id:
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">FirstName:
                        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                    </td>
                    <td>LastName:
                        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Phone:
                        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                    </td>
                    <td>Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">DateOfBirth:
                        <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Bind("DateOfBirth", "{0:d}") %>' />
                    </td>
                    <td>Balance:
                        <asp:Label ID="BalanceLabel" runat="server" Text='<%# Bind("Balance", "{0:C}") %>' />
                    </td>
                </tr>
            </table>
            <br />
            ImageNote:
            <asp:Label ID="ImageNoteLabel" runat="server" Text='<%# Bind("ImageNote") %>' />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl='<%# Eval("ImagePath") %>' Width="163px" />
            <br />
            <br />
            ImagePath:
            <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Bind("ImagePath") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetConnectionString %>" SelectCommand="SELECT [LastName], [Id], [FirstName], [Phone], [Address], [DateOfBirth], [Balance], [ImagePath], [ImageNote] FROM [Customers] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:SessionParameter Name="Id" SessionField="custId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

