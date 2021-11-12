<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PhotoAlbumProject2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   <link rel="stylesheet" type ="text/css" href="Style.css" />
    <head runat="server">
    <title></title>
        <style type="text/css">
            .auto-style1 {
                width: 100%;
            }
            .auto-style2 {
                width: 335px;
            }
            .auto-style3 {
                width: 333px;
            }
            .auto-style4 {
                width: 333px;
                text-align: center;
            }
            .auto-style5 {
                width: 335px;
                text-align: right;
            }
            .auto-style6 {
                margin-left: 3px;
            }
            .auto-style7 {
                background-color: darkgray;
                margin-left: 73px;
            }
            .auto-style8 {
                margin-left: 3px;
                margin-right: 0px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
        <asp:Label ID="Label1" runat="server" Text="WELCOME!" Font-Bold="True"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Label ID="Label3" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style3">
            <asp:TextBox ID="textEmail" runat="server" TextMode="Email" OnTextChanged="txtEmail_TextChanged" Width="328px" CssClass="auto-style8"></asp:TextBox>
                    </td>
                    <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email required!" ControlToValidate="textEmail" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style3">
            <asp:TextBox ID="textPassword" runat="server" OnTextChanged="textPassword_TextChanged" TextMode="Password" Width="327px" CssClass="auto-style6"></asp:TextBox>
                    </td>
                    <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password required!" ControlToValidate="textPassword" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
            <asp:Button ID="btnLogin" runat="server" Text="Login" Width="188px" CssClass="auto-style7" OnClick="btnLogin_Click" Font-Bold="True"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
        <asp:Label ID="Label4" runat="server" Text="Don't have an account?" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style3">
        <asp:LinkButton ID="LinkCreateAccount" runat="server" OnClick="LinkCreateAccount_Click" Font-Bold="True">Create An Account/Sign Up</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Label ID="Label5" runat="server" Text="Exception" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
