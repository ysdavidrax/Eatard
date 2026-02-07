package com.project.controller;

import java.io.IOException;

import com.project.dao.AuthenticationDAO;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		System.out.println(email+" "+password);
		
		AuthenticationDAO dao = new AuthenticationDAO();
		boolean result = dao.validateUser(email,password);
		
		if(result) {
			HttpSession session = request.getSession();
            session.setAttribute("userEmail", email);
            response.sendRedirect("dashboard.jsp");
		}else {
			response.sendRedirect("login.jsp?error=invalid");
		}
	}
}
