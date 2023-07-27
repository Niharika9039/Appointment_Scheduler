<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Appointment_Scheduler.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <title>HVantage Technologies</title>
  <meta content="" name="description"/>
  <meta content="" name="keywords"/>

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
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <!-- Uncomment below if you prefer to use an image logo -->
       <img src="hvantage-technologies-usa.png" class="logo"/>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto " href="Schedule_appoint.aspx">Meet</a></li>
          <li><a class="nav-link scrollto" href="Signup.aspx">Sign Up</a></li>
         <li><a class="nav-link scrollto" href="Login.aspx">Login</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container" data-aos="zoom-out" data-aos-delay="100">
      <h1>Welcome to <span>HVantage</span></h1>
      <h2>A Global Technology and Outsourcing Company</h2>
      <div class="d-flex">
        <a href="#about" class="btn-get-started scrollto">Get Started</a>
        <a href="Schedule_appoint.aspx" class="btn-get-started scrollto" style="margin-left:2%">Schedule Appointment!</a>
      <a href="https://www.youtube.com/watch?v=4yRtdQX2zAA" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
        
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bx bx-laptop"></i></div>
              <h4 class="title"><a href="">Technology</a></h4>
              <p class="description">Because any sufficiently advanced technology is indistinguishable from magic. We make sure your idea gets integration with "beyond tomorrow" technology</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="bx bxs-analyse"></i></div>
              <h4 class="title"><a href="">Enterprise</a></h4>
              <p class="description">At Hvantage we understand your business and its requirements. We strive to make it more proficient, secure, smart, accountable, innovative and sustainable to the future.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
              <div class="icon"><i class="bx bxl-redux"></i></div>
              <h4 class="title"><a href="">Outsourcing</a></h4>
              <p class="description">Things are always better when we work together. We assist our clients in profitable outsourcing of their products and services to maximize their gains.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
              <div class="icon"><i class="bx bx-spreadsheet"></i></div>
              <h4 class="title"><a href="">S.E.O.</a></h4>
              <p class="description">Generate relevant website traffic from Google, Bing and other search engines. Our SEO experts keep clients ahead of competition and on top of search results.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Featured Services Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>About</h2>
          <h3>Find Out More <span>About Us</span></h3>
          <p>With domain expertise on Banking, Consumer Products, Entertainment, High tech, Insurance, Financial Services and Retail, Hvantage Technologies Inc brings in world class software solutions and support services tailored to the unique requirements for clients across the world. Our IT services & products suit the viability to serve the global IT domain requirements.</p>
        </div>

        <div class="row">
          <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">
            <img src="assets/img/about.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 content d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <h3>We Serve With Smile at Affordable Prices</h3>
            <p class="fst-italic">
             Hvantage was established in 2011 to provide technology and operations services. Hvantage has more than 200 passionate technologist, operations associates, and leaders providing web, mobile, enterprise, data solutions, and operations support to our customers.
            </p>
            <ul>
              <li>
                <i class="bx bxs-devices"></i>
                <div>
                  <h5>Responsive Mobile Websites</h5>
                  <p>Tablet and Mobile Optimized</p>
                </div>
              </li>
              <li>
                <i class="bx bx-line-chart"></i>
                <div>
                  <h5>Partner with HVantage</h5>
                  <p>Manage, Control and Derive Insights from your Data.</p>
                </div>
              </li>
            </ul>
            <p>
              Hvantage Technologies Inc. delivers exceptional software solutions and support services to its clients using its proven onsite & offshore engagement model. We have decades of cumulative experience (within the resources) in the outsourcing and offshoring space.
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

 
    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Services</h2>
          <h3>Check our <span>Services</span></h3>
           </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-selection"></i></div>
              <h4><a href="">Strategy Solutions</a></h4>
              <p>Using innovative ideas & result-oriented implementations, we develop successful digital strategy for your business. We strategically address your business goals & analyze objectives to propel your business</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-mobile"></i></div>
              <h4><a href="">App Development</a></h4>
              <p>What gets our developers excited? Making something brand new and finding new ways to do it. Custom App development is the perfect playground for some of the most talented developers in the area. We've deployed apps to Google Play, Windows Store, and Apple Store.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="bx bxs-color"></i></div>
              <h4><a href="">Web Marketing</a></h4>
              <p>Our dynamic digital experts execute effective internet marketing solutions based on your business targets. With 100% customized tactics & focused website promotion strategy, we maximize user engagement, traffic, sales & brand reputation.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-laptop"></i></div>
              <h4><a href="">Web Development</a></h4>
              <p>Our team of experts build intelligent websites that actually perform & exceed your expectations. We offer completely customized interactive web solutions to turn your online presence into a profitable entity.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-category-alt"></i></div>
              <h4><a href="">Digital Design</a></h4>
              <p>Hvantage believes that 'Anything can excel with a better design'. We create designs that reflect client's outlook.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="bx bxs-cart"></i></div>
              <h4><a href="">E-Commerce</a></h4>
              <p>In this technological age, E-commerce has emerged as a new business space, where customers can buy goods/ services online as per their convenience.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

   
    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Team</h2>
          <h3>Our <span>Leaders</span></h3>
        </div>
         
        <div class="row">
             
          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100" style="margin-left:23%">
            <div class="member">
              <div class="member-img">
                <img src="krishnaSir.jpeg" class="img-fluid" alt=""  style="height:300px">
                <%--<div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>--%>
              </div>
              <div class="member-info">
                <h4>Krishna Baderia</h4>
                <span>Chief Executive Officer</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200" style="margin-left:5%">
            <div class="member">
              <div class="member-img">
                <img src="user2.png" class="img-fluid" alt="" style="width:100%;padding:10%">
                <%--<div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>--%>
              </div>
              <div class="member-info">
                <h4>Neelesh Jain</h4>
                <span>Co-founder</span>
              </div>
            </div>
          </div>

          
        </div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <h3><span>Contact Us</span></h3>
           </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-6">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3>Our Address</h3>
              <p><b>India:</b>
509 block B corporate house 5th floor, RNT Marg, Indore, Madhya Pradesh 452001<br />
<b>California:</b>
22048 Sherman Way Suite 306
Los Angeles, California 91303</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-envelope"></i>
              <h3>Email Us</h3>
              <p>info@hvantagetechnologies.com</p>
                <br />
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Call Us</h3>
              <p>+12134389869, +18186616301, <br />+91-97552-99999</p>
            </div>
          </div>

        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">

          <div class="col-lg-6 ">
            <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3680.2960003705043!2d75.8692930748421!3d22.71723692765452!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fd16c6da7fff%3A0xa16ada7dbc36f449!2sHvantage%20Tech%20Solutions%20Pvt.%20Ltd.!5e0!3m2!1sen!2sin!4v1690387642505!5m2!1sen!2sin" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe>
          </div>

            <div class="col-lg-6 ">
            <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2119.2970541333875!2d-118.60923156627425!3d34.20109100866869!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c29c3f43373b11%3A0xa4af29547958f30a!2s22048%20Sherman%20Way%20Suite%20306%2C%20Los%20Angeles%2C%20CA%2091303%2C%20USA!5e0!3m2!1sen!2sin!4v1690387398536!5m2!1sen!2sin" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <img src="hvantage-technologies-usa.png" class="logo"/>
            <p style="padding-left:2%">
              509 block B corporate house 5th floor  <br>
              RNT Marg, Indore<br>
              Madhya Pradesh 452001 <br><br>
              <strong>Phone:</strong> +91-97552-99999<br>
              <strong>Email:</strong> info@hvantagetechnologies.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Digital Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">E-Commerce</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">App Development</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Social Networks</h4>
            
            
            <div class="social-links mt-3">
              <a href="https://twitter.com/i/flow/login?redirect_after_login=%2FHvantage" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="https://www.facebook.com/Hvantage.Technologies.USA" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="https://www.youtube.com/watch?v=4yRtdQX2zAA" class="instagram"><i class="bx bxl-youtube"></i></a>
              <a href="https://www.linkedin.com/company/hvantage-technologies-inc-usa-/" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container py-4">
      <div class="copyright">
        &copy; Copyright <strong><span>Hvantage Technologies</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/bizland-bootstrap-business-template/ -->
        Designed by <a href="https://bootstrapmade.com/">Niharika Sharma</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
    </form>
</body>
</html>
