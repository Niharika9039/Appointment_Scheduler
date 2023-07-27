<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="LoginSignup.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title></title>
     <link href="Helper/css/style.default.css" rel="stylesheet" />
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon"/>
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"/>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet"/>
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/>

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet"/>
</head>
<body>
   <form id="form1" runat="server">
        <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">info@hvantagetechnologies.com</a></i>
        <i class="bi bi-phone d-flex align-items-center ms-4"><span>+12134389869, +18186616301</span></i>
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        <a href="https://twitter.com/i/flow/login?redirect_after_login=%2FHvantage" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="https://www.facebook.com/Hvantage.Technologies.USA" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="https://www.youtube.com/watch?v=4yRtdQX2zAA" class="instagram"><i class="bi bi-youtube"></i></a>
        <a href="https://www.linkedin.com/company/hvantage-technologies-inc-usa-/" class="linkedin"><i class="bi bi-linkedin"></i></a>
      </div>
    </div>
  </section>
        <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center" style="position:sticky; top:0;">
    <div class="container d-flex align-items-center justify-content-between">

      <!-- Uncomment below if you prefer to use an image logo -->
       <img src="hvantage-technologies-usa.png" class="logo"/>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="Main.aspx#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="Main.aspx#about">About</a></li>
          <li><a class="nav-link scrollto" href="Main.aspx#services">Services</a></li>
          <li><a class="nav-link scrollto " href="Schedule_appoint.aspx">Meet</a></li>
          <li><a class="nav-link scrollto" href="Signup.aspx">Sign Up</a></li>
         <li><a class="nav-link scrollto" href="Login.aspx">Login</a></li>
          <li><a class="nav-link scrollto" href="Main.aspx#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
           
        <div class=" page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5" style="margin-top:-5%">
                    <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                    
                        <div class="pr-lg-5">
                            <img src="calender.jpg" alt="" class="img-fluid" />     
                        </div>
                    </div>
                    <div class="col-lg-5 px-lg-4">
                        <%--<h1 class="text-base text-primary text-uppercase mb-4">Sign up Here</h1>--%>
                        <img src="hvantage-technologies-usa.png" alt="" class="img-fluid" /> 
                        <h2 class="mb-4">Welcome Back!</h2>

                        <div class ="form-group mb-4">
                            <asp:TextBox required= "true" ID="firstname" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="First Name" runat="server" ></asp:TextBox>

                        </div>
                         <div class ="form-group mb-4">
                            <asp:TextBox required= "true" ID="lastname" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Last Name" runat="server" ></asp:TextBox>

                        </div>
                          
                         <div class ="form-group mb-4">
                            <asp:TextBox required= "true" ID="email" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" ></asp:TextBox>

                        </div>
                             <div class ="form-group mb-4">
                            <asp:TextBox required= "true" TextMode="Password" ID="pass" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ></asp:TextBox>

                        </div>
                           <div class ="form-group mb-4">
                            <asp:TextBox required= "true" TextMode="Password" ID="conf" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Confirm Password" runat="server" ></asp:TextBox>

                        </div>
                       
                        <center><asp:Button Text="Sign up" ID="register" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" OnClick="register_Click" /></center>
                    </div>
                </div>
               
            </div>
            
        </div>
    </form>
</body>
</html>
