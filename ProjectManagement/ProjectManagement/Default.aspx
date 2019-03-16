<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectManagement.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 87%;
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
        .auto-style5 {
            margin-left: 320px;
        }
        .auto-style6 {
            width: 132px;
        }
        .auto-style7 {
            height: 23px;
            width: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">>
            <h1 style="font-size: xx-large; font-weight: bold; font-style: normal; color: #000080; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">Atlas Dashboard</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Total Number of Projects:</td>
                    <td class="auto-style6">
                        <asp:FormView ID="NumProj" runat="server" DataSourceID="ProjectNumber" Height="21px">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectNumber" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Project) FROM Projects"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Number Started:&nbsp;</td>
                    <td>
                        <asp:FormView ID="ProjStarted" runat="server" DataSourceID="ProjectStarted" Height="21px">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectStarted" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Status) FROM Projects
WHERE Status = 'Started'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Number Started:&nbsp;</td>
                    <td class="auto-style6">
                        <asp:FormView ID="ProjStarted" runat="server" DataSourceID="ProjectStarted" Height="21px">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectNotDone" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Status) FROM Projects
WHERE Status = 'Not Done'"></asp:SqlDataSource>
                    </td>
                    <td>Number of Non-Strategic Projects:</td>
                    <td>
                        <asp:FormView ID="NumOnHold" runat="server" DataSourceID="ProjectOnHold">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="StrategicProjects" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Type) FROM Projects
WHERE Type = 'NonStrategic'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp; Number Not Done:&nbsp;</td>
                    <td class="auto-style7">
                        <asp:FormView ID="NumNotDone" runat="server" DataSourceID="ProjectNotDone">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="NumberDone" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Status) FROM Projects
WHERE Status = 'Done'"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">Number of Strategic Projects:</td>
                    <td class="auto-style4">
                        <asp:FormView ID="NonStratProj" runat="server" DataSourceID="NonStrategicProjects">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="NonStrategicProjects" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Type) FROM Projects
WHERE Type = 'Strategic'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Number On Hold:&nbsp;</td>
                    <td class="auto-style6">
                        <asp:FormView ID="NumOnHold" runat="server" DataSourceID="ProjectOnHold">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="StrategicProjects" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Type) FROM Projects
WHERE Type = 'Strategic'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Number of Non-Strategic Projects:</td>
                    <td>
                        <asp:FormView ID="NonStratProj" runat="server" DataSourceID="NonStrategicProjects">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="NonStrategicProjects" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Type) FROM Projects
WHERE Type = 'Non-Strategic'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Number Done:</td>
                    <td class="auto-style6">
                        <asp:FormView ID="NumDone" runat="server" DataSourceID="NumberDone">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="NotDoneOnTime" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Done) FROM Projects
WHERE Done = 'No'"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            &nbsp;<p class="auto-style5">
&nbsp;<asp:Button ID="btnView" runat="server" Text="Click to View Project Assignments" Font-Size="Larger" Height="58px" OnClick="btnView_Click" CssClass="btn-primary" />
            </p>
        </div>
    </form>
</body>
</html>
