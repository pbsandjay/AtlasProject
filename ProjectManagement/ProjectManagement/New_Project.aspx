<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New_Project.aspx.cs" Inherits="ProjectManagement.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 51px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>Project</td>
                    <td>
                        <asp:TextBox ID="txtbxProject" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Purpose</td>
                    <td>
                        <asp:TextBox ID="txtbxPurpose" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Project manager</td>
                    <td>
                        <asp:TextBox ID="txtbxProjectManager" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Status</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DdlStatus" runat="server">
                            <asp:ListItem>Started</asp:ListItem>
                            <asp:ListItem>Not Started</asp:ListItem>
                            <asp:ListItem>On Hold</asp:ListItem>
                            <asp:ListItem>Done</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Due Date</td>
                    <td>
                        <asp:TextBox ID="txtbxDueDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td>
                        <asp:DropDownList ID="DdlType" runat="server">
                            <asp:ListItem>Strategic</asp:ListItem>
                            <asp:ListItem>Non-Strategic </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
