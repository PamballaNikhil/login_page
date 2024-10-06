package com.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addservlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		System.out.println("heloo");
		response.setContentType("text/html");
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		if(username.equals("ramu")&& password.equals("ramu123")){
		
		RequestDispatcher r = request.getRequestDispatcher("home.html");
		r.include(request,response);
		}
		else{
			RequestDispatcher r = request.getRequestDispatcher("index.html");
			r.forward(request,response);
		}
		
		
	}



}
