<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SchoolManagementSystem.aspx.cs" Inherits="SchoolManagementSystemTask.SchoolManagementSystem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 37%;
            height: 217px;
            margin-top: 22px;
        }
        .auto-style5 {
            height: 23px;
            width: 218px;
        }
        .auto-style6 {
            width: 218px;
        }
        .auto-style7 {
            height: 23px;
            }
        .auto-style9 {
            height: 47px;
        }
        .auto-style10 {
            width: 218px;
            height: 47px;
        }
        .auto-style11 {
            font-size: xx-large;
        }
        .auto-style12 {
            width: 214px;
            height: 44px;
        }
        .auto-style13 {
            width: 1133px;
            height: 607px;
        }
        .auto-style14 {
            margin-left: 88px;
        }
        .auto-style15 {
            width: 925px;
            margin-top: 19px;
        }
    </style>
</head>
<body style="background-color:lightsteelblue">
    <form id="form1" runat="server" class="auto-style13">
        <center>
        <div margin-left: "109px">
            <h1>
            <asp:Label ID="Label1" runat="server" Text="School Management System" BackColor="#0066FF" CssClass="auto-style11" ForeColor="White"></asp:Label>
            </h1>
            <div>
            <table class="auto-style1" style="background-color:darkblue;color:mintcream" ;border:"5px">
                <center>
                <h1 style="background-color:midnightblue;color:white" class="auto-style12"> Student</h1></center>
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
                        <asp:TextBox ID="Classtxt" runat="server" Height="28px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Divison</td>
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
            <tr>
                    <td>Educational Status</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="Educationaltxt" runat="server" Height="28px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
        
            </table>
                </div>
            <br/>
             <asp:Button ID="btnSave" runat="server" Text="Save" Height="27px" Width="84px" BackColor="Blue" ForeColor="White" OnClick="btnSave_Click" />

            <asp:Button ID="Resetbtn" runat="server" Text="Reset" Height="27px" Width="84px" BackColor="Blue" ForeColor="White" OnClick="Resetbtn_Click" />

        </div>
            </center>
   
        <script src="Scripts/jquery-3.4.1.min.js"></script>
   
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnSave').click(function () {
                alert("hi");
                var status = $('#Educationaltxt').val();
                alert(status);
                debugger;
                $.ajax({
                    type: "POST",
                    url: "SchoolManagementSystemTask.aspx /btnSave_Click",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var data = response.d;
                        // Clear existing rows
                        $('#GridView1').find('tr:gt(0)').remove();
                        // Add new rows
                        for (var i = 0; i < data.length; i++) {
                            var row = '<tr><td>' + data[i].Id + '</td><td>' + data[i].Name + '</td><td>' + data[i].Class + '</td><td>' + data[i].Divison + '</td><td>' + data[i].Address + '</td><td>' + data[i].EducationalStatus + '</td></tr>';
                            $('#GridView1').append(row);
                        }
                    }
                });
           });

        });     
        
    </script>

      </form>

    </body>
</html>
