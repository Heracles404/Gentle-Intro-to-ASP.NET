<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Journals.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Artist Journal Search Page<br />
            <br />
            Start Date:&nbsp;
            <asp:TextBox ID="txtStart" runat="server" Width="128px"></asp:TextBox>
            <br />
            <br />
            End Date:&nbsp;&nbsp;
            <asp:TextBox ID="txtEnd" runat="server" Width="128px"></asp:TextBox>
            <br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="74px" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDNumber,JournalDate" DataSourceID="SqlDataSource1" Width="435px">
                <Columns>
                    <asp:BoundField DataField="IDNumber" HeaderText="IDNumber" ReadOnly="True" SortExpression="IDNumber" />
                    <asp:BoundField DataField="JournalDate" HeaderText="JournalDate" ReadOnly="True" SortExpression="JournalDate" />
                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [ArtistJournal] WHERE (([JournalDate] &gt;= ?) AND ([JournalDate] &lt;= ?))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtStart" Name="JournalDate" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="txtEnd" Name="JournalDate2" PropertyName="Text" Type="DateTime" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
