<%@ page session="true" %>
<%
    Double grandTotal = (Double) session.getAttribute("grandTotal");
	session.removeAttribute("cart");
	session.removeAttribute("grandTotal");
    if (grandTotal == null) {
        grandTotal = 0.0;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Successful</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    .success-box {
        margin-top: 100px;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
        background: white;
    }

    
</style>

</head>
<body class="bg-light">

<div class="container text-center">

    <div class="success-box mx-auto col-md-6">

        <h2 class="text-success mt-3">Order Placed Successfully!</h2>

        <p class="mt-3 fs-5">
            Thank you for ordering with <strong>QuickBite</strong>.
        </p>

        <h4 class="mt-4">
            Total Amount Paid:
            <span class="text-primary"><%= grandTotal %></span>
        </h4>

        <div class="mt-4">
            <a href="dashboard.jsp" class="btn btn-primary">
                Order More Food
            </a>
        </div>

    </div>

</div>

</body>
</html>
