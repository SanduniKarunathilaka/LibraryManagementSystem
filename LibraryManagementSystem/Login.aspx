<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LibraryManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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

            <div class="form-horizontal">
                <div class="form-trans">
                    <div class="form-font">

                        <h3>Login</h3>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" CssClass="col-md-4 control-label" Text="Username"></asp:Label>
                            <div class="col-md-5">
                                <div class="form-input">
                                    <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="The user name is required" CssClass="text-danger" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" CssClass="col-md-4 control-label" Text="Password"></asp:Label>
                            <div class="col-md-5">
                                <div class="form-input">
                                    <asp:TextBox ID="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="The password is required" CssClass="text-danger" ControlToValidate="Password"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="form-link-font">

                            <div class="col-md-2"></div>
                            <div class="col-md-6">
                                <asp:Button ID="btn1" runat="server" Text="Login" OnClick="Login_click" /> 
                                <br />
                                <asp:LinkButton ID="linkButton1" runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                            </div>


                            <div class="form-group">
                                <div class="col-md-2"></div>
                                <div class="col-md-6">
                                    <asp:LinkButton ID="linkButton2" runat="server" PostBackUrl="#">Forgot Password</asp:LinkButton>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-2"></div>
                            <div class="col-md-6">
                                <asp:Label ID="loginlbl1" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>





              

    <hr />
    <footer class="footer-position">
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; 2020 .com &middot; <a href="Home.aspx">Home</a>&middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; </p>
        </div>
    </footer>
        </div>
    </form>
</body>
</html>
