<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="artists.aspx.cs" Inherits="BandPage.artists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDNumber" DataSourceID="SqlDataSource1" Height="208px" Width="1027px">
                <Columns>
                    <asp:BoundField DataField="IDNumber" HeaderText="IDNumber" InsertVisible="False" ReadOnly="True" SortExpression="IDNumber" />
                    <asp:BoundField DataField="SignonlID" HeaderText="SignonlID" SortExpression="SignonlID" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="Bio" HeaderText="Bio" SortExpression="Bio" />
                    <asp:BoundField DataField="Instruments" HeaderText="Instruments" SortExpression="Instruments" />
                    <asp:BoundField DataField="FavFood" HeaderText="FavFood" SortExpression="FavFood" />
                    <asp:BoundField DataField="HomeTown" HeaderText="HomeTown" SortExpression="HomeTown" />
                    <asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" BorderColor="#333333" BorderStyle="Double" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Artists]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
