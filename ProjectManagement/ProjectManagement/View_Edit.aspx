<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="ProjectManagement.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" />
    <title></title>
    </head>
<body>
    <div class="container shadow-sm p-3 mb-5 bg-white rounded">
      <form id="form1" runat="server">
          <center><h2>View Projects</h2></center> 
          <div class="container-fluid">
        <asp:SqlDataSource ID="EditDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Projects]" DeleteCommand="DELETE FROM Projects WHERE (Id = @Id)" UpdateCommand="UPDATE Projects SET Number = @Number, Project = @Project, Purpose = @Purpose, Manager = @Manager, Original_Due_Date = @Original_Due_Date, Current_Due_Date = @Current_Due_Date, Status = @Status, Type = @Type, Done = @Done, Current_Status = @Current_Status, Actual_Date = @Actual_Date WHERE (Id = @Id)">
            <DeleteParameters>
                <asp:Parameter Name="Id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Number" />
                <asp:Parameter Name="Project" />
                <asp:Parameter Name="Purpose" />
                <asp:Parameter Name="Manager" />
                <asp:Parameter Name="Original_Due_Date" />
                <asp:Parameter Name="Current_Due_Date" />
                <asp:Parameter Name="Status" />
                <asp:Parameter Name="Type" />
                <asp:Parameter Name="Done" />
                <asp:Parameter Name="Current_Status" />
                <asp:Parameter Name="Actual_Date" />
                <asp:Parameter Name="Id" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EditDataSource" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Number" HeaderText="Project Number" SortExpression="Number" />
                <asp:BoundField DataField="Project" HeaderText="Project" SortExpression="Project" />
                <asp:BoundField DataField="Purpose" HeaderText="Purpose" SortExpression="Purpose" />
                <asp:BoundField DataField="Manager" HeaderText="Project Manager" SortExpression="Manager" />
                <asp:BoundField DataField="Original_Due_Date" HeaderText="Original Due Date" SortExpression="Original_Due_Date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Current_Due_Date" HeaderText="Current Due Date" SortExpression="Current_Due_Date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Actual_Date" HeaderText="Actual Date" SortExpression="Actual_Date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Status" HeaderText="Initial Status" SortExpression="Status" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Done" HeaderText="Done on Time" SortExpression="Done" />
                <asp:BoundField DataField="Current_Status" HeaderText="Current Status" SortExpression="Current_Status" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>  
              </div>
    </form>        
    <br />
    <center>
        <a href="Default.aspx">Dashboard</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="New_Project.aspx">Add Project</a>
    </center>
        </div>
    </body>
</html>
