<%-- 
    Document   : homepage
    Created on : Feb 12, 2025, 8:05:26 PM
    Author     : nguye
--%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Login to your account</title>

        <!-- Boxicons CSS -->
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>


        <!-- Bootstrap 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Login</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- <link rel="manifest" href="site.webmanifest"> -->
        <link rel="shortcut icon" type="image/x-icon" href="img/logo_com.png">
        <!-- Place favicon.ico in the root directory -->

        <!-- CSS here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/gijgo.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/slick.css">
        <link rel="stylesheet" href="css/slicknav.css">
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">

        <link rel="stylesheet" href="css/style.css">
        <!-- <link rel="stylesheet" href="css/responsive.css"> -->
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
                            Login
                        </div>
                    </div>

        <!-- CSS here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">

        <style>
            .avatar-circle {
                width: 40px;
                height: 40px;
                background-color: #007bff;
                color: white;
                font-weight: bold;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 50%;
                font-size: 20px;
                margin-right: 10px;
            }
            .user-info {
                display: flex;
                align-items: center;
                justify-content: center;
                margin-bottom: 10px;
            }
        </style>
    </head>

    <body>
        
        <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="card p-4 shadow-lg" style="width: 400px;">
                <h3 class="text-center mb-4">Login</h3>

                <c:if test="${not empty error}">
                    <div class="alert alert-danger text-center">${error}</div>
                </c:if>                

                    <%@ include file="backHome.jsp" %>
                <form action="login" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Enter username" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
                    </div>
                    <div class="text-left mt-2">
                        <a href="forgotPassword.jsp">Forgot your password?</a>
                    </div>

                    <button type="submit" class="btn btn-primary w-100">Login</button>
                </form>

                <div class="text-center mt-2">
                    <a href="signup.jsp">Don't have accounts yet? Sign up</a>

                </div>
            </div>
        </header>
        <!-- Header -->

        <div class="container-fluid login-body">
            <div class="overlay"></div>
            <section class="container forms">

                <div class="form login">
                    <div class="form-content">
                        <header>Login</header>

                        <!--Start of Error Presentation-->
                        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
                        <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
                            <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                        </symbol>
                        <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
                            <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
                        </symbol>
                        </svg>

                        <c:if test="${incorrectCredentialError == true}">
                            <div class="alert alert-danger d-flex align-items-center alert-dismissible fade show" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                                <div>
                                    Username/Email or password is incorrect!
                                </div>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:if>

                        <c:if test="${accountBlockedError == true}">
                            <div class="alert alert-danger d-flex align-items-center alert-dismissible fade show" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                                <div>
                                    Your account has been blocked!
                                </div>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:if>

                        <c:if test="${toLoginSuccess == true}">
                            <div class="alert alert-primary d-flex align-items-center" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Info:"><use xlink:href="#info-fill"/></svg>
                                <div>
                                    You can now login to the website.
                                </div>
                            </div>
                        </c:if>
                        <!--End of Error Presentation-->

                        <!--Start of form, send username or email, password to path /login method POST-->
                        <form action="login" method="POST">

                            <div class="field input-field">
                                <input name="credential" type="text" placeholder="Username or Email" class="input">
                            </div>

                            <div class="field input-field">
                                <input name="password" type="password" placeholder="Password" class="password">
                                <i class='bx bx-hide eye-icon'></i>
                            </div>

                            <div class="form-link">
                                <a href="forgotPassword.jsp" class="forgot-pass">Forgot password?</a>
                            </div>

                            <div class="field button-field">
                                <button>Login</button>
                            </div>
                        </form>
                        <!--End of form-->

                        <!--Sign up link, redirect to path /signup-->
                        <div class="form-link">
                            <span>Don't have an account? <a href="signup.jsp">Signup</a></span>
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


        <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="card p-4 shadow-lg" style="width: 400px;">
                <h3 class="text-center mb-4">Login</h3>
                <c:if test="${not empty error}">
                    <div class="alert alert-danger text-center">${error}</div>
                </c:if>

                <form action="login" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Enter username" required>

                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Login</button>
                </form>

                <div class="text-center mt-2">
                    <a href="#">Sign up</a>
                </div>
            </div>
        </div>

        <script src="js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="js/vendor/jquery-1.12.4.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/ajax-form.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/jquery.counterup.min.js"></script>
        <script src="js/imagesloaded.pkgd.min.js"></script>
        <script src="js/scrollIt.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/nice-select.min.js"></script>
        <script src="js/jquery.slicknav.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/plugins.js"></script>
        <!-- <script src="js/gijgo.min.js"></script> -->
        <script src="js/slick.min.js"></script>



        <!--contact js-->
        <script src="js/contact.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.form.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/mail-script.js"></script>


        <script src="js/main.js"></script>




    </body>

</html>

        <script src="js/jquery-1.12.4.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        
    </body>
</html>



</html>

