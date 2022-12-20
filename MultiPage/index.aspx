<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MultiPage.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 256px;
            height: 192px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to my Web Application</h1>
            <p>
                &nbsp;</p>
            <p>
                <img alt="CC" class="auto-style1" src="Images/chiarelli.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblWelcome" runat="server" Text="Label"></asp:Label>
            </p>
            <p>
                Click here to go to <a href="p2.aspx">page 2</a></p>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        <a href="p2.aspx">Please click here to go to page 2
        </a>
    </p>
    <p>
        &nbsp;</p>
</body>
</html>
