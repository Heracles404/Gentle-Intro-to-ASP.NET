<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EmployeeInfo.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 536px;
        }
    </style>
</head>
<body style="height: 584px">
    <form id="form1" runat="server">
    <div class="auto-style1">
        <h2>Employee Information</h2>
        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Name" runat="server" Width="125px"></asp:TextBox>
        <br />
        <br />
        Select Office:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="citySelect" runat="server" AutoPostBack="True" Height="22px" OnSelectedIndexChanged="citySelect_SelectedIndexChanged" Width="133px">
            <asp:ListItem Value=" ">Pick City</asp:ListItem>
            <asp:ListItem>Toronto</asp:ListItem>
            <asp:ListItem>New York</asp:ListItem>
            <asp:ListItem>London</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="lblCity" runat="server"></asp:Label>
        <br />
        <br />
        Department:<asp:RadioButtonList ID="department" runat="server" Width="161px">
            <asp:ListItem>Accounting</asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>Legal</asp:ListItem>
            <asp:ListItem>Marketing</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        Qualifications:
        <br />
        <asp:CheckBoxList ID="qualifications" runat="server" Width="161px">
            <asp:ListItem>BA</asp:ListItem>
            <asp:ListItem>MA</asp:ListItem>
            <asp:ListItem>PHD</asp:ListItem>
        </asp:CheckBoxList>
        <br />
&nbsp;
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="71px" />
        <br />
        <br />
&nbsp;
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <br />
        </div>

    </form>

</body>
</html>
