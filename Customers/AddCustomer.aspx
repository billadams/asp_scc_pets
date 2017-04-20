<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddCustomer.aspx.cs" Inherits="Customers_AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <label for="first_name">First Name:</label>
    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Must have a first name"></asp:RequiredFieldValidator>
    <br />

    <label for="last_name">Last Name:</label>
    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Must have a last name"></asp:RequiredFieldValidator>
    <br />

    <label for="phone">Phone:</label> 
    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Wrong format for phone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" Display="Dynamic"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Must have a phone"></asp:RequiredFieldValidator>
    <br />

    <label for="address">Address:</label>    
    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
    <br />

    <label for="dob">Date Of Birth:</label>
    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtDOB" ErrorMessage="Wrong format for date of birth" ValidationExpression="^(1[0-2]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])/(?:[0-9]{2})?[0-9]{2}$" Display="Dynamic"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDOB" Display="Dynamic" ErrorMessage="Must enter a date of birth"></asp:RequiredFieldValidator>
    <br />

    <label for="balance">Balance:</label>
    <asp:TextBox ID="txtBalance" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtBalance" ErrorMessage="Please enter a number between 1 and 100" MaximumValue="100" MinimumValue="1" Display="Dynamic" Type="Double"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBalance" Display="Dynamic" ErrorMessage="Must enter a balance"></asp:RequiredFieldValidator>
    <br />

    <label for="image">Image:</label>
    <asp:Textbox runat="server" ID="txtImagePath"></asp:Textbox>
    <br />

    <label for="notes">Notes:</label>
    <asp:Textbox runat="server" ID="txtImageNote"></asp:Textbox>
    <br />
    <br />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" OnClick="btnCancel_Click"/>
    <asp:Button ID="btnCreateCustomer" runat="server" Text="Save Customer" OnClick="btnCreateCustomer_Click" />
    <br />
    <br />
    
</asp:Content>

