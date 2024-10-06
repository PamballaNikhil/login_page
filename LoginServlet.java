package com.Servlet.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Servlet.Dao.jdbc;
import com.Servlet.model.addData;

public class LoginServlet extends HttpServlet {
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		
		System.out.println(username+" "+password); // for conformation from template data
		
		addData a1=new addData();
		           a1.setUsername(username);
		           a1.setPassword(password);
		           
		String uname=a1.getUsername();
		String pwd=a1.getPassword();
		System.out.println("for conformation from model "+uname+ " "+pwd);
		 
		jdbc a2=new jdbc();
		String name =" ";
		String error="already exists";
	
			try {
				name=a2.Data(a1);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			if(name=="success"){
				request.setAttribute("valid",name);
				RequestDispatcher r = request.getRequestDispatcher("./home.jsp");
				r.include(request, response);
			}else
			{
				request.setAttribute("valid",error);
				RequestDispatcher r = request.getRequestDispatcher("./index.jsp");
				r.include(request, response);
			}
		
	}

}
