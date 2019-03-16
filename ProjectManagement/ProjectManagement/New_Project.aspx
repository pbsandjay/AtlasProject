<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New_Project.aspx.cs" Inherits="ProjectManagement.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.4.4.js"></script>
    <style type="text/css">
        
        .auto-style2 {
            height: 51px;
        }
        .auto-style3 {
            width: 359px;
        }
        .auto-style4 {
            height: 51px;
            width: 359px;
        }
    </style>
</head>
<body>
    <div class="container shadow-sm p-3 mb-5 bg-white rounded">
    <form id="form1" runat="server">
        <center>
            <center>
                <h2>New Project</h2>
            </center>
            <center>
            <table>
                <tr>
                    <td class="auto-style3">Project</td>
                    <td>
                        <asp:TextBox ID="txtbxProject" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbxProject" ErrorMessage="Project Name is required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Project Number</td>
                    <td>
                        <asp:TextBox ID="txtbxProjectNumber" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbxProjectNumber" ErrorMessage="Project Number is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Purpose</td>
                    <td>
                        <asp:TextBox ID="txtbxPurpose" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbxPurpose" ErrorMessage="Project purpose is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Project manager</td>
                    <td>
                        <asp:TextBox ID="txtbxProjectManager" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtbxProjectManager" ErrorMessage="Project manager is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Status</td>
                    <td class="auto-style2">
                        &nbsp;<asp:DropDownList ID="DdlStatus" runat="server">
                            <asp:ListItem>Started</asp:ListItem>
                            <asp:ListItem>Not Started</asp:ListItem>
                            <asp:ListItem>On Hold</asp:ListItem>
                            <asp:ListItem>Done</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DdlStatus" ErrorMessage="Project status is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Due Date</td>
                    <td>
                        <asp:TextBox ID="txtbxDueDate" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Due Date is required." ForeColor="Red" ControlToValidate="txtbxDueDate"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Type</td>
                    <td>
                        <asp:DropDownList ID="DdlType" runat="server">
                            <asp:ListItem>Strategic</asp:ListItem>
                            <asp:ListItem>NonStrategic </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DdlType" ErrorMessage="Project type is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </center>
        <center>
            <a href="Default.aspx">Dashboard</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="View_Edit.aspx">View/Edit</a>
        </center>
    </form>
    </div>
</body>
</html>
