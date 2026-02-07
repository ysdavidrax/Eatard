package com.project.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.project.model.CartItem;

@WebServlet("/addToCart")
public class AddtoCart extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                          throws ServletException, IOException {

        int foodId = Integer.parseInt(request.getParameter("foodId"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        HttpSession session = request.getSession();

        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        boolean itemExists = false;

        // If item already exists → increase quantity
        for (CartItem item : cart) {
            if (item.getFoodId() == foodId) {
                item.setQuantity(item.getQuantity() + quantity);
                itemExists = true;
                break;
            }
        }

        // If new item
        if (!itemExists) {
            CartItem newItem = new CartItem();
            newItem.setFoodId(foodId);
            newItem.setName(name);
            newItem.setPrice(price);
            newItem.setQuantity(quantity);
            cart.add(newItem);
        }

        session.setAttribute("cart", cart);

        response.sendRedirect("dashboard.jsp");
    }
}
