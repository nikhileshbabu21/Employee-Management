package com.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.pojo.Basic;



public class Empdao {
 
	
	public void insert(String firstname,String lastname)
{
		Connection connection=null;
		
 try{
	 Class.forName("com.mysql.jdbc.Driver");
	 connection  =  DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","root");
	 PreparedStatement preparedStatement= connection.prepareStatement("insert into basic(firstname,lastname)values(?,?)");
	 preparedStatement.setString(1, firstname);
	 preparedStatement.setString(2, lastname);
	 
	 preparedStatement.executeUpdate();
 }
	 catch(Exception e){
		 
		 
		 
	 }finally{
		 
		 try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	 
 
		
		
}





 
	public List<Basic> selectAll()
{
		Connection connection=null;
		
 try{
	 Class.forName("com.mysql.jdbc.Driver");
	 connection  =  DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","root");
	 PreparedStatement preparedStatement= connection.prepareStatement("select * from Basic");
	
	 ResultSet resultSet= preparedStatement.executeQuery();
	 List<Basic> basicList = new ArrayList<Basic>();
	 
	 while(resultSet.next()){ 
		 Basic basic = new Basic();
		 basic.setId(resultSet.getInt("ID"));
		 basic.setFirstname(resultSet.getString("firstname"));
		 basic.setLastname(resultSet.getString("lastname"));
		 
		 basicList.add(basic);
	 
	 }
	 return basicList;
 }
	 catch(Exception e){
		 return null;
		 
		 
	 }finally{
		 
		 try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
}}
	 


