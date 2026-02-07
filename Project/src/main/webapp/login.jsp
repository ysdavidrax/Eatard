<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuickBite - Login</title>

<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">

            <div class="card shadow">
                <div class="card-header text-center bg-success text-white">
                    <h4>User Login</h4>
                </div>

                <div class="card-body">

                    <!-- Error Message -->
                    <%
                        String error = (String) request.getAttribute("error");
                        if(error != null){
                    %>
                        <div class="alert alert-danger">
                            <%= error %>
                        </div>
                    <%
                        }
                    %>

                    <!-- Success Message (After Registration) -->
                    <%
                        String success = request.getParameter("success");
                        if(success != null){
                    %>
                        <div class="alert alert-success">
                            Registration Successful! Please login.
                        </div>
                    <%
                        }
                    %>

                    <form action="login" method="post">

                        <!-- Email -->
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" 
                                   class="form-control" required>
                        </div>

                        <!-- Password -->
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password" 
                                   class="form-control" required>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">
                                Login
                            </button>
                        </div>

                    </form>

                    <div class="mt-3 text-center">
                        Don't have an account?
                        <a href="register.jsp">Register here</a>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
