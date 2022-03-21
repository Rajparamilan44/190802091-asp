<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Module</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Font Icon -->
    <link rel="stylesheet" href="src/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="src/css/style.css">
</head>
<body>
    <form id="form1" runat="server">
    <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                            <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server"  placeholder="Your Name"></asp:TextBox>
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            </div>
                            <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Email"></asp:TextBox>
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                            </div>
                            <div class="form-group">
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Password"></asp:TextBox>
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox"  id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group form-button">
                            <asp:Button ID="Button1" runat="server" Text="Register"  name="signup" 
                                    class="form-submit" onclick="Button1_Click"></asp:Button>
                            </div>
                    </div>
                    <div class="signup-image">
                        <img src="src/images/signup-image.jpg" alt="sing up image"/>
                        <a href="#" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
