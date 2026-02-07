<%@ page import="java.util.*, com.project.model.CartItem" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Cart</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">

<div class="container mt-4">

    <h2 class="text-center mb-4">Your Cart</h2>

    <%
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        double total = 0;
        

        if (cart != null && !cart.isEmpty()) {
    %>

    <table class="table table-bordered bg-white">
        <thead class="table-dark">
            <tr>
                <th>Food Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>

        <%
            for (CartItem item : cart) {
                double itemTotal = item.getPrice() * item.getQuantity();
                total += itemTotal;
        %>

            <tr>
                <td><%= item.getName() %></td>
                <td><%= item.getPrice() %></td>
                <td><%= item.getQuantity() %></td>
                <td><%= itemTotal %></td>
            </tr>

        <%
            }
        session.setAttribute("grandTotal", total);
        %>

        </tbody>
    </table>

    <h4 class="text-end">Grand Total: <%= total %></h4>
	
    <div class="text-end">
        <a href="dashboard.jsp" class="btn btn-secondary">Continue Shopping</a>
        <a href="orderSuccess.jsp" class="btn btn-success">Place Order</a>
    </div>

    <%
        } else {
    %>

        <div class="alert alert-warning text-center">
            Your cart is empty!
        </div>

        <div class="text-center">
            <a href="dashboard.jsp" class="btn btn-primary">
                Go to Menu
            </a>
        </div>

    <%
        }
    %>

</div>

</body>
</html>
