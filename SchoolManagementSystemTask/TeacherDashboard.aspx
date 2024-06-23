<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherDashboard.aspx.cs" Inherits="SchoolManagementSystemTask.TeacherDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h2>Teacher Dashboard</h2>
            <%--<table id="studentsTable" border="1">
                <thead>
                    <tr>
                        <th> Id</th>
                        <th> Name</th>
                        <th>Class</th>
                        <th>Division</th>
                        <th>Address</th>
                        <th>Educational Status</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Data will be populated by jQuery -->
                </tbody>
            </table>--%>
           
        <center class="auto-style15">
        <asp:GridView ID="TeacherGridview" runat="server" AutoGenerateColumns="False" CssClass="auto-style14" Height="16px" Width="775px" BackColor="#003399" BorderColor="#3366FF" ForeColor="White">
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
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
            <script type="text/javascript">
                //$(document).ready(function () {
                //    debugger;
                //    $.ajax({
                //        url: "TeacherDashboard.aspx/GetStudents",
                //        method: 'POST',
                //        contentType: 'application/json',
                //        datatype:"json",
                //        success: function (response) {
                //            if (response.d) {
                //                var students = JSON.parse(response.d);
                //                var rows = '';
                //                students.forEach(function (student) {
                //                    rows += '<tr><td>' + student.Id + '</td><td>' + student.Name + '</td><td>' + student.Class + '</td><td>' + student.Division + '</td><td>' + student.Address + '</td><td>' + student.EducationalStatus + '</td></tr>';
                //                });
                //                $('#studentsTable tbody').html(rows);
                //            } else {
                //                alert('Error retrieving data');
                //            }
                //        },
                //        error: function () {
                //            alert('Error retrieving data');
                //        }
                //    });
                //});
            </script>
    </form>
</body>
</html>
