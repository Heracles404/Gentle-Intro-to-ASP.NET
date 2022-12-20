<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Validators.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 309px;
            text-align: right;
        }
        .auto-style3 {
            width: 309px;
            text-align: right;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Name: </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtName" runat="server" Width="184px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Missing Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password: </td>
                    <td>
                        <asp:TextBox ID="txtPW" runat="server" TextMode="Password" Width="184px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPW" ErrorMessage="Missing Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Re-type Password: </td>
                    <td>
                        <asp:TextBox ID="txtPW2" runat="server" TextMode="Password" Width="184px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPW" ControlToValidate="txtPW2" ErrorMessage="Passsword don't match"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPW2" ErrorMessage="Missing Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email: </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="184px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Age:&nbsp; </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtAge" runat="server" Width="184px"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Ages between 13-100" MaximumValue="100" MinimumValue="13"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="190px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
