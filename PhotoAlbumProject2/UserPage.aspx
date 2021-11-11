<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="PhotoAlbumProject2.UserPage" %>

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
                width: 508px;
            }
            .auto-style3 {
                width: 508px;
                text-align: right;
            }
            .auto-style4 {
                width: 508px;
                height: 23px;
            }
            .auto-style5 {
                height: 23px;
            }
            .auto-style6 {
                width: 508px;
                height: 23px;
                text-align: right;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">File Name:<%--</div>--%></td>
                    <td><asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged" Width="234px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Description:
            </td>
                    <td>
            <asp:TextBox ID="txtDescription" runat="server" Width="232px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Date:
            </td>
                    <td>
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="231px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Image ID="Image1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:Button ID="btnupload" OnClick="btnupload_Click" runat="server" Text="Upload" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
            <asp:Button ID="btnview" OnClick="btnview_Click" runat="server" Text="View" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDelete" runat="server" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtSearch" runat="server" Width="222px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:LinkButton ID="linkButtonDownload" runat="server">Download</asp:LinkButton>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </div>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Image") %>' Width="200px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photoDbConnectionString %>" SelectCommand="SELECT * FROM [PhotoInfo]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
