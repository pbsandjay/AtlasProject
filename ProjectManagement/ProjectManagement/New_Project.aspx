<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New_Project.aspx.cs" Inherits="ProjectManagement.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

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
    <div class="container">
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Add New Project</h1>
            </center>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Project</td>
                    <td>
                        <asp:TextBox ID="txtbxProject" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Project Number</td>
                    <td>
                        <asp:TextBox ID="txtbxProjectNumber" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Purpose</td>
                    <td>
                        <asp:TextBox ID="txtbxPurpose" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Project manager</td>
                    <td>
                        <asp:TextBox ID="txtbxProjectManager" runat="server"></asp:TextBox>
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
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Due Date</td>
                    <td>
                        <asp:TextBox ID="txtbxDueDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Type</td>
                    <td>
                        <asp:DropDownList ID="DdlType" runat="server">
                            <asp:ListItem>Strategic</asp:ListItem>
                            <asp:ListItem>Non-Strategic </asp:ListItem>
                        </asp:DropDownList>
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
        </div>
        <center>
            <asp:Button ID="btnDashboard" runat="server" Text="Dashboard" OnClick="btnDashboard_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnView" runat="server" Text="View/Edit" OnClick="btnView_Click" />
        </center>
    </form>
    </div>
</body>
</html>
