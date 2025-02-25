<%-- 
    Document   : forgotPassword
    Created on : Feb 10, 2025, 6:41:37 PM
    Author     : regio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Forgot Password</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script>
            function validateForm(event) {
                var email = document.getElementById("email").value;
                var errorDiv = document.getElementById("errorDiv");

                if (!email) {
                    errorDiv.innerHTML = "Email không được để trống!";
                    errorDiv.style.display = "block";
                    event.preventDefault(); // Ngăn form submit
                    return false;
                } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
                    errorDiv.innerHTML = "Vui lòng nhập một địa chỉ email hợp lệ!";
                    errorDiv.style.display = "block";
                    event.preventDefault(); // Ngăn form submit
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="card p-4 shadow-lg" style="width: 400px;">
                <h3 class="text-center mb-4">Forgot Password</h3>

                <!-- Thông báo lỗi từ server -->
                <c:if test="${not empty error and error ne ''}">
                    <div class="text-center text-danger fw-bold">${error}</div>
                </c:if>               

                <!-- Thông báo lỗi khi kiểm tra phía client -->
<!--                <div id="errorDiv" class="alert alert-danger text-center" style="display: none;"></div>-->
                <%@ include file="backHome.jsp" %>
                <form action="forgotPassword" method="post" onsubmit="return validateForm(event);">
                    <div class="mb-3">
                        <label for="email" class="form-label">Enter your email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email address" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Submit</button>
                </form>
            </div>
        </div>
    </body>
</html>

