<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="SchoolManagementSystemTask.StudentDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       h1{
           width: 281px;
       }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="background-color:green;color:white">Student Dashboard</h1>

     
        <div>
            <h2 style="color:Green">Welcome, <%= Session["Username"] %>!</h2>
            <h3 id="motivationalMessage"></h3>
        </div>


         <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var educationalStatus = '<%= Session["Educational Status"] %>';
            alert(educationalStatus);
            var message = "";

            switch (educationalStatus) {
                case "Excellent":
                    message = "Keep up the great work!";
                    break;
                case "Average":
                    message = "If you try more, you can be great at academics.";
                    break;
                case "Below Average":
                    message = "Don't give up. Every step you take is progress.";
                    break;
                default:
                    message = "Welcome!";
                    break;
            }

                $("#motivationalMessage").text(message);
        });
            
         </script>
    
    </form>
</body>
</html>
