<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="PhotoAlbumProject2.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   <link rel="stylesheet" type ="text/css" href="Style.css" />
    <head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
        <asp:TextBox ID="txtFName" runat="server" OnTextChanged="txtFName_TextChanged" style="margin-left: 8px" Width="210px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name required" ControlToValidate="txtFName"></asp:RequiredFieldValidator>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
            <asp:TextBox ID="txtLName" runat="server" OnTextChanged="txtLName_TextChanged" style="margin-left: 14px" Width="199px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name required" ControlToValidate="txtLName"></asp:RequiredFieldValidator>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged" TextMode="Email" style="margin-left: 9px" Width="234px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="txtPassword_TextChanged" style="margin-left: 5px" TextMode="Password" Width="207px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="txtConfirm" runat="server" OnTextChanged="txtConfirm_TextChanged" style="margin-left: 11px" TextMode="Password" Width="155px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Confirm password" ControlToValidate="txtConfirm"></asp:RequiredFieldValidator>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Next" Width="193px" OnClick="Button1_Click" />
        </p>
        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
