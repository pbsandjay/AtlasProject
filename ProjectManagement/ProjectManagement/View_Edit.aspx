<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="ProjectManagement.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:SqlDataSource ID="EditDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Projects]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EditDataSource">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Project" HeaderText="Project" SortExpression="Project" />
                <asp:BoundField DataField="Purpose" HeaderText="Purpose" SortExpression="Purpose" />
                <asp:BoundField DataField="Manager" HeaderText="Manager" SortExpression="Manager" />
                <asp:BoundField DataField="Original_Due_Date" HeaderText="Original_Due_Date" SortExpression="Original_Due_Date" />
                <asp:BoundField DataField="Current_Due_Date" HeaderText="Current_Due_Date" SortExpression="Current_Due_Date" />
                <asp:BoundField DataField="Actual_Date" HeaderText="Actual_Date" SortExpression="Actual_Date" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Current_Status" HeaderText="Current_Status" SortExpression="Current_Status" />
                <asp:BoundField DataField="Done_On_Time" HeaderText="Done_On_Time" SortExpression="Done_On_Time" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>            
        </div>
    </form>
</body>
</html>
