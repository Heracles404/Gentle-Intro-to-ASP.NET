<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Tours.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Band Tour Admin<br />
            <br />
            Tour Numbers:
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TourNumber" DataValueField="TourNumber">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [TourNumber] FROM [Tours]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TourNumber,ShowDate" DataSourceID="SqlDataSource2" GridLines="Horizontal" PageSize="5" Width="415px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="TourNumber" HeaderText="TourNumber" ReadOnly="True" SortExpression="TourNumber" />
                    <asp:BoundField DataField="ShowDate" DataFormatString="{0:d}" HeaderText="ShowDate" ReadOnly="True" SortExpression="ShowDate" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Tours] WHERE [TourNumber] = ? AND [ShowDate] = ? AND [City] = ? AND [State] = ? AND (([ZipCode] = ?) OR ([ZipCode] IS NULL AND ? IS NULL)) AND [VenueName] = ? AND (([TicketLink] = ?) OR ([TicketLink] IS NULL AND ? IS NULL)) AND (([Cost] = ?) OR ([Cost] IS NULL AND ? IS NULL)) AND (([Time] = ?) OR ([Time] IS NULL AND ? IS NULL)) AND (([Notes] = ?) OR ([Notes] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Tours] ([TourNumber], [ShowDate], [City], [State], [ZipCode], [VenueName], [TicketLink], [Cost], [Time], [Notes]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Tours] WHERE ([TourNumber] = ?) ORDER BY [ShowDate]" UpdateCommand="UPDATE [Tours] SET [City] = ?, [State] = ?, [ZipCode] = ?, [VenueName] = ?, [TicketLink] = ?, [Cost] = ?, [Time] = ?, [Notes] = ? WHERE [TourNumber] = ? AND [ShowDate] = ? AND [City] = ? AND [State] = ? AND (([ZipCode] = ?) OR ([ZipCode] IS NULL AND ? IS NULL)) AND [VenueName] = ? AND (([TicketLink] = ?) OR ([TicketLink] IS NULL AND ? IS NULL)) AND (([Cost] = ?) OR ([Cost] IS NULL AND ? IS NULL)) AND (([Time] = ?) OR ([Time] IS NULL AND ? IS NULL)) AND (([Notes] = ?) OR ([Notes] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_TourNumber" Type="Int16" />
                    <asp:Parameter Name="original_ShowDate" Type="DateTime" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_ZipCode" Type="String" />
                    <asp:Parameter Name="original_ZipCode" Type="String" />
                    <asp:Parameter Name="original_VenueName" Type="String" />
                    <asp:Parameter Name="original_TicketLink" Type="String" />
                    <asp:Parameter Name="original_TicketLink" Type="String" />
                    <asp:Parameter Name="original_Cost" Type="String" />
                    <asp:Parameter Name="original_Cost" Type="String" />
                    <asp:Parameter Name="original_Time" Type="String" />
                    <asp:Parameter Name="original_Time" Type="String" />
                    <asp:Parameter Name="original_Notes" Type="String" />
                    <asp:Parameter Name="original_Notes" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TourNumber" Type="Int16" />
                    <asp:Parameter Name="ShowDate" Type="DateTime" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="VenueName" Type="String" />
                    <asp:Parameter Name="TicketLink" Type="String" />
                    <asp:Parameter Name="Cost" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="TourNumber" PropertyName="SelectedValue" Type="Int16" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="VenueName" Type="String" />
                    <asp:Parameter Name="TicketLink" Type="String" />
                    <asp:Parameter Name="Cost" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="original_TourNumber" Type="Int16" />
                    <asp:Parameter Name="original_ShowDate" Type="DateTime" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_ZipCode" Type="String" />
                    <asp:Parameter Name="original_ZipCode" Type="String" />
                    <asp:Parameter Name="original_VenueName" Type="String" />
                    <asp:Parameter Name="original_TicketLink" Type="String" />
                    <asp:Parameter Name="original_TicketLink" Type="String" />
                    <asp:Parameter Name="original_Cost" Type="String" />
                    <asp:Parameter Name="original_Cost" Type="String" />
                    <asp:Parameter Name="original_Time" Type="String" />
                    <asp:Parameter Name="original_Time" Type="String" />
                    <asp:Parameter Name="original_Notes" Type="String" />
                    <asp:Parameter Name="original_Notes" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
