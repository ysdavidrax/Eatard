<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">

<div class="container mt-4">

    <h2 class="text-center mb-4">🍔 QuickBite Menu</h2>

    <div class="row">

        <!-- Burger -->
        <div class="col-md-4">
            <div class="card shadow mb-4">
                <div class="card-body text-center">
                    <h5 class="card-title">🍔 Burger</h5>
                    <p class="card-text">Price: ₹120</p>

                    <form action="addToCart" method="post">
                        <input type="hidden" name="foodId" value="1">
                        <input type="hidden" name="name" value="Burger">
                        <input type="hidden" name="price" value="120">

                        <input type="number" name="quantity" value="1" min="1" class="form-control mb-2" required>

                        <button type="submit" class="btn btn-success w-100">
                            Add to Cart
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Pizza -->
        <div class="col-md-4">
            <div class="card shadow mb-4">
                <div class="card-body text-center">
                    <h5 class="card-title">🍕 Pizza</h5>
                    <p class="card-text">Price: ₹250</p>

                    <form action="addToCart" method="post">
                        <input type="hidden" name="foodId" value="2">
                        <input type="hidden" name="name" value="Pizza">
                        <input type="hidden" name="price" value="250">

                        <input type="number" name="quantity" value="1" min="1" class="form-control mb-2" required>

                        <button type="submit" class="btn btn-success w-100">
                            Add to Cart
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Coke -->
        <div class="col-md-4">
            <div class="card shadow mb-4">
                <div class="card-body text-center">
                    <h5 class="card-title">🥤 Coke</h5>
                    <p class="card-text">Price: ₹60</p>

                    <form action="addToCart" method="post">
                        <input type="hidden" name="foodId" value="3">
                        <input type="hidden" name="name" value="Coke">
                        <input type="hidden" name="price" value="60">

                        <input type="number" name="quantity" value="1" min="1" class="form-control mb-2" required>

                        <button type="submit" class="btn btn-success w-100">
                            Add to Cart
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Mud Pie -->
        <div class="col-md-4">
            <div class="card shadow mb-4">
                <div class="card-body text-center">
                    <h5 class="card-title">🍰 Mud Pie</h5>
                    <p class="card-text">Price: ₹180</p>

                    <form action="addToCart" method="post">
                        <input type="hidden" name="foodId" value="4">
                        <input type="hidden" name="name" value="Mud Pie">
                        <input type="hidden" name="price" value="180">

                        <input type="number" name="quantity" value="1" min="1" class="form-control mb-2" required>

                        <button type="submit" class="btn btn-success w-100">
                            Add to Cart
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Chocolate Shake -->
        <div class="col-md-4">
            <div class="card shadow mb-4">
                <div class="card-body text-center">
                    <h5 class="card-title">🥤 Chocolate Shake</h5>
                    <p class="card-text">Price: ₹150</p>

                    <form action="addToCart" method="post">
                        <input type="hidden" name="foodId" value="5">
                        <input type="hidden" name="name" value="Chocolate Shake">
                        <input type="hidden" name="price" value="150">

                        <input type="number" name="quantity" value="1" min="1" class="form-control mb-2" required>

                        <button type="submit" class="btn btn-success w-100">
                            Add to Cart
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Franky -->
        <div class="col-md-4">
            <div class="card shadow mb-4">
                <div class="card-body text-center">
                    <h5 class="card-title">🌯 Franky</h5>
                    <p class="card-text">Price: ₹90</p>

                    <form action="addToCart" method="post">
                        <input type="hidden" name="foodId" value="6">
                        <input type="hidden" name="name" value="Franky">
                        <input type="hidden" name="price" value="90">

                        <input type="number" name="quantity" value="1" min="1" class="form-control mb-2" required>

                        <button type="submit" class="btn btn-success w-100">
                            Add to Cart
                        </button>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <div class="text-center">
        <a href="cart.jsp" class="btn btn-primary">
            🛒 View Cart
        </a>
    </div>

</div>

</body>
</html>
