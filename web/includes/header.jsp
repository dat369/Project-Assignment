<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<% request.getSession().getAttribute("shipper");%>
<% request.getSession().getAttribute("customer");%>
<% request.getAttribute("CustomerLoginFailed");%>
<% request.getAttribute("ShipperLoginFailed");%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="img/logo.png">
        <title>Deliver - Free Courier Website Template</title>

        <style><%@include file="/styles/vendor.css" %>%></style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

        <style><%@include file="/styles/style.css" %>%></style>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost&family=Roboto:wght@400;700&display=swap" rel="stylesheet">

        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

        <!-- script ================================================== -->
        <script src="js/modernizr.js"></script>

    </head>

    <body data-bs-spy="scroll" data-bs-target="#navbar-example2" tabindex="0">


        <!-- Navigation Section Starts -->
        <section id="navigation-bar" class="navigation position-fixed">

            <nav id="navbar-example2" class="navbar navbar-expand-lg ">

                <div class="navigation container-fluid d-flex flex-wrap align-items-center my-2 pe-4 ps-5 ">

                    <div class="col-md-3 brand-logo">
                        <a href="index.jsp" class="d-inline-flex link-body-emphasis text-decoration-none">
                            <img src="img/Deliver.png" alt="">
                        </a>
                    </div>

                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2"
                            aria-controls="offcanvasNavbar2" aria-label="Toggle navigation"><ion-icon
                            name="menu-outline"></ion-icon></button>

                    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar2"
                         aria-labelledby="offcanvasNavbar2Label">

                        <div class="offcanvas-header">
                            <h5 class="offcanvas-title" id="offcanvasNavbar2Label">Menu</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>

                        <div class="offcanvas-body">
                            <ul class="navbar-nav align-items-center flex-grow-1">
                                <li class="nav-list mx-3">
                                    <a href="index.jsp" class="nav-link active px-2">
                                        <h5> Home </h5>
                                    </a>
                                </li>
                                <li class="nav-list mx-3">
                                    <a href="#resources" class="nav-link px-2">
                                        <h5> About </h5>
                                    </a>
                                </li>
                                <li class="nav-list mx-3">
                                    <a href="#services" class="nav-link px-2">
                                        <h5> Services </h5>
                                    </a>
                                </li>
                                <li class="nav-list mx-3">
                                    <a href="#articles" class="nav-link px-2">
                                        <h5> Blog </h5>
                                    </a>
                                </li>
                                <li class="nav-list mx-3">
                                    <a href="#contact" class="nav-link px-2">
                                        <h5> Contact </h5>
                                    </a>
                                </li>

                                <li class="nav-list mx-3 dropdown text-center">
                                    <a class="nav-link px-2 dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                                       aria-expanded="false">
                                        <h5> Pages <iconify-icon icon="ic:outline-arrow-drop-down"></iconify-icon> </h5>
                                    </a>

                                </li>

                            </ul>
                            <c:choose>
                                <c:when test="${not empty sessionScope.shipper}">
                                    <div class="account d-flex align-items-center mt-5 mt-lg-0 justify-content-center justify-content-lg-end">
                                        <div class="nav-list mx-3 dropdown text-center">
                                            <a class="nav-link px-2 dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                                               aria-expanded="false">
                                                <h5> ${shipper.name} <iconify-icon icon="ic:outline-arrow-drop-down"></iconify-icon> </h5>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="ShowInforShip.jsp" class="dropdown-item text-uppercase">Information</a>
                                                </li>
                                                <li>
                                                    <a href="UpdateShipper.jsp" class="dropdown-item text-uppercase">Update</a>
                                                </li>
                                                <li>
                                                    <a href="ChangePass.jsp" class="dropdown-item text-uppercase">Change Pass</a>
                                                </li>
                                                <li>
                                                    <a href="/ProjectAssignment/logout" class="dropdown-item text-uppercase">Log out</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </c:when>
                                <c:when test="${not empty sessionScope.customer}">
                                    <div class="account d-flex align-items-center mt-5 mt-lg-0 justify-content-center justify-content-lg-end">
                                        <div class="nav-list mx-3 dropdown text-center">
                                            <a class="nav-link px-2 dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                                               aria-expanded="false">
                                                <h5> ${customer.cusName} <iconify-icon icon="ic:outline-arrow-drop-down"></iconify-icon> </h5>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="ShowinforCus.jsp" class="dropdown-item text-uppercase">Information</a>
                                                </li>
                                                <li>
                                                    <a href="changeinfo.jsp" class="dropdown-item text-uppercase">Update</a>
                                                </li>
                                                <li>
                                                    <a href="ChangePass.jsp" class="dropdown-item text-uppercase">Change Pass</a>
                                                </li>
                                                <li>
                                                    <a href="/ProjectAssignment/logout" class="dropdown-item text-uppercase">Log out</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </c:when>
                                <c:when test="${not empty sessionScope.Admin}">
                                    <div class="account d-flex align-items-center mt-5 mt-lg-0 justify-content-center justify-content-lg-end">
                                        <a href="/ProjectAssignment/logout" class="nav-link px-2">
                                            <h5> Logout </h5>
                                        </a>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="account d-flex align-items-center mt-5 mt-lg-0 justify-content-center justify-content-lg-end">
                                        <a class="nav-link me-5 login" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            <h5>Login</h5>
                                        </a>
                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                                             aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="tabs-listing">
                                                            <nav>
                                                                <div class="nav nav-tabs d-flex justify-content-center border-0" id="nav-tab" role="tablist">
                                                                    <button class="btn btn-outline-primary text-uppercase px-4 py-2 me-4 active namlon"
                                                                            id="nav-sign-in-tab" data-bs-toggle="tab" data-bs-target="#nav-sign-in" type="button"
                                                                            role="tab" aria-controls="nav-sign-in" aria-selected="true">Customer
                                                                    </button>
                                                                    <button class="btn btn-outline-primary text-uppercase px-4 py-2" id="nav-register-tab"
                                                                            data-bs-toggle="tab" data-bs-target="#nav-register" type="button" role="tab"
                                                                            aria-controls="nav-register" aria-selected="false">Shipper
                                                                    </button>
                                                                    <button class="btn btn-outline-primary text-uppercase px-4 py-2" id="nav-manager-tab"
                                                                            data-bs-toggle="tab" data-bs-target="#nav-manager" type="button" role="tab"
                                                                            aria-controls="nav-manager" aria-selected="false">Manager
                                                                    </button>
                                                                </div>
                                                            </nav>
                                                            <%-- Nếu có lỗi khi đăng nhập cho customer --%>
                                                            <c:if test="${not empty requestScope.CustomerLoginFailed}">
                                                                <input type="hidden" id="customerLoginFailed" value="true">
                                                            </c:if>

                                                            <%-- Nếu có lỗi khi đăng nhập cho shipper --%>
                                                            <c:if test="${not empty requestScope.ShipperLoginFailed}">
                                                                <input type="hidden" id="shipperLoginFailed" value="true">
                                                            </c:if>
                                                            <c:if test="${not empty requestScope.ManagerLoginFailed}">
                                                                <input type="hidden" id="managerLoginFailed" value="true">
                                                            </c:if>

                                                            <div class="tab-content" id="nav-tabContent">
                                                                <div class="tab-pane fade active show" id="nav-sign-in" role="tabpanel"
                                                                     aria-labelledby="nav-sign-in-tab">

                                                                    <form action="/ProjectAssignment/login" id="form1" class="form-group flex-wrap p-3 " method="POST">
                                                                        <div class="form-input col-lg-12 my-4">
                                                                            <label for="exampleInputEmail1"
                                                                                   class="form-label fs-6 text-uppercase fw-bold text-black">Email
                                                                                Address</label>
                                                                            <input type="text" id="email" name="email" placeholder="Email"
                                                                                   class="form-control ps-3">

                                                                        </div>
                                                                        <div class="form-input col-lg-12 my-4">
                                                                            <label for="inputPassword1"
                                                                                   class="form-label  fs-6 text-uppercase fw-bold text-black">Password</label>
                                                                            <input type="password" id="password" name="password" placeholder="Password"
                                                                                   class="form-control ps-3" aria-describedby="passwordHelpBlock">

                                                                            <div id="passwordHelpBlock" class="form-text text-center">
                                                                                <a href="#" class=" password">Forgot Password ?</a>
                                                                            </div>

                                                                        </div>
                                                                        <input type="hidden" id="Login" name="Login" value="customer">
                                                                        <label class="py-3">
                                                                            <input id="rememberMe" name="rememberMe" type="checkbox" class="d-inline">
                                                                            <span class="label-body text-black">Remember Me</span>
                                                                        </label>
                                                                        <div class="py-3">${CustomerLoginFailed}</div>
                                                                        <div class="d-grid my-3">
                                                                            <button type="submit" class="btn btn-primary btn-lg btn-dark text-uppercase btn-rounded-none fs-6">Log
                                                                                In</button>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <div class="tab-pane fade" id="nav-register" role="tabpanel"
                                                                     aria-labelledby="nav-register-tab">
                                                                    <form action="/ProjectAssignment/login" id="form1" class="form-group flex-wrap p-3 " method="POST">
                                                                        <div class="form-input col-lg-12 my-4">
                                                                            <label for="exampleInputEmail1"
                                                                                   class="form-label fs-6 text-uppercase fw-bold text-black">Email
                                                                                Address</label>

                                                                            <input type="text" id="email" name="email" placeholder="Email"
                                                                                   class="form-control ps-3">
                                                                        </div>
                                                                        <div class="form-input col-lg-12 my-4">
                                                                            <label for="inputPassword1"
                                                                                   class="form-label  fs-6 text-uppercase fw-bold text-black">Password</label>

                                                                            <input type="password" id="password" name="password" placeholder="Password"
                                                                                   class="form-control ps-3" aria-describedby="passwordHelpBlock">
                                                                            <div id="passwordHelpBlock" class="form-text text-center">
                                                                                <a href="#" class=" password">Forgot Password ?</a>
                                                                            </div>

                                                                        </div>
                                                                        <input type="hidden" id="Login" name="Login" value="shipper">
                                                                        <label class="py-3">
                                                                            <input id="rememberMe" name="rememberMe" type="checkbox" class="d-inline">
                                                                            <span class="label-body text-black">Remember Me</span>
                                                                        </label>
                                                                        <div class="py-3">${ShipperLoginFailed}</div>
                                                                        <div class="d-grid my-3">
                                                                            <button type="submit" class="btn btn-primary btn-lg btn-dark text-uppercase btn-rounded-none fs-6">Log
                                                                                In</button>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <div class="tab-pane fade" id="nav-manager" role="tabpanel"
                                                                     aria-labelledby="nav-manager-tab">
                                                                    <form action="/ProjectAssignment/loginmanager" id="form1" class="form-group flex-wrap p-3 " method="POST">
                                                                        <div class="form-input col-lg-12 my-4">
                                                                            <label for="exampleInputEmail1"
                                                                                   class="form-label fs-6 text-uppercase fw-bold text-black">Email
                                                                                Address</label>

                                                                            <input type="text" id="email" name="email" placeholder="Email"
                                                                                   class="form-control ps-3">
                                                                        </div>
                                                                        <div class="form-input col-lg-12 my-4">
                                                                            <label for="inputPassword1"
                                                                                   class="form-label  fs-6 text-uppercase fw-bold text-black">Password</label>

                                                                            <input type="password" id="password" name="password" placeholder="Password"
                                                                                   class="form-control ps-3" aria-describedby="passwordHelpBlock">
                                                                            <div id="passwordHelpBlock" class="form-text text-center">
                                                                                <a href="#" class=" password">Forgot Password ?</a>
                                                                            </div>
                                                                        </div>
                                                                        <input type="hidden" id="Login" name="Login" value="shipper">
                                                                        <div class="py-3">${managerLoginFailed}</div>
                                                                        <div class="d-grid my-3">
                                                                            <button type="submit" class="btn btn-primary btn-lg btn-dark text-uppercase btn-rounded-none fs-6">Log
                                                                                In</button>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button onclick="window.location.href = 'signup.jsp'" type="button" class="btn btn-primary first-button signup px-4 py-3" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal2">Sign up</button>
                                        <!-- Modal -->
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>

                </div>

            </nav>

        </section>