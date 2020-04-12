package com.dao;

import java.sql.*;
import com.util.MySQL;
public class studentDAO {
			
	        public void createStudent(String roll_number, String first_name, String last_name) throws Exception
				{
	        	Connection con = null;
			try
			{
				con = MySQL.getConnection();
							
				PreparedStatement stmnt = con.prepareStatement("insert into STUDENT values (?,?,?)");
				
				stmnt.setString(1, roll_number);
				stmnt.setString(2, first_name);
				stmnt.setString(3, last_name);
				
				stmnt.execute();
			}
			
			catch(Exception e)
			{ 
				System.out.println("Error stack:"+e);
		    	}
	        
	        finally {
				con.close();
			}
	}
}
