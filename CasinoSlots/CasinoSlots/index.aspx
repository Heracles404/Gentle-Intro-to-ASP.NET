<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CasinoSlots.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 502px;
            text-align: center;
        }
        .auto-style2 {
            width: 24%;
            height: 96px;
        }
        .auto-style3 {
            height: 23px;
            width: 110px;
        }
        .auto-style4 {
            width: 128px;
        }
        .auto-style5 {
            height: 23px;
            width: 128px;
        }
        .auto-style6 {
            width: 33px;
        }
        .auto-style7 {
            height: 23px;
            width: 33px;
        }
        .auto-style8 {
            width: 110px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="img1" runat="server" Height="200px" Width="200px" />
            <asp:Image ID="img2" runat="server" Height="200px" Width="200px" />
            <asp:Image ID="img3" runat="server" Height="200px" Width="200px" />
            <br />
            <br />
            Your Bet:
            <asp:TextBox ID="txtBet" runat="server" Width="100px"></asp:TextBox>
            <br />
            <asp:Button ID="btnPull" runat="server" OnClick="btnPull_Click" Text="Pull" Width="168px" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblMoney" runat="server"></asp:Label>
            <br />
            <br />
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style6">1</td>
                    <td class="auto-style8">Cherry</td>
                    <td class="auto-style4">x2 </td>
                </tr>
                <tr>
                    <td class="auto-style7">2</td>
                    <td class="auto-style3">Cherries</td>
                    <td class="auto-style5">x3</td>
                </tr>
                <tr>
                    <td class="auto-style6">3</td>
                    <td class="auto-style8">Cherries</td>
                    <td class="auto-style4">x4</td>
                </tr>
                <tr>
                    <td class="auto-style6">3</td>
                    <td class="auto-style8">Horse Shoes</td>
                    <td class="auto-style4">x100 - Jackpot</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
