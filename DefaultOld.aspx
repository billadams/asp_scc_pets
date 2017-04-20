<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultOld.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SCC Pets</title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <header>
                This is the header
            </header>
            <nav>
                <asp:Button ID="btnHome" runat="server" Text="Home" Width="95px" OnClick="btnHome_Click" />
                <asp:Button ID="btnAboutUs" runat="server" OnClick="btnAboutUs_Click" Text="About Us" Width="95px" />
                <asp:Button ID="btnAddCustomer" runat="server" OnClick="btnAddCustomer_Click" Text="Add Customer" Width="95px" />
            </nav>
            <main>
                <h1>Welcome to SCC Pets Day Two</h1>
            </main>
            <footer>
                This is the footer
            </footer>
        </div>
    </form>
</body>
</html>
