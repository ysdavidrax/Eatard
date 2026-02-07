package com.project.controller;

import java.io.IOException;

import com.project.dao.UserDAO;
import com.project.model.User;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        
        System.out.println(name+" "+email+" "+password+" "+" "+role);
        
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setRole(role);
        System.out.println(user.getName());

        UserDAO dao = new UserDAO();
        dao.registerUser(user);

        response.sendRedirect("login.jsp");
    }
}