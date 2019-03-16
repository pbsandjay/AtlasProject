<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ProjectManagement.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 222px;
        }
        .auto-style3 {
            width: 222px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="font-size: xx-large; font-weight: bold; font-style: normal; color: #000080; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">Atlas Dashboard</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Total Number of Projects:</td>
                    <td>
                        <asp:FormView ID="NumProj" runat="server" DataSourceID="ProjectNumber">
                            <EditItemTemplate>
                                Project:
                                <asp:TextBox ID="ProjectTextBox" runat="server" Text='<%# Bind("Project") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Project:
                                <asp:TextBox ID="ProjectTextBox" runat="server" Text='<%# Bind("Project") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Project:
                                <asp:Label ID="ProjectLabel" runat="server" Text='<%# Bind("Project") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectNumber" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas %>" SelectCommand="SELECT [Project] FROM [Projects]"></asp:SqlDataSource>
                    </td>
                    <td>Closest Due Date:</td>
                    <td>
                        <asp:FormView ID="DueDate" runat="server" DataSourceID="ClosestDueDate">
                            <EditItemTemplate>
                                Current_Due_Date:
                                <asp:TextBox ID="Current_Due_DateTextBox" runat="server" Text='<%# Bind("Current_Due_Date") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Current_Due_Date:
                                <asp:TextBox ID="Current_Due_DateTextBox" runat="server" Text='<%# Bind("Current_Due_Date") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Current_Due_Date:
                                <asp:Label ID="Current_Due_DateLabel" runat="server" Text='<%# Bind("Current_Due_Date") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ClosestDueDate" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas %>" SelectCommand="SELECT [Current_Due_Date] FROM [Projects]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Number Started:&nbsp;</td>
                    <td>
                        <asp:FormView ID="ProjStarted" runat="server" DataSourceID="ProjectStarted" Height="21px">
                            <EditItemTemplate>
                                Status:
                                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Status:
                                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Status:
                                <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectStarted" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas %>" SelectCommand="SELECT [Status] FROM [Projects]"></asp:SqlDataSource>
                    </td>
                    <td>Number of Strategic Projects:</td>
                    <td>
                        <asp:FormView ID="StratProj" runat="server" DataSourceID="StrategicProjects">
                            <EditItemTemplate>
                                Type:
                                <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Bind("Type") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Type:
                                <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Bind("Type") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Type:
                                <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Bind("Type") %>' Enabled="false" />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="StrategicProjects" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas %>" SelectCommand="SELECT [Type] FROM [Projects]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp; Number Not Done:&nbsp;</td>
                    <td class="auto-style4">
                        <asp:FormView ID="NumNotDone" runat="server" DataSourceID="ProjectNotDone">
                            <EditItemTemplate>
                                Status:
                                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Status:
                                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Status:
                                <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectNotDone" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas %>" SelectCommand="SELECT [Status] FROM [Projects]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">Numebr of Non-Strategic Projects:</td>
                    <td class="auto-style4">
                        <asp:FormView ID="NonStratProj" runat="server" DataSourceID="NonStrategicProjects">
                            <EditItemTemplate>
                                Type:
                                <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Bind("Type") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Type:
                                <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Bind("Type") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Type:
                                <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Bind("Type") %>' Enabled="false" />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="NonStrategicProjects" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas %>" SelectCommand="SELECT [Type] FROM [Projects]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Number On Hold:&nbsp;</td>
                    <td>
                        <asp:FormView ID="NumOnHold" runat="server" DataSourceID="ProjectOnHold">
                            <EditItemTemplate>
                                Status:
                                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Status:
                                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Status:
                                <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectOnHold" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas %>" SelectCommand="SELECT [Status] FROM [Projects]"></asp:SqlDataSource>
                    </td>
                    <td>Number Not Completed on Time:</td>
                    <td>
                        <asp:FormView ID="FormView9" runat="server" DataSourceID="NotDoneOnTime">
                            <EditItemTemplate>
                                Done:
                                <asp:CheckBox ID="DoneCheckBox" runat="server" Checked='<%# Bind("Done") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Done:
                                <asp:CheckBox ID="DoneCheckBox" runat="server" Checked='<%# Bind("Done") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Done:
                                <asp:CheckBox ID="DoneCheckBox" runat="server" Checked='<%# Bind("Done") %>' Enabled="false" />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="NotDoneOnTime" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas %>" SelectCommand="SELECT [Done] FROM [Projects]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Number Done:</td>
                    <td>
                        <asp:FormView ID="NumDone" runat="server" DataSourceID="NumberDone">
                            <EditItemTemplate>
                                Status:
                                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Status:
                                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Status:
                                <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="NumberDone" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas %>" SelectCommand="SELECT [Status] FROM [Projects]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Click to View Project Assignments" />
        </div>
    </form>
</body>
</html>
