<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LibraryManagementSystem.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Digital Library
    </title>
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
                                </button>
                            </div>
                        </div>
                </div>
            <h2>Digital Library</h2>
            <img src="Images/library1.jpg" />
            <asp:LinkButton ID="linkButtonLogin" runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
            <asp:LinkButton ID="linkButtonSignUp" runat="server" PostBackUrl="~/SignUp.aspx">SignUp</asp:LinkButton>
            
        </div>
    </form>
</body>
</html>
