<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Appointment_Scheduler.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title></title>
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
          <li><a class="nav-link active" href="Main.aspx#hero">Home</a></li>
          <li><a class="nav-link" href="Main.aspx#about">About</a></li>
          <li><a class="nav-link" href="Main.aspx#services">Services</a></li>
          <li><a class="nav-link" href="Schedule_appoint.aspx">Meet</a></li>
          <li><a class="nav-link" href="Signup.aspx">Sign Up</a></li>
         <li><a class="nav-link" href="Login.aspx">Login</a></li>
          <li><a class="nav-link" href="Main.aspx#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->

        <div style="margin-top:2%; margin-left:5%">
    <asp:Label ID="greetingLabel" runat="server" Text="Admin Page!" class="fs-1 fw-bold"></asp:Label><br />
            <asp:Label ID="Label1" runat="server" style="color:#106eea;font-size:16px;font-weight:600" Text="Click on the image to view records."></asp:Label>
</div>
   <!-- ======= Admin Page ======= -->
<section id="admin-page" class="d-flex align-items-center justify-content-center" style="margin-top:-13%">
  <div class="container text-center">
    <!-- Show the image by default -->
    <div id="image-container">
      <img src="admin.jpg" alt="Your Image" class="small-image" onclick="toggleGridView()" style="width:60%"/>
    </div>

<!-- ======= GridView ======= -->

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <center>
            <div style="margin-top:15%;display: none;" id="gridViewContainer" visible="false">
        <h2 style="margin-bottom:2%;color:midnightblue;font-family:'Arial Rounded MT'; font-weight:bold">Appointments Table</h2>
                <asp:GridView ID="appointmentsGrid" runat="server" AutoGenerateColumns="False" 
    OnRowEditing="appointmentsGrid_RowEditing" 
    OnRowDeleting="appointmentsGrid_RowDeleting" 
    OnRowUpdating="appointmentsGrid_RowUpdating" 
    OnRowCancelingEdit="appointmentsGrid_RowCancelingEdit"
    OnRowDataBound="appointmentsGrid_RowDataBound"
    DataKeyNames="id"
    CssClass="table table-bordered table-hover table-responsive border-info"
    AutoPostBack="True">
    <HeaderStyle HorizontalAlign="Center" />
    <RowStyle CssClass="table-info" HorizontalAlign="Center" />
    <AlternatingRowStyle CssClass="table-light" HorizontalAlign="Center" />
    <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="full_name" HeaderText="Full Name" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="client_name" HeaderText="Client Name" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="date_time" HeaderText="Appointment Date &amp; Time" DataFormatString="{0:MM/dd/yyyy HH:mm}" ItemStyle-HorizontalAlign="Center"/>

                <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" ItemStyle-HorizontalAlign="Center">
                    <ControlStyle CssClass="btn btn-success"/>
                </asp:CommandField>

                <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" ItemStyle-HorizontalAlign="Center">
                    <ControlStyle CssClass="btn btn-danger"/>
                </asp:CommandField>
            </Columns>
        </asp:GridView>

                <h2 style="margin-top:5%;margin-bottom:2%;color:midnightblue;font-family:'Arial Rounded MT'; font-weight:bold">User Details Table</h2>
<asp:GridView ID="userDetailsGrid" runat="server" AutoGenerateColumns="False"
    DataKeyNames="ID"
    OnRowEditing="userDetailsGrid_RowEditing" 
    OnRowDeleting="userDetailsGrid_RowDeleting" 
    OnRowUpdating="userDetailsGrid_RowUpdating" 
    OnRowCancelingEdit="userDetailsGrid_RowCancelingEdit"
    CssClass="table table-bordered table-hover table-responsive border-info"
    AutoPostBack="True">
    <HeaderStyle HorizontalAlign="Center" />
    <RowStyle CssClass="table-info" HorizontalAlign="Center" />
    <AlternatingRowStyle CssClass="table-light" HorizontalAlign="Center" />
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="FirstName" HeaderText="First Name" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="LastName" HeaderText="Last Name" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="Password" HeaderText="Password" ItemStyle-HorizontalAlign="Center" />

        <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" ItemStyle-HorizontalAlign="Center">
                    <ControlStyle CssClass="btn btn-success"/>
                </asp:CommandField>

                <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" ItemStyle-HorizontalAlign="Center">
                    <ControlStyle CssClass="btn btn-danger"/>
                </asp:CommandField>

    </Columns>
</asp:GridView>
                </div>
            </center>
            </div>
</section>
            
        <asp:Timer ID="timerAutoDelete" runat="server" Interval="60000" Enabled="true" OnTick="timerAutoDelete_Tick"></asp:Timer>
       <script>
           function toggleGridView() {
               // Get references to the image container and GridView container
               var imageContainer = document.getElementById("image-container");
               var gridViewContainer = document.getElementById("gridViewContainer");

               // Toggle the visibility of the containers
               if (gridViewContainer.style.display === "block") {
                   gridViewContainer.style.display = "none";
                   imageContainer.style.display = "block";
               } else {
                   gridViewContainer.style.display = "block";
                   imageContainer.style.display = "none";
               }
           }
       </script>

    </form>
</body>
</html>
