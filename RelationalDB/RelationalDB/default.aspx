<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RelationalDB._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="TrackNumber" HeaderText="TrackNumber" SortExpression="TrackNumber" />
                    <asp:BoundField DataField="TrackName" HeaderText="TrackName" SortExpression="TrackName" Visible="False" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="FavoriteSong" HeaderText="FavoriteSong" SortExpression="FavoriteSong" />
                    <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                    <asp:BoundField DataField="Album Name" HeaderText="Album Name" SortExpression="Album Name" />
                    <asp:BoundField DataField="AlbumNumber" HeaderText="AlbumNumber" SortExpression="AlbumNumber" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT AlbumTracks.AlbumNumber, AlbumTracks.TrackNumber, AlbumTracks.TrackName, Fans.Name, Fans.FavoriteSong, Fans.Comments, AlbumTracks.[Album Name] FROM (Fans INNER JOIN AlbumTracks ON Fans.FavoriteSong = AlbumTracks.TrackName) ORDER BY AlbumTracks.AlbumNumber, AlbumTracks.TrackNumber"></asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
