<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="PhotoAlbumProject2.CreateAccount" %>

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
                width: 331px;
            }
            .auto-style4 {
                width: 331px;
                text-align: right;
            }
            .auto-style5 {
                width: 317px;
            }
            .auto-style7 {
                margin-left: 0px;
            }
            .auto-style8 {
                margin-left: 1px;
            }
            .auto-style9 {
                margin-left: 2px;
            }
            .auto-style10 {
                margin-left: 56px;
            }
            .auto-style11 {
                width: 317px;
                text-align: center;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="SIGN IN"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
        <asp:Label ID="Label1" runat="server" Text="First Name:" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style5">
        <asp:TextBox ID="txtFName" runat="server" OnTextChanged="txtFName_TextChanged" Width="310px" CssClass="auto-style7"></asp:TextBox>
                    </td>
                    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name required!" ControlToValidate="txtFName" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="Last Name:" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style5">
            <asp:TextBox ID="txtLName" runat="server" OnTextChanged="txtLName_TextChanged" Width="310px" CssClass="auto-style7"></asp:TextBox>
                    </td>
                    <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name required!" ControlToValidate="txtLName" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
        <asp:Label ID="Label3" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style5">
        <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged" TextMode="Email" Width="309px" CssClass="auto-style8"></asp:TextBox>
                    </td>
                    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email required!" ControlToValidate="txtEmail" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" Text="Password:" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style5">
            <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="txtPassword_TextChanged" TextMode="Password" Width="308px" CssClass="auto-style8"></asp:TextBox>
                    </td>
                    <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password required!" ControlToValidate="txtPassword" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
        <asp:Label ID="Label5" runat="server" Text="Confirm Password:" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style5">
        <asp:TextBox ID="txtConfirm" runat="server" OnTextChanged="txtConfirm_TextChanged" TextMode="Password" Width="308px" CssClass="auto-style9"></asp:TextBox>
                    </td>
                    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Confirm password!" ControlToValidate="txtConfirm" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
            <asp:Button ID="Button1" runat="server" Text="Sign Up" Width="206px" OnClick="Button1_Click" CssClass="auto-style10" Font-Bold="True" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
        <asp:Label ID="Exception" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
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
    </form>
</body>
</html>
