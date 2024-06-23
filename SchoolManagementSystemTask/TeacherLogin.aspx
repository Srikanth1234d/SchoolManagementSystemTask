<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherLogin.aspx.cs" Inherits="SchoolManagementSystemTask.TeacherLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style5 {
            width: 69px;
        }
        .auto-style6 {
            width: 118px;
        }
        .auto-style7 {
            width: 961px;
            height: 430px;
        }
        .auto-style9 {
            width: 358px;
            height: 84px;
        }
        #form2{
            margin-left: 132px;
        }
    </style>
    
</head>
<body>
    <form id="form2" runat="server">
        <center class="auto-style7">
             <h1 style="background-color:cornflowerblue;color:white">Teacher Login</h1>
            <div>
               
                <div>
            </div>
                </div>
                <table ;border:"5px"="" class="auto-style9" style="background-color:darkblue;color:mintcream">
                    <caption>
                        <h3 class="auto-style12" style="background-color:midnightblue;color:white">Teacher</h3>
                    </caption>
                  
                    <tr>
                        <td class="auto-style6">UserName</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="Usertxt" runat="server" Height="28px" Width="220px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Password</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="passwordtxt" runat="server" Height="28px" Width="220px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            <br/>
             <asp:Button ID="btnLogin" runat="server" Text="Login" Height="27px" Width="84px" BackColor="Blue" ForeColor="White" OnClick="btnLogin_Click" />

            <asp:Button ID="Resetbtn" runat="server" Text="Reset" Height="27px" Width="84px" BackColor="Blue" ForeColor="White" />
            
            <br />
            <br />
            <br />
            <br />
            <br />
            <center class="auto-style15">
                <asp:GridView ID="Grid" runat="server" AutoGenerateColumns="False" BackColor="#003399" BorderColor="#3366FF" CssClass="auto-style14" ForeColor="White" Height="16px" Width="775px">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Class" HeaderText="Class" />
                        <asp:BoundField DataField="Division" HeaderText="Division" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="Educational Status" HeaderText="Educational Status" />
                    </Columns>
                </asp:GridView>
            </center>
            <br />
            <br />
            <br />
        </center>
         <script src="Scripts/jquery-3.4.1.min.js"></script>
        
            <script type="text/javascript">
                $(document).ready(function () {
                    $("#btnLogin").click(function () {
                        alert("Welcome to Student details");
                    });
                });
            </script>
    </form>
    </body>
</html>
