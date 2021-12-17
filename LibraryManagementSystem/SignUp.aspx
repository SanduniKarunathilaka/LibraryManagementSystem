ers<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LibraryManagementSystem.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
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

            <div class="center-page">
            <div class="form-trans2">
                <label class="col-xs-11">User ID</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbID" runat="server" Class="form-control" placeholder="ID"></asp:TextBox>
                </div>

                <label class="col-xs-11">User Name</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbUser" runat="server" Class="form-control" placeholder="UserName"></asp:TextBox>
                </div>

                <label class="col-xs-11">Password</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>

                <label class="col-xs-11">Confirm Password</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                </div>

                <label class="col-xs-11">Name</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
                </div>

                <label class="col-xs-11">Email</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbMail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </div>


                 <div class="col-xs-11 space-vert"> 
                <div class="button button5">
                    <asp:Button ID="btSignUp" runat="server" Text="Sign Up" Style="height: 26px" OnClick="signUp_click" />
                </div>
                </div>
            </div>
        </div>




        <!---SignUp --->


        <!--- Footer --->

        <hr />
        <footer class="footer-position">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2020 PEPO.com &middot; <a href="Home.aspx">Home</a>&middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>

        </div>
    </form>
</body>
</html>
