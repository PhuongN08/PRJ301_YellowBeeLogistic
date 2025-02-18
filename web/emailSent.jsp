<%-- 
    Document   : emailsent
    Created on : Feb 11, 2025, 6:50:27 PM
    Author     : regio
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Reset password </title>

        <!-- Boxicons CSS -->
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

        <!-- Bootstrap 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!-- CSS -->
        <link rel="stylesheet" href="css/login-css.css">

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
                                <img src="https://sachweb.com/content/img/logosw.png" height="42" />
                            </a>
                            <div style="white-space: nowrap;">Reset your password</div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- End Header -->

        <div class="container-fluid login-body">
            <div class="overlay"></div>
            <section class="container forms">

                <div class="form login">
                    <div class="form-content">
                        <header>Your email has been sent!</header>

                        <!--Start of Image Presentation-->
                        <div class="text-center">
                            <img src="https://www.iconpacks.net/icons/2/free-sent-email-icon-2579-thumb.png" class="rounded" alt="..." style="height: 50px; width: 50px;">
                        </div>
                        <!--End of Image Presentation-->

                        <!--Start of Message Box-->
                        <div class="text-center">
                            An email has been sent to email address<br>
                            <div><strong>${email}</strong>.</div>
                            Please verify.
                        </div>

                        <div class="field button-field">
                            <a href="login"><button>Okay!</button></a>
                        </div>
                        <!--End of Message Box-->
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
        <!-- End Footer -->

        <!-- JavaScript -->
        <script src="js/login-script.js"></script>

        <!-- Bundle -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
