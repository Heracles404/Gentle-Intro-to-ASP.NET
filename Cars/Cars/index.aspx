<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Cars.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 537px;
        }
        .auto-style2 {
            height: 605px;
        }
        .auto-style3 {
            height: 209px;
            text-align: right;
        }
        .auto-style4 {
            height: 209px;
            width: 480px;
        }
        .auto-style5 {
            width: 97%;
            height: 201px;
        }
        .auto-style6 {
            text-align: center;
            height: 101px;
            font-size: xx-large;
        }
        .auto-style7 {
            text-align: center;
        }
        
        .img1 {
            height: 600px;
            width: 900px;
            border-radius: 5px;
        }
        .auto-style8 {
            font-size: large;
            margin-bottom: 0px;
        }

        </style>
</head>
<body style="height: 617px">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style4">
                        <table class="auto-style5" align="right">
                            <tr>
                                <td class="auto-style6">
                                    <h1>Choose your luxury car!</h1>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                        <asp:DropDownList ID="selCars" runat="server" CssClass="auto-style8" Height="24px" Width="168px" AutoPostBack="True" OnSelectedIndexChanged="selCars_SelectedIndexChanged">
                                            <asp:ListItem>Car</asp:ListItem>
                                            <asp:ListItem>Camero</asp:ListItem>
                                            <asp:ListItem>Corvette</asp:ListItem>
                                            <asp:ListItem>Mustang</asp:ListItem>
                                            <asp:ListItem>Porsche</asp:ListItem>
                                        </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style3">
                        <asp:Image ID="CarIMG" CssClass="img1" runat="server"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
