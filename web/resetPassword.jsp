<%-- 
    Document   : resetPassword
    Created on : Feb 23, 2025, 3:11:19 PM
    Author     : regio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reset Password</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="card p-4 shadow-lg" style="width: 400px;">
                <h3 class="text-center mb-4">Reset Password</h3>

                <!-- Thông báo lỗi từ server -->
                <c:if test="${not empty error and error ne ''}">
                    <div class="text-center text-danger fw-bold">${error}</div>
                </c:if>  
                <%@ include file="backHome.jsp" %>
                <form action="resetPassword" method="post">
                    <div class="mb-3">
                        <label for="newPassword" class="form-label">New Password</label>
                        <input type="password" class="form-control" id="newPassword" name="newPassword" required>
                    </div>
                    <button type="submit" class="btn btn-success w-100">Reset Password</button>
                </form>
            </div>
        </div>
    </body>
</html>


