<%-- 
    Document   : signup
    Created on : Feb 13, 2025, 6:45:59 PM
    Author     : regio
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Create your account </title>


        <!-- Boxicons CSS -->
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

        <!-- Bootstrap 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!-- CSS -->
        <link rel="stylesheet" href="css/signup-css.css">

    </head>
    <body>
        <!-- Header -->
        <header>
            <div class="p-3 text-center border-bottom">
                <div class="container-fluid">
                    <div class="row gy-4">
                        <!-- Left elements -->
                        <div class="col-lg-3 col-sm-4 col-4 d-flex justify-content-between">
                            <a href="home" style="padding-left: 30vh;">
                                <img src="https://images-platform.99static.com//C2aWhabqGZ_c7r11B6jswDwUsKg=/0x0:2001x2001/fit-in/500x500/99designs-contests-attachments/67/67071/attachment_67071593" height="60" width="100" />
                            </a>
                            Signup
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header -->

        <div class="container-fluid signup-body">
            <div class="overlay"></div>
            <section class="container forms">
                <!-- Signup Form -->

                <div class="form signup">
                    <div class="form-content">
                        <header>Signup</header>

                        <!--Start of Error Presentation-->
                        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
                        <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
                            <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                        </symbol>
                        </svg>

                        <c:if test="${wrongUsernameFormatError == true}">
                            <div class="alert alert-warning d-flex align-items-center alert-dismissible fade show" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                                <div>
                                    Username should contains 8-30 characters with at least 1 number.
                                </div>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:if>

                        <c:if test="${usernameTakenError == true}">
                            <div class="alert alert-danger d-flex align-items-center alert-dismissible fade show" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                                <div>
                                    Username is already taken.
                                </div>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:if>

                        <c:if test="${emailTakenError == true}">
                            <div class="alert alert-danger d-flex align-items-center alert-dismissible fade show" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                                <div>
                                    Email is already being used.
                                </div>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:if>

                        <c:if test="${wrongPasswordFormatError == true}">
                            <div class="alert alert-warning d-flex align-items-center alert-dismissible fade show" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                                <div>
                                    Password should contains 12-30 characters with at least 1 uppercase, 1 number and 1 special.
                                </div>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:if>

                        <c:if test="${passwordNotEqualError == true}">
                            <div class="alert alert-danger d-flex align-items-center alert-dismissible fade show" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                                <div>
                                    Create password must match with confirm password.
                                </div>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:if>
                        <!--End of Error Presentation-->

                        <!--Start of sign up form, send username, email, password, confirm password to path /signup, method POST-->
                        <form action="signup" method="POST">

                            <div class="field input-field">
                                <input name="username" type="text" placeholder="Username" class="input">
                            </div>

                            <div class="field input-field">
                                <input name="email" type="email" placeholder="Email" class="input">
                            </div>

                            <div class="field input-field">
                                <input name="password" type="password" placeholder="Create password" class="password">
                                <i class='bx bx-hide eye-icon'></i>
                            </div>

                            <div class="field input-field">
                                <input name="cfPassword" type="password" placeholder="Confirm password" class="password">
                                <i class='bx bx-hide eye-icon'></i>
                            </div>

                            <div class="field button-field">
                                <button>Signup</button>
                            </div>
                        </form>
                        <!--End of form-->

                        <div class="form-link">
                            <span>Already have an account? <a href="login" class="link login-link">Login</a></span>
                        </div>
                    </div>

                    <div class="line"></div>

                    <!--Login with Google, Using OAuth 2.0 with the Google API Client Library-->
                    <div class="media-options">
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile&redirect_uri=http://localhost:8989/PROJECTWEB/googleLogin&response_type=code
                           &client_id=785678597030-o11sajuv4dri4r5ntla2flk5d2hjq04n.apps.googleusercontent.com&approval_prompt=force" class="field google">
                            <img src="images/google.png" alt="" class="google-img">
                            <span>Login with Google</span>
                        </a>
                    </div>

                </div>
            </section>
        </div>
        <!-- Footer -->
        <footer>
            <div class="container-fluid">
                <section class="">
                    <div class="container-fluid text-center text-md-start pt-4 pb-4">
                        <!-- Grid row -->
                        <div class="row mt-3">
                            <!-- Grid column -->
                            <div class="col-12 col-lg-3 col-sm-12 mb-2">
                                <!-- Content -->
                                <a href="home" target="_blank" class="text-white h2">
                                    Sachweb.vn
                                </a>
                                <p class="mt-1 text-white">
                                    &copy; 2024 Copyright
                                </p>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-6 col-sm-4 col-lg-2">
                                <!-- Links -->
                                <h6 class="text-uppercase text-white fw-bold mb-2">
                                    Store
                                </h6>
                                <ul class="list-unstyled mb-4">
                                    <li><a class="text-white-50" href="#">About us</a></li>
                                    <li><a class="text-white-50" href="#">Find store</a></li>
                                    <li><a class="text-white-50" href="#">Categories</a></li>
                                    <li><a class="text-white-50" href="#">Blogs</a></li>
                                </ul>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-6 col-sm-4 col-lg-2">
                                <!-- Links -->
                                <h6 class="text-uppercase text-white fw-bold mb-2">
                                    Information
                                </h6>
                                <ul class="list-unstyled mb-4">
                                    <li><a class="text-white-50" href="#">Help center</a></li>
                                    <li><a class="text-white-50" href="#">Money refund</a></li>
                                    <li><a class="text-white-50" href="#">Shipping info</a></li>
                                    <li><a class="text-white-50" href="#">Refunds</a></li>
                                </ul>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-6 col-sm-4 col-lg-2">
                                <!-- Links -->
                                <h6 class="text-uppercase text-white fw-bold mb-2">
                                    Support
                                </h6>
                                <ul class="list-unstyled mb-4">
                                    <li><a class="text-white-50" href="#">Help center</a></li>
                                    <li><a class="text-white-50" href="#">Documents</a></li>
                                    <li><a class="text-white-50" href="#">Account restore</a></li>
                                    <li><a class="text-white-50" href="#">My orders</a></li>
                                </ul>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-12 col-sm-12 col-lg-3">
                                <!-- Links -->
                                <h6 class="text-uppercase text-white fw-bold mb-2">Newsletter</h6>
                                <p class="text-white">Stay in touch with latest updates about our products and offers</p>
                                <div class="input-group mb-3">
                                    <input type="email" class="form-control border" placeholder="Email" aria-label="Email" aria-describedby="button-addon2" />
                                    <button class="btn btn-light border shadow-0" type="button" id="button-addon2" data-mdb-ripple-color="dark">
                                        Join
                                    </button>
                                </div>
                            </div>
                            <!-- Grid column -->
                        </div>
                        <!-- Grid row -->
                    </div>
                </section>
                <!-- Section: Links  -->

                <div class="">
                    <div class="container-fluid">
                        <div class="d-flex justify-content-between py-4 border-top">
                            <!--- payment --->
                            <div>
                                <i class="fab fa-lg fa-cc-visa text-white"></i>
                                <i class="fab fa-lg fa-cc-amex text-white"></i>
                                <i class="fab fa-lg fa-cc-mastercard text-white"></i>
                                <i class="fab fa-lg fa-cc-paypal text-white"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer -->

        <!-- JavaScript -->
        <script src="js/login-script.js"></script>

        <!-- Bundle -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
