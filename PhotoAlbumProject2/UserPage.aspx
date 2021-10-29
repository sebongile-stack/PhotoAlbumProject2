<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="PhotoAlbumProject2.UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   <link rel="stylesheet" type ="text/css" href="Style.css" />
    <head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            id:<asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            <asp:Button ID="btnupload" OnClick="btnupload_Click" runat="server" Text="Upload" />
            <asp:Button ID="btnview" OnClick="btnview_Click" runat="server" Text="View" />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Image ID="Image1" runat="server" />
        <%--</div>--%>
    </form>
</body>
</html>
