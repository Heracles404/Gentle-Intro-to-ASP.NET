<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ThePostBackProblem.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TxtMy" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Calendar ID="CalMy" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="BtnOK" runat="server" OnClick="BtnOK_Click" Text="OK" />
        <br />
        <br />
        <br />
        <asp:Label ID="LblResult" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
