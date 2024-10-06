package com.Servlet.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Servlet.model.addData;

public class jdbc {

	public String Data(addData a1) throws ClassNotFoundException, SQLException {
		int count = 0;
		String status="";
		//loading
		Class.forName("com.mysql.jdbc.Driver");
		//connection 
	Connection	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/class","root","root");
	
	PreparedStatement  ps1= con.prepareStatement("select user_name from login where user_name=?");
	ps1.setString(1,a1.getUsername());
	  ResultSet rs = ps1.executeQuery();
	while(rs.next()){
		count++;
	    
	  } 
		if(count==0){
		
	PreparedStatement  ps= con.prepareStatement("insert into login(user_name,password) values(?,?)");
	ps.setString(1,a1.getUsername());
	ps.setString(2, a1.getPassword());
	int n = ps.executeUpdate();
	if(n>0)
			status="success";
	else
	{
		System.out.println("rows are  not updated in the database");
	  con.close();
	
	    }
      }
		return status;
  } 
} 


