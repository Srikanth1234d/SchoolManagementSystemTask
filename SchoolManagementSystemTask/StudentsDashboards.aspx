<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentsDashboards.aspx.cs" Inherits="SchoolManagementSystemTask.StudentsDashboards" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <center class="auto-style15">
        <asp:GridView ID="StudentView" runat="server" AutoGenerateColumns="False" CssClass="auto-style14" Height="16px" Width="775px" BackColor="#003399" BorderColor="#3366FF" ForeColor="White">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Class" HeaderText="Class" />
                <asp:BoundField  DataField="Division" HeaderText="Division" />
                <asp:BoundField  DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="Educational Status" HeaderText="Educational Status" />
            </Columns>
        </asp:GridView>
            </center>
        </div>
    </form>
</body>
</html>
