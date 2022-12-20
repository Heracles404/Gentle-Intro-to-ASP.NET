<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FirstASPWebApp.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 315px;
        }
    </style>
</head>
<body style="height: 440px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>Welcome to my first ASP.NET Web Application</h1>
            
            Enter First Name:
            <asp:TextBox ID="txtFirst" runat="server" Width="155px"></asp:TextBox>
            <!-- To Require a field RequiredFieldValidator -->
            <asp:RequiredFieldValidator id="rfvFirst" ErrorMessage="Required" ControlToValidate="txtFirst" runat="server" display="dynamic"/>
            <!-- To Have a Validation Format - RegularExpressionValidator -->
            <asp:RegularExpressionValidator id="revFirst" ErrorMessage="Enter a Valid Name." ControlToValidate="txtFirst" runat="server" ValidationExpression="^[a-zA-Z -]{1,20}$" display="Dynamic"/>

            <br />
            <br/>

            Enter Last Name:
            <asp:TextBox ID="txtLast" runat="server" Width="155px"></asp:TextBox>
            <!-- To Require a field RequiredFieldValidator -->
            <asp:RequiredFieldValidator id="rfvLast" ErrorMessage="Required" ControlToValidate="txtLast" runat="server" display="dynamic"/>
            <!-- To Have a Validation Format - RegularExpressionValidator -->
            <asp:RegularExpressionValidator id="revLast" ErrorMessage="Enter a Valid Name." ControlToValidate="txtLast" runat="server" ValidationExpression="^[a-zA-Z -]{1,20}$" display="Dynamic"/>

            <br />
            <br />

            <asp:Button ID="btnGo" runat="server" Text="Go" Width="59px" OnClick="btnGo_Click" />

            <br />
            <br />
            <hr/>

            <asp:Label ID="lblResult" runat="server"></asp:Label>

            <br />
            <br />
        </div>
    </form>
</body>
</html>
