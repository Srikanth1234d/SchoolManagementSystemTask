<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="SchoolManagementSystemTask.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 349px;
            height: 56px;
            margin-left: 0px;
        }
        .auto-style2 {
            height: 43px;
        }
        .auto-style3 {
            width: 131px;
        }
        .auto-style4 {
            height: 43px;
            width: 131px;
        }
        #tbl{
            border:solid;
            border-block-start-width:thick;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <center class="auto-style7">
             <h1 style="background-color:cornflowerblue;color:white">Student Login</h1>
            <div>
               
                <div>
            </div>
                </div>
                <table ;border:"2px" class="auto-style1" style="background-color:midnightblue;color:mintcream" id="tbl">
                    <tr>
                         <caption>
                        <h3 class="auto-style12" style="background-color:midnightblue;color:white">Student</h3>
                    </caption>
                   <tr>
                        <td class="auto-style3">UserName</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="Usertxt" runat="server" Height="28px" Width="226px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Password</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="passwordtxt" runat="server" Height="28px" Width="226px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                       </tr>
                </table>
            <br/>
             <asp:Button ID="btnLogin" runat="server" Text="Login" Height="27px" Width="84px" BackColor="Blue" ForeColor="White" OnClick="btnLogin_Click" />

            <asp:Button ID="Resetbtn" runat="server" Text="Reset" Height="27px" Width="84px" BackColor="Blue" ForeColor="White" />
            
             <br />
            
            &nbsp;<br />
             <asp:Label ID="msglbl" runat="server" Text="Message" ForeColor="#FF3300"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </center>
         <script src="Scripts/jquery-3.4.1.min.js"></script>
        
            <script type="text/javascript">
                $(document).ready(function () {
                    $("#btnLogin").click(function () {
                        var educationalStatus = '<%= Session["EducationalStatus"] %>';
                       
                        var message = "";

                        switch (educationalStatus) {
                            case "Excellent":
                                message = "Keep up the great work!";
                                break;
                            case "Good":
                                message = "If you try more, you can be great at academics.";
                                break;
                            case "Average":
                                message = "Don't give up. Every step you take is progress.";
                                break;
                            default:
                                message = "Welcome ! don't give up,Needs improvement, can do better, potential for growth, areas to develop";
                                break;
                        }

                        $("#motivationalMessage").text(message);
                        
                    });
                });
            </script>
    </form>
</body>
</html>
