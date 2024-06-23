<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="SchoolManagementSystemTask.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 320px;
            height: 179px;
            margin-top: 22px;
        }
        .auto-style12 {
            width: 214px;
            height: 44px;
        }
        .auto-style7 {
            height: 23px;
            }
        .auto-style5 {
            height: 23px;
            width: 218px;
        }
        .auto-style9 {
            height: 47px;
        }
        .auto-style10 {
            width: 218px;
            height: 47px;
        }
        .auto-style6 {
            width: 218px;
        }
        .auto-style14 {
            margin-left: 88px;
        }
        </style>
</head>
<body style="background-color:blueviolet">
    <form id="form1" runat="server">
        <center>
            <div>
            <table class="auto-style1" style="background-color:darkblue;color:mintcream" ;border:"5px">
                <center>
                <h1 style="background-color:midnightblue;color:white" class="auto-style12"> Teacher</h1></center>
                 <tr>
                    <td class="auto-style7">Id</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Idtxt" runat="server" Height="28px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Nametxt" runat="server" Height="28px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Class</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="Classtxt" runat="server" Height="38px" Width="219px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style9">Contact</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="Contacttxt" runat="server" Height="35px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Division</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="Divisiontxt" runat="server" Height="28px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="Addresstxt" runat="server" Height="28px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
            
                
               
            </table>
                </div>
            <br/>
             <asp:Button ID="btnSave" runat="server" Text="Save" Height="27px" Width="84px" BackColor="Blue" ForeColor="White" OnClick="btnSave_Click" />

            <asp:Button ID="restbtn" runat="server" Text="Reset" Height="27px" Width="84px" BackColor="Blue" ForeColor="White" OnClick="restbtn_Click" />
            <br />
            <br />
            <br />
        <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CssClass="auto-style14" Height="16px" Width="775px" BackColor="#003399" BorderColor="#3366FF" ForeColor="White">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Class" HeaderText="Class" />
                <asp:BoundField  DataField="Contact" HeaderText="Contact" />
                <asp:BoundField  DataField="Division" HeaderText="Division" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
            </Columns>
        </asp:GridView>
            <br />
            <br />
            </center>
            <br/>
        <div>
        </div>
          <script src="Scripts/jquery-3.4.1.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#btnSave').click(function () {
                  
                    alert("Successfully Details");
                });
            });
        </script>
    </form>
</body>
</html>
