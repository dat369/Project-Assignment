<%@page contentType="text/html" import="model.*" pageEncoding="utf-8" %>
<%
    request.getServletContext().setAttribute("Admin",  new ManagerList());
%>
<%@ include file="/includes/header.jsp" %>
  <section id="hero">
    <div class="hero container py-5 my-5">
      <div class="row flex-lg-row-reverse align-items-center g-5 mt-2 py-5">
        <div class="col-10 col-sm-8 col-lg-6 py-md-5 my-md-5">
          <img src="img/scooter.png" class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700"
            height="500" loading="lazy">
        </div>
        <div class="col-lg-6 py-md-5 my-md-5">
          <h1 class=" lh-1 mb-3">We offer a wide range of logistics solutions.</h1>
          <ul class="list-unstyled my-5">
            <li class="my-2">
              <h5>1 &nbsp; Easy booking </h5>
            </li>
            <li class="my-2">
              <h5>2 &nbsp; Global Coverage </h5>
            </li>
            <li class="my-2">
              <h5>3 &nbsp; Customer Support </h5>
            </li>
          </ul>
          <div class="">
            <a href="#" class="icon-link">
              <h5> Get Started</h5>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Feature Section Starts -->
  <section id="features">
    <div id="resources" class="container py-5 my-5">

      <div class="row row-cols-1 row-cols-md-2 align-items-md-center gx-5 py-5">
        <div class="col-md-7 d-flex flex-column align-items-start">
          <h1 class="">Go global with ease</h1>
          <p class="feature-paragraph my-5">We simplify your logistics, while plugging your company into a world of
            opportunities. We believe every company deserves to feel the excitement of going global, regardless of size.
          </p>
          <a href="about.html" class="btn btn-outline-primary second-button">Read More</a>
        </div>

        <div class="col-md-5">
          <div class="row flex-column g-4 mt-3">
            <div class="feature-post py-2 px-5">
              <h4 class="py-3">Easy booking, multiple services</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                industry's standard dummy text ever since</p>
            </div>

            <div class="feature-post py-2 px-5">
              <h4 class="py-3">One place to manage all your shipments</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                industry's standard dummy text ever since</p>
            </div>

            <div class="feature-post py-2 px-5">
              <h4 class="py-3">Giving you clear visibility</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                industry's standard dummy text ever since</p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Services Section Starts -->
  <section id="services" class="my-5">
    <div class="container ">
      <h1 class="text-center my-5">Our Services</h1>
      <div class="row py-5">
        <div class="col-md-3">
          <div class="service-post py-5 px-5">
            <div class="feature-icon d-inline-flex align-items-center justify-content-center  fs-2 mb-3">
              <img src="img/van.png" alt="">
            </div>
            <h3>Fast Transportation</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
              dummy text ever since</p>
            <a href="services-single.html" class="icon-link">More info </a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="service-post py-5 px-5">
            <div class="feature-icon d-inline-flex align-items-center justify-content-center fs-2 mb-3">
              <img src="img/ship.png" alt="">
            </div>
            <h3>Ocean Freight</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
              dummy text ever since</p>
            <a href="services-single.html" class="icon-link">More info </a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="service-post py-5 px-5">
            <div class="feature-icon d-inline-flex align-items-center justify-content-center fs-2 mb-3">
              <img src="img/headset.png" alt="">
            </div>
            <h3>Customs Services</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
              dummy text ever since</p>
            <a href="services-single.html" class="icon-link">More info </a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="service-post py-5 px-5">
            <div class="feature-icon d-inline-flex align-items-center justify-content-center fs-2 mb-3">
              <img src="img/rate.png" alt="">
            </div>
            <h3>Monthly Rates</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
              dummy text ever since</p>
            <a href="services-single.html" class="icon-link">More info </a>
          </div>
        </div>
      </div>
      <div class="text-center">
        <a href="services.html" class="btn btn-primary first-button my-5">Explore Services</a>
      </div>

    </div>
  </section>

  <!-- Articles Section Starts -->
  <section id="articles">
    <div id="company" class="container pt-5 my-5">
      <h1 class="text-center  my-5">Latest Articles</h1>
      <div class="row g-4 py-5">
        <div class="feature col-md-4">
          <div class="artical-post">
            <div class="feature-icon d-inline-flex align-items-center justify-content-center ">
              <img src="img/plane.png" alt="" class="img-fluid">
            </div>
            <div class="artical-content py-5 px-5 ">
              <h3>Learn and stay updated with</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
                dummy text ever since</p>
              <a href="blog-single.html" class="icon-link">More info </a>
            </div>
          </div>
        </div>
        <div class="feature col-md-4">
          <div class="artical-post">
            <div class="feature-icon d-inline-flex align-items-center justify-content-center">
              <img src="img/box.png" alt="" class="img-fluid">
            </div>
            <div class="artical-content py-5 px-5 ">
              <h3>Asia-Pacific shipping update</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
                dummy text ever since</p>
              <a href="blog-single.html" class="icon-link">More info </a>
            </div>
          </div>
        </div>
        <div class="feature col-md-4">
          <div class="artical-post">
            <div class="feature-icon d-inline-flex align-items-center justify-content-center">
              <img src="img/plane.png" alt="" class="img-fluid">
            </div>
            <div class="artical-content py-5 px-5 ">
              <h3>Stay up to date with logistics</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
                dummy text ever since</p>
              <a href="blog-single.html" class="icon-link">More info </a>
            </div>
          </div>
        </div>
      </div>
      <div class="text-center">
        <a href="blog.html" class="btn btn-primary first-button my-5">More Articles</a>
      </div>

    </div>
  </section>

  <!-- Client Section Starts -->
  <section id="client">
    <div class="container py-5 my-5" id="featured-3">
      <h1 class="text-center my-5">What Our Client Say</h1>
      <div class="swiper client-Swiper py-5">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <div class="col client-section d-flex align-items-center p-3 ">
              <img src="img/person1.png" alt="">
              <div class="client-name ps-4">
                <h4>Ramen Maggie </h4>
                <p>Seoul, South Korea</p>
              </div>
            </div>
            <div class="client-description px-3 py-3">
              <iconify-icon class="client-quote-icon" icon="bxs:quote-alt-left"></iconify-icon>
              <h5>Thank you for your great service</h5>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
                dummy text ever since</p>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="col client-section d-flex align-items-center p-3 ">
              <img src="img/person2.png" alt="">
              <div class="client-name ps-4">
                <h4>John D?souza </h4>
                <p>New York, USA</p>
              </div>
            </div>
            <div class="client-description px-3 py-3">
              <iconify-icon class="client-quote-icon" icon="bxs:quote-alt-left"></iconify-icon>
              <h5>Thank you for your great service</h5>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
                dummy text ever since</p>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="col client-section d-flex align-items-center p-3 ">
              <img src="img/person1.png" alt="">
              <div class="client-name ps-4">
                <h4>Karl Walter</h4>
                <p>Munich, German</p>
              </div>
            </div>
            <div class="client-description px-3 py-3">
              <iconify-icon class="client-quote-icon" icon="bxs:quote-alt-left"></iconify-icon>
              <h5>Thank you for your great service</h5>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
                dummy text ever since</p>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="col client-section d-flex align-items-center p-3 ">
              <img src="img/person2.png" alt="">
              <div class="client-name ps-4">
                <h4>Ramen Maggie </h4>
                <p>Seoul, South Korea</p>
              </div>
            </div>
            <div class="client-description px-3 py-3">
              <iconify-icon class="client-quote-icon" icon="bxs:quote-alt-left"></iconify-icon>
              <h5>Thank you for your great service</h5>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
                dummy text ever since</p>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="col client-section d-flex align-items-center p-3 ">
              <img src="img/person1.png" alt="">
              <div class="client-name ps-4">
                <h4>Ramen Maggie </h4>
                <p>Seoul, South Korea</p>
              </div>
            </div>
            <div class="client-description px-3 py-3">
              <iconify-icon class="client-quote-icon" icon="bxs:quote-alt-left"></iconify-icon>
              <h5>Thank you for your great service</h5>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
                dummy text ever since</p>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="col client-section d-flex align-items-center p-3 ">
              <img src="img/person2.png" alt="">
              <div class="client-name ps-4">
                <h4>Ramen Maggie </h4>
                <p>Seoul, South Korea</p>
              </div>
            </div>
            <div class="client-description px-3 py-3">
              <iconify-icon class="client-quote-icon" icon="bxs:quote-alt-left"></iconify-icon>
              <h5>Thank you for your great service</h5>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
                dummy text ever since</p>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="col client-section d-flex align-items-center p-3 ">
              <img src="img/person1.png" alt="">
              <div class="client-name ps-4">
                <h4>Ramen Maggie </h4>
                <p>Seoul, South Korea</p>
              </div>
            </div>
            <div class="client-description px-3 py-3">
              <iconify-icon class="client-quote-icon" icon="bxs:quote-alt-left"></iconify-icon>
              <h5>Thank you for your great service</h5>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting Ipsum has been the industry's standard
                dummy text ever since</p>
            </div>
          </div>

        </div>
        <div class="swiper-pagination"></div>
      </div>

    </div>
  </section>

  <!-- Action Section Starts -->
  <section id="action">
    <div id="contact" class="container py-5 my-5">

      <div class="row row-cols-1 row-cols-md-2 align-items-md-center g-5 py-5 ">
        <div class="col-md-5 action-column1">
          <div class="row flex-column py-5 px-5">
            <div class=" ms-3 mb-5 mt-5 ">
              <h1 class="mt-2">2043</h1>
              <h5>Active Customers</h5>
            </div>

            <div class=" ms-3 mb-5 ">
              <h1>3298</h1>
              <h5>Monthly Shipments</h5>
            </div>

            <div class=" ms-3 mb-5 ">
              <h1>5 min</h1>
              <h5 class="mb-2">To Book A Shipment</h5>
            </div>

          </div>
        </div>

        <div class="col-md-7 action-column2 d-flex flex-column align-items-center py-5 px-5">
          <h1 class="action-heading text-center mt-5 py-2 px-5 ">Ready to book your shipment?</h1>
          <p class="action-paragraph text-center my-5 px-5 ">Create an account to book. It only takes a few steps!</p>
          <button type="button" class="btn btn-primary first-button action-button  my-5" data-bs-toggle="modal"
            data-bs-target="#exampleModal2">Create Account</button>
        </div>

      </div>
    </div>
  </section>
  <section id="footer">
    <div class="container footer-container py-5">
      <footer class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-5  ">

        <div class="col-md-3 ">
          <h4 class="py-3">Shipping Information</h4>
          <ul class="nav flex-column">
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Shipping to United States </a>
            </li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Shipping to The Netherlands </a>
            </li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Shipping to United Kingdom </a>
            </li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Shipping to Spain </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Shipping to Germany </a></li>
          </ul>
        </div>

        <div class="col-md-3 ">
          <h4 class="py-3">Knowledge Hub</h4>
          <ul class="nav flex-column">
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Logistics Know How </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Logistics News </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Local Solutions </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Logistics Trends & Events </a>
            </li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Customer Stories </a></li>
          </ul>
        </div>

        <div class="col-md-3 ">
          <h4 class="py-3">Useful Links</h4>
          <ul class="nav flex-column">
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Contact </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Services </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Terms and Conditions </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Why Us </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Careers </a></li>
          </ul>
        </div>

        <div class="col-md-3 ">
          <h4 class="py-3">Contact</h4>
          <ul class="nav flex-column">
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Company Headquarter </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> United States of America </a>
            </li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> Ney York 10 </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> 2511 DP Den Haag </a></li>
            <li class="nav-item mb-3"><a href="#" class="nav-link footer-1-link p-0 "> courier@gmaile.com </a></li>
          </ul>
        </div>
      </footer>
    </div>



  </section>
<%@ include file="/includes/footer.jsp" %>
