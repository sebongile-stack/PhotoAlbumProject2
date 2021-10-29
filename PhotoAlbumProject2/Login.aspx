<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PhotoAlbumProject2.Login" %>

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
        <asp:Label ID="Label1" runat="server" Text="WELCOME!"></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="textEmail" runat="server" TextMode="Email" OnTextChanged="txtEmail_TextChanged" style="margin-left: 15px" Width="168px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email required" ControlToValidate="textEmail"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="textPassword" runat="server" OnTextChanged="textPassword_TextChanged" TextMode="Password" style="margin-left: 15px" Width="141px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password required" ControlToValidate="textPassword"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="btnLogin" runat="server" Text="Login" Width="345px" CssClass="mybutton" OnClick="btnLogin_Click"/>
        </p>
        <asp:Label ID="Label4" runat="server" Text="Don't have an account?"></asp:Label>
        <asp:LinkButton ID="LinkCreateAccount" runat="server" OnClick="LinkCreateAccount_Click">Create An Account</asp:LinkButton>
        <p>
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
