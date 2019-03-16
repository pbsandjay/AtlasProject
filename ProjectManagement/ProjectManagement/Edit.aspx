<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="ProjectManagement.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="EditDataSource">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Project:
                <asp:TextBox ID="ProjectTextBox" runat="server" Text='<%# Bind("Project") %>' />
                <br />
                Purpose:
                <asp:TextBox ID="PurposeTextBox" runat="server" Text='<%# Bind("Purpose") %>' />
                <br />
                Manager:
                <asp:TextBox ID="ManagerTextBox" runat="server" Text='<%# Bind("Manager") %>' />
                <br />
                Original_Due_Date:
                <asp:TextBox ID="Original_Due_DateTextBox" runat="server" Text='<%# Bind("Original_Due_Date") %>' />
                <br />
                Current_Due_Date:
                <asp:TextBox ID="Current_Due_DateTextBox" runat="server" Text='<%# Bind("Current_Due_Date") %>' />
                <br />
                Finished_Date:
                <asp:TextBox ID="Finished_DateTextBox" runat="server" Text='<%# Bind("Finished_Date") %>' />
                <br />
                Status:
                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                <br />
                Type:
                <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                <br />
                Done:
                <asp:TextBox ID="DoneTextBox" runat="server" Text='<%# Bind("Done") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                Project:
                <asp:TextBox ID="ProjectTextBox" runat="server" Text='<%# Bind("Project") %>' />
                <br />
                Purpose:
                <asp:TextBox ID="PurposeTextBox" runat="server" Text='<%# Bind("Purpose") %>' />
                <br />
                Manager:
                <asp:TextBox ID="ManagerTextBox" runat="server" Text='<%# Bind("Manager") %>' />
                <br />
                Original_Due_Date:
                <asp:TextBox ID="Original_Due_DateTextBox" runat="server" Text='<%# Bind("Original_Due_Date") %>' />
                <br />
                Current_Due_Date:
                <asp:TextBox ID="Current_Due_DateTextBox" runat="server" Text='<%# Bind("Current_Due_Date") %>' />
                <br />
                Finished_Date:
                <asp:TextBox ID="Finished_DateTextBox" runat="server" Text='<%# Bind("Finished_Date") %>' />
                <br />
                Status:
                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                <br />
                Type:
                <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                <br />
                Done:
                <asp:TextBox ID="DoneTextBox" runat="server" Text='<%# Bind("Done") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Project:
                <asp:Label ID="ProjectLabel" runat="server" Text='<%# Bind("Project") %>' />
                <br />
                Purpose:
                <asp:Label ID="PurposeLabel" runat="server" Text='<%# Bind("Purpose") %>' />
                <br />
                Manager:
                <asp:Label ID="ManagerLabel" runat="server" Text='<%# Bind("Manager") %>' />
                <br />
                Original_Due_Date:
                <asp:Label ID="Original_Due_DateLabel" runat="server" Text='<%# Bind("Original_Due_Date") %>' />
                <br />
                Current_Due_Date:
                <asp:Label ID="Current_Due_DateLabel" runat="server" Text='<%# Bind("Current_Due_Date") %>' />
                <br />
                Finished_Date:
                <asp:Label ID="Finished_DateLabel" runat="server" Text='<%# Bind("Finished_Date") %>' />
                <br />
                Status:
                <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
                <br />
                Type:
                <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
                <br />
                Done:
                <asp:Label ID="DoneLabel" runat="server" Text='<%# Bind("Done") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="EditDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Projects.* FROM Projects WHERE (Id = @Id)" UpdateCommand="UPDATE Projects SET Project =, Purpose =, Manager =, Original_Due_Date =, Current_Due_Date =, Status =, Finished_Date =, Type =, Done = WHERE (Id = @Id) AND (Project = @Project) AND (Purpose = @Purpose) AND (Manager = @Manager) AND (Original_Due_Date = @Original_Due_Date) AND (Current_Due_Date = @Current_Due_Date) AND (Status = @Status) AND (Finished_Date = @Finished_Date) AND (Type = @Type) AND (Done = @Done)">
            <SelectParameters>
                <asp:Parameter Name="Id" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id" />
                <asp:Parameter Name="Project" />
                <asp:Parameter Name="Purpose" />
                <asp:Parameter Name="Manager" />
                <asp:Parameter Name="Original_Due_Date" />
                <asp:Parameter Name="Current_Due_Date" />
                <asp:Parameter Name="Status" />
                <asp:Parameter Name="Finished_Date" />
                <asp:Parameter Name="Type" />
                <asp:Parameter Name="Done" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
