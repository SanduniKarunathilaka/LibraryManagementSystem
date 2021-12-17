<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LibraryManagementSystem.Home" %>

<!DOCTYPE html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>
<head runat="server">
    <title> Home</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link rel="stylesheet" href="css/Custom-Cs.css">
</head>

<body>
    <form id="form1" runat="server">
        <div>
             <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="Home.aspx">
                                <span>
                                    <img alt="Logo" src="Images/library1.jpg" height="30" /></span>Digital Library</a>
                        </div>
                        </div>
                </div>

            
            <div class="container">
              <img src="Images/library2.jpg" alt="Library" style="width:100%;" />
 
</div>
            
          

            <a href="Login.aspx" runat="server" class="btn btn-info btn-lg btn-block">Login</a>
            <a href="SignUp.aspx" runat="server" class="btn btn-secondary btn-lg btn-block">SignUp</a>
            
        </div>
    </form>
</body>
</html>
